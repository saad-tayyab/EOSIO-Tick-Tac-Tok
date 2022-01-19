#include <hello.hpp>
using namespace eosio;


void hello::create(const name &challenger, name &host) {
    require_auth(host);
    check(challenger != host, "failed, challenger shouldn't be the same as host");

    // Check if game already exists
    games existing_host_games(get_self(), host.value);
    auto itr = existing_host_games.find(challenger.value);
    check(itr == existing_host_games.end(), "game already exists");

    existing_host_games.emplace(host, [&](auto &g) {
        g.challenger = challenger;
        g.host = host;
    });
}

void hello::close(const name &challenger, const name &host)
{
    check(has_auth(host), "only the host can close the game");

    require_auth(host);

    // Check if game exists
    games existing_host_games(get_self(), host.value);
    auto itr = existing_host_games.find(challenger.value);
    check(itr != existing_host_games.end(), "game doesn't exists");

    // Remove game
    existing_host_games.erase(itr);
}
