project(ordercontrct)

set(EOSIO_WASM_OLD_BEHAVIOR "Off")
find_package(eosio.cdt)

add_contract( ordercontrct ordercontrct ordercontrct.cpp )
target_include_directories( ordercontrct PUBLIC ${CMAKE_SOURCE_DIR}/../include )
target_ricardian_directory( ordercontrct ${CMAKE_SOURCE_DIR}/../ricardian )