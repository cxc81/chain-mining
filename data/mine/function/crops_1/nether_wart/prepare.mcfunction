function mine:generic/begin_chain_mining
function mine:crops_1/nether_wart/calc_drop_count
execute if score drop_count mine_variables matches 2.. at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:nether_wart"}},limit=1,sort=nearest] run function mine:crops_1/nether_wart/main
scoreboard players reset @s mine_nether_wart
function mine:generic/end_chain_mining
