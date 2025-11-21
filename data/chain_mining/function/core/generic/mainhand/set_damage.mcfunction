# 将玩家主手物品的损害值设为计算后的值
execute store result storage chain_mining:data function_call.damage int 1 run scoreboard players get damage_mainhand chain_mining_variables
function chain_mining:core/generic/mainhand/set_damage_macro_call with storage chain_mining:data function_call
