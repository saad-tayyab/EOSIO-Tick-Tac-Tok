#include <hello.hpp>


ACTION hello::welcome(name host, name opponent) {
    //action can only be taken by contract account
    require_auth(get_self());
    print("Welcome, ", host, " and ", opponent,"!");
}

ACTION hello::create(name challenger, name host) {
    require_auth(host);
    check(host!=challenger, "Could not challenge youself!");
    //check(is_account(challenger),"challenger account not found");

    game_index _game(get_self(), get_self().value);
    //find using secondary key
    auto _gameskey = _game.get_index<name("gameskey")>(); //set secondary key
    auto itrh = _gameskey.find(combine_ids(host.value, challenger.value));
    auto itrc = _gameskey.find(combine_ids(challenger.value, host.value));
    check(itrh==_gameskey.end() && itrc==_gameskey.end(), "game already exists!"); //if found

    //ram charge to action caller
    _game.emplace(get_first_receiver(), [&](auto& game) {
        game.host = host;
        game.challenger = challenger;
        game.turn = host;
    });
}

ACTION hello::restart(name challenger, name host, name by) {
    check(has_auth(by), "please auth before!");
    check(by==challenger || by==host, "only challenger or host can restart game!");
    game_index _game(get_self(), get_self().value);
    auto _gameskey = _game.get_index<name("gameskey")>();
    auto itr = _gameskey.find(combine_ids(host.value, challenger.value));
    check(itr!=_gameskey.end(),"create game first!");
    _game.modify(*itr, same_payer, [&]( auto& game ) {
        fill(game.board.begin(), game.board.end(), 0);
        game.turn=by;
        game.winner=name();
    });
}

ACTION hello::move(name challenger, name host, name by, uint16_t row, uint16_t col) {
    check(has_auth(by), "please auth before!");
    check(by==challenger || by==host, "only challenger or host can move!");
    check(row<3 && col < 3, "invalid row or col!");
    game_index _game(get_self(), get_self().value);
    auto _gameskey = _game.get_index<
            name("gameskey")>();
    auto itr = _gameskey.find(combine_ids(host.value, challenger.value));
    check(itr!=_gameskey.end(), "create game first!");
    check((*itr).winner==name(), "game over!");
    _game.modify(*itr, same_payer, [&]( auto& game ) {
        check(game.is_valid_movement(by, row, col), "invalid movement!");
    });
    if ((*itr).winner!=name()) {
        leader_index _leader(get_self(), get_self().value);
        auto itrl = _leader.find((*itr).winner.value);
        if (itrl == _leader.end()) {
            _leader.emplace(get_first_receiver(), [&](auto& leader) {
                leader.winner=(*itr).winner;
                leader.count=1;
            });
        }
        else {
            _leader.modify(*itrl, same_payer, [&]( auto& leader) {
                leader.count++;
            });
        }
    }
}

ACTION hello::close(name challenger, name host) {
    //find by host (primary key)
    check(has_auth(host) || has_auth(challenger), "please auth yourself!");
    game_index _game(get_self(), get_self().value);
    auto _gameskey = _game.get_index<name("gameskey")>();
    auto itr = _gameskey.find(combine_ids(host.value, challenger.value));
    check(itr!=_gameskey.end(), "game not found!");
    _gameskey.erase(itr);
}
