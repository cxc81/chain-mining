# 如果发现了mine记分项，且没有dataVersion字段，可以确定是远古版本（没有记录版本号）
# 此时将data.last_data_version置为0
execute store result score has_chain_mining_objective chain_mining_variables unless score #non_existent mine = #non_existent mine
execute if score has_chain_mining_objective chain_mining_variables matches 0 run return fail

# assert has_chain_mining_objective
execute unless data storage mine:data dataVersion run data modify storage chain_mining:data data.last_data_version set value 0
