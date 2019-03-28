// contains the libs to implement a contract
#include <eosio/eosio.hpp>
// C++ wrapper to log/print messages
#include <eosio/print.hpp>

using namespace eosio;

class [[eosio::contract("hello")]] hello : public eosio::contract
{
  public:

	  // public access specifier and a using-declaration
      using contract::contract;

      /// Attribute to inform the ABI generator of EOSIO.cdt about the action
      [[eosio::action]]
      void hi( name user )
      {
         require_auth(user);
         eosio::print( "Hello, ", name{user} );
      }
};

// handle the dispatching of actions for the contract
EOSIO_DISPATCH( hello, (hi) )

/*
Actions implement the behaviour of a contract.
Communication between contract actions comes in two flavours,
inline actions, which will execute in the same transaction as the calling action, and
deferred actions, which will be executed at a later time.
*/

// eosio-cpp abigen -o hello.wasm hello.cpp --abigen
// eosio-cpp -o hello.wasm hello.cpp --abigen

// check keys
// cleos wallet keys

// create an account for the contract
// cleos create account eosio hello EOS8W2KziXjFek8JrGEAGntv7okauxxFR6fW9Ft1SfcxnDLKJafoM -p eosio@active

// push action
// cleos push action hello hi '["bob"]' -p bob@active

/*
 * sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt update
sudo apt upgrade
apt install libstdc++6
 */
