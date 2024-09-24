#开采西瓜、南瓜必须使用斧，才能连锁
execute if score dimension mine matches 0 if data block 0 -64 0 Items[{Slot:0b,id:"minecraft:wooden_axe"}] run scoreboard players set match_tool mine 1
execute if score dimension mine matches 0 if data block 0 -64 0 Items[{Slot:0b,id:"minecraft:stone_axe"}] run scoreboard players set match_tool mine 1
execute if score dimension mine matches 0 if data block 0 -64 0 Items[{Slot:0b,id:"minecraft:iron_axe"}] run scoreboard players set match_tool mine 1
execute if score dimension mine matches 0 if data block 0 -64 0 Items[{Slot:0b,id:"minecraft:diamond_axe"}] run scoreboard players set match_tool mine 1
execute if score dimension mine matches 0 if data block 0 -64 0 Items[{Slot:0b,id:"minecraft:netherite_axe"}] run scoreboard players set match_tool mine 1
execute if score dimension mine matches 0 if data block 0 -64 0 Items[{Slot:0b,id:"minecraft:golden_axe"}] run scoreboard players set match_tool mine 1
execute if score dimension mine matches -1 if data block 0 0 0 Items[{Slot:0b,id:"minecraft:wooden_axe"}] run scoreboard players set match_tool mine 1
execute if score dimension mine matches -1 if data block 0 0 0 Items[{Slot:0b,id:"minecraft:stone_axe"}] run scoreboard players set match_tool mine 1
execute if score dimension mine matches -1 if data block 0 0 0 Items[{Slot:0b,id:"minecraft:iron_axe"}] run scoreboard players set match_tool mine 1
execute if score dimension mine matches -1 if data block 0 0 0 Items[{Slot:0b,id:"minecraft:diamond_axe"}] run scoreboard players set match_tool mine 1
execute if score dimension mine matches -1 if data block 0 0 0 Items[{Slot:0b,id:"minecraft:netherite_axe"}] run scoreboard players set match_tool mine 1
execute if score dimension mine matches -1 if data block 0 0 0 Items[{Slot:0b,id:"minecraft:golden_axe"}] run scoreboard players set match_tool mine 1