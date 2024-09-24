execute if score unbreakable_offhand mine_variables matches 1 run return fail
# 将玩家副手物品的损害值设为storage中offhand.components."minecraft:damage"的值
execute store result storage mine:data function_call.damage int 1 run data get storage mine:data items.offhand.components."minecraft:damage"
function mine:generic/offhand/set_damage_macro_call with storage mine:data function_call
