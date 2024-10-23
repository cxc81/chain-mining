execute unless score holding_tool_mainhand chain_mining_variables matches 1 run return 0
execute if score unbreakable_mainhand chain_mining_variables matches 1 run return 0
return run data get storage chain_mining:data items.mainhand.components."minecraft:damage"
