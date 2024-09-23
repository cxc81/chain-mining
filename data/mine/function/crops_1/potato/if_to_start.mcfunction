function mine:generic/begin_chain_mining
scoreboard players set total_drop_count mine 0
execute at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:potato"}},limit=1,sort=nearest] run function mine:crops_1/potato/calc_drop_count
execute if score total_drop_count mine matches 2.. at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:potato"}},limit=1,sort=nearest] run function mine:crops_1/potato/main
scoreboard players reset @s mine_potato
function mine:generic/end_chain_mining
