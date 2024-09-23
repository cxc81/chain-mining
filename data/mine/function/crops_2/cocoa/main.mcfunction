scoreboard players set count mine 1
execute as @e[type=minecraft:item,tag=!mine_detected,nbt={Item:{id:"minecraft:cocoa_beans"}},limit=1,sort=nearest] at @s run function mine:crops_2/cocoa/replant
function mine:generic/tp_items
function mine:crops_2/cocoa/find
function mine:generic/actionbar_feedback
