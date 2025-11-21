# 根据首个被记录的雕刻南瓜朝向放置一个相同朝向的雕刻南瓜
execute if score #carved_pumpkin_facing chain_mining_variables matches 0 run return run setblock ~ ~ ~ minecraft:carved_pumpkin[facing=north]
execute if score #carved_pumpkin_facing chain_mining_variables matches 1 run return run setblock ~ ~ ~ minecraft:carved_pumpkin[facing=east]
execute if score #carved_pumpkin_facing chain_mining_variables matches 2 run return run setblock ~ ~ ~ minecraft:carved_pumpkin[facing=south]
return run setblock ~ ~ ~ minecraft:carved_pumpkin[facing=west]
