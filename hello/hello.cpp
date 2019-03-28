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




// eosio-cpp abigen -o hello.wasm hello.cpp --abigen
// eosio-cpp -o hello.wasm hello.cpp --abigen


/*
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt update
sudo apt upgrade
apt install libstdc++6
 */
