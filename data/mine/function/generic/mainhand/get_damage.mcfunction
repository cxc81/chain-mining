execute unless score holding_tool_mainhand mine_variables matches 1 run return 0
execute if score unbreakable_mainhand mine_variables matches 1 run return 0
return run data get storage mine:data items.mainhand.components."minecraft:damage"
