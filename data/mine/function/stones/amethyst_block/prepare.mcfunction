function mine:generic/begin_chain_mining
execute at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:amethyst_block"}},limit=1,sort=nearest] run function mine:stones/amethyst_block/main
scoreboard players reset @s mine_amethyst_block
function mine:generic/end_chain_mining
