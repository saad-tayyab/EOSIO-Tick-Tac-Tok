#include <eosio/eosio.hpp>
#include <vector>

using namespace eosio;
using namespace std;

CONTRACT hello : public contract
{
public:
    using contract::contract;
    hello(name receiver, name code, datastream<const char *> ds) : contract(receiver, code, ds) {}


    struct [[eosio::table]] game
    {
        name challenger;
        name host;

        auto primary_key() const { return challenger.value; }
        uint128_t secondary_key() const {return challenger.value;}
        EOSLIB_SERIALIZE( game, (challenger)(host))
    };

//    typedef eosio::multi_index<"games"_n, game> games;

    typedef eosio::multi_index<"games"_n, game,
            eosio::indexed_by<"gameskey"_n, eosio::const_mem_fun<game, uint128_t, &game::secondary_key>>
    > game_index;


    [[eosio::action]]
    void create(const name &challenger, name &host);

    [[eosio::action]]
    void close(const name &challenger, const name &host);

};