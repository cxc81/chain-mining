function chain_mining:generic/begin_chain_mining
execute at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:wheat"}},limit=1,sort=nearest] run function chain_mining:crops_1/wheat/main
scoreboard players reset @s chain_mining_wheat
function chain_mining:generic/end_chain_mining