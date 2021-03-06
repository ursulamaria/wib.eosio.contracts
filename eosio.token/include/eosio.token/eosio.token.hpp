/**
 *  @file
 *  @copyright defined in eos/LICENSE.txt
 */
#pragma once

//#include <eosiolib/asset.hpp>
#include <eosio/asset.hpp>
#include <eosio/eosio.hpp>

// C++ wrapper to log/print messages
// #include <eosio/print.hpp>

#include <string>


namespace eosiosystem {
   class system_contract;
}

namespace eosio {

   using std::string;

   class [[eosio::contract("eosio.token")]] token : public contract {

      public:

         using contract::contract;

         [[eosio::action]]
         void create( name   issuer,
                      asset  maximum_supply);

         [[eosio::action]]
         void issue( name to, asset quantity, string memo );

         [[eosio::action]]
         void retire( asset quantity, string memo );

         [[eosio::action]]
         void transfer( name    from,
                        name    to,
                        asset   quantity,
                        string  memo );

         [[eosio::action]]
         void open( name owner, const symbol& symbol, name ram_payer );

         [[eosio::action]]
         void close( name owner, const symbol& symbol );

         static asset get_supply( name token_contract_account, symbol_code sym_code )
         {
            stats statstable( token_contract_account, sym_code.raw() );
            const auto& st = statstable.get( sym_code.raw() );
            return st.supply;
         }

         static asset get_balance( name token_contract_account, name owner, symbol_code sym_code )
         {
            accounts accountstable( token_contract_account, owner.value );
            const auto& ac = accountstable.get( sym_code.raw() );
            return ac.balance;
         }


      private:

         // structs
         struct [[eosio::table]] account {
            asset    balance;

            // primary key for multi_index table is the symbol
            uint64_t primary_key()const { return balance.symbol.code().raw(); }
         };

         // currency stats
         struct [[eosio::table]] currency_stats {
            asset    supply;
            asset    max_supply;
            name     issuer;

            uint64_t primary_key() const { return supply.symbol.code().raw(); }
         };

         // table of accounts holding each the balance of a specific token
         // each account object is indexed by its token symbol and contains the token balance
         // multi_index( name code, uint64_t scope )
         typedef eosio::multi_index< "accounts"_n, account > accounts;
         // holding the supply, issuer and symbol information for each token
         typedef eosio::multi_index< "stat"_n, currency_stats > stats;

         void sub_balance( name owner, asset value );
         void add_balance( name owner, asset value, name ram_payer );
   };

} /// namespace eosio
