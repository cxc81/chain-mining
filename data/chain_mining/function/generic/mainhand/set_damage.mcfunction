execute if score unbreakable_mainhand chain_mining_variables matches 1 run return fail
# 将玩家主手物品的损害值设为storage中mainhand.components."minecraft:damage"的值
execute store result storage chain_mining:data function_call.damage int 1 run data get storage chain_mining:data items.mainhand.components."minecraft:damage"
function chain_mining:generic/mainhand/set_damage_macro_call with storage chain_mining:data function_call
