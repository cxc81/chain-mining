# 将玩家主手物品的损害值设为storage中mainhand.components."minecraft:damage"的值

execute store result storage mine:data functionCall.damage int 1 run data get storage mine:data items.mainhand.components."minecraft:damage"
function mine:generic/mainhand/set_damage_func2 with storage mine:data functionCall
