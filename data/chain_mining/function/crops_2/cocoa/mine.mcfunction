execute unless function chain_mining:generic/mainhand/can_continue_mining run return fail

loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air destroy

scoreboard players add num_blocks_mined chain_mining_variables 1
execute as @e[type=minecraft:item,tag=!chain_mining_detected,nbt={Item:{id:"minecraft:cocoa_beans"}},limit=1,sort=nearest] run function chain_mining:crops_2/cocoa/replant
function chain_mining:generic/mainhand/apply_damage

function chain_mining:generic/tp_items
function chain_mining:crops_2/cocoa/find
