execute unless function mine:generic/mainhand/can_continue_mining run return fail

loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ minecraft:air destroy

scoreboard players add num_blocks_mined mine_variables 1
execute as @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:cocoa_beans"}},limit=1,sort=nearest] run function mine:crops_2/cocoa/replant
function mine:generic/mainhand/apply_damage

function mine:generic/tp_items
function mine:crops_2/cocoa/find
