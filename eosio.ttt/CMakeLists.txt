add_contract(eosio.ttt eosio.ttt ${CMAKE_CURRENT_SOURCE_DIR}/src/eosio.ttt.cpp)
target_include_directories(eosio.ttt.wasm
   PUBLIC
   ${CMAKE_CURRENT_SOURCE_DIR}/include)

set_target_properties(eosio.ttt.wasm
   PROPERTIES
   RUNTIME_OUTPUT_DIRECTORY "${CMAKE_CURRENT_BINARY_DIR}")
   

