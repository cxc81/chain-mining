execute unless score holding_tool_offhand chain_mining_variables matches 1 run return 0
execute if score unbreakable_offhand chain_mining_variables matches 1 run return 0
return run data get storage chain_mining:data items.offhand.components."minecraft:damage"
