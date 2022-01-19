#include <eosio/eosio.hpp>

using namespace eosio;

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
        EOSLIB_SERIALIZE( game, (challenger)(host))
    };

    typedef eosio::multi_index<"games"_n, game> games;

    [[eosio::action]]
    void create(const name &challenger, name &host);

    [[eosio::action]]
    void close(const name &challenger, const name &host);
};