function mine:generic/begin_chain_mining
execute if predicate mine:mainhand/holding_axe at @e[type=minecraft:item,tag=!detected,nbt={Item:{id:"minecraft:pumpkin"}},limit=1,sort=nearest] run function mine:crops_2/pumpkin/main
scoreboard players reset @s mine_pumpkin
function mine:generic/end_chain_mining