scoreboard players set num_blocks_mined chain_mining_variables 1
execute as @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:nether_wart"}},limit=1,sort=nearest] at @s run function chain_mining:crops_1/nether_wart/replant
function chain_mining:generic/tp_items
function chain_mining:crops_1/nether_wart/find
function chain_mining:generic/actionbar_feedback
