function mine:generic/begin_chain_mining
execute at @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:magma_block"}},limit=1,sort=nearest] run function mine:stones/magma_block/main
scoreboard players reset @s mine_magma_block
function mine:generic/end_chain_mining
