scoreboard players set if_to_mine mine 0
execute at @e[type=minecraft:marker,tag=mine,limit=1,distance=0..] if data block ~ ~ ~ Items[{Slot:0b}].id run scoreboard players set if_to_mine mine 1