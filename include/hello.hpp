#include <eosio/eosio.hpp>
#include <vector>

using namespace eosio;
using namespace std;

// The contract
CONTRACT hello : public contract {
public:

TABLE game_table {
        uint64_t id;
        vector<std::uint8_t> board{0,0,0,0,0,0,0,0,0};
        name challenger;
        name host;
        name turn;
        name winner;

        bool is_empty_cell(uint16_t row, uint16_t col) {return (board[row*3+col]==0);}
        bool is_valid_movement(name by, uint16_t row, uint16_t col) {
            if (winner==name() && by==turn && is_empty_cell(row, col) ) {
                uint8_t set=1;
                if (by==host) {
                    board[row*3+col]=set;
                    turn=challenger;
                }
                else {
                    set=2;
                    board[row*3+col]=set;
                    turn=host;
                }

                uint8_t test=((board[row*3+0]&board[row*3+1]&board[row*3+2])
                              |(board[0*3+col]&board[1*3+col]&board[2*3+col])
                              |(board[0]&board[4]&board[8])
                              |(board[2]&board[4]&board[6]));

                if (test==set)
                    winner=by;

                return true;
            }
            return false;
        }

        uint64_t primary_key() const {return id;}
        uint128_t secondary_key() const {return combine_ids(host.value,challenger.value);}
        EOSLIB_SERIALIZE(game_table, (id)(board)(challenger)(host)(turn)(winner))
};

typedef eosio::multi_index<name("game"), game_table,
        eosio::indexed_by<name("gameskey"), eosio::const_mem_fun<game_table, uint128_t, &game_table::secondary_key>>
> game_index;

TABLE leader_board {
        name winner;
        uint64_t count;
        uint64_t primary_key() const {return winner.value;}
        uint64_t secondary_key() const {return -count;}
        EOSLIB_SERIALIZE(leader_board, (winner)(count))
};

typedef eosio::multi_index<name("leader"), leader_board,
        eosio::indexed_by<name("leaderskey"), eosio::const_mem_fun<leader_board, uint64_t, &leader_board::secondary_key>>
> leader_index;

// Use contract's constructor
using contract::contract;

ACTION welcome(name host, name opponent) ;

ACTION create(name challenger, name host) ;

ACTION restart(name challenger, name host, name by) ;

ACTION move(name challenger, name host, name by, uint16_t row, uint16_t col) ;

ACTION close(name challenger, name host) ;

private:
// concatenation of ids example
static uint128_t combine_ids(const uint64_t &x, const uint64_t &y) {
    return (uint128_t{x} << 64) | y;
}
};