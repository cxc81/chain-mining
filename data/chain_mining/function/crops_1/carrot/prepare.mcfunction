function chain_mining:generic/begin_chain_mining
function chain_mining:crops_1/carrot/calc_drop_count
execute if score drop_count chain_mining_variables matches 2.. at @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:carrot"}},limit=1,sort=nearest] run function chain_mining:crops_1/carrot/main
scoreboard players reset @s chain_mining_carrot
function chain_mining:generic/end_chain_mining
