execute unless score holding_tool_offhand mine_variables matches 1 run return 0
execute if score unbreakable_offhand mine_variables matches 1 run return 0
return run data get storage mine:data items.offhand.components."minecraft:damage"
