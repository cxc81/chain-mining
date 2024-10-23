# 此函数由chain_mining:load函数调用
execute store result score has_chain_mining_objective chain_mining_variables unless score $non_existent mine = $non_existent mine
execute if score has_chain_mining_objective chain_mining_variables matches 0 run return fail

# assert has_chain_mining_objective
execute unless data storage chain_mining:data data_version run data merge storage chain_mining:data {last_data_version: 0}
