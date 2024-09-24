#开采菌柄，必须在副手持有锄，才能连锁疣块和菌光体
execute if score dimension mine matches 0 if data block 0 -64 0 Items[{Slot:1b,id:"minecraft:wooden_hoe"}] run scoreboard players set match_tool_off mine 1
execute if score dimension mine matches 0 if data block 0 -64 0 Items[{Slot:1b,id:"minecraft:stone_hoe"}] run scoreboard players set match_tool_off mine 1
execute if score dimension mine matches 0 if data block 0 -64 0 Items[{Slot:1b,id:"minecraft:iron_hoe"}] run scoreboard players set match_tool_off mine 1
execute if score dimension mine matches 0 if data block 0 -64 0 Items[{Slot:1b,id:"minecraft:diamond_hoe"}] run scoreboard players set match_tool_off mine 1
execute if score dimension mine matches 0 if data block 0 -64 0 Items[{Slot:1b,id:"minecraft:netherite_hoe"}] run scoreboard players set match_tool_off mine 1
execute if score dimension mine matches 0 if data block 0 -64 0 Items[{Slot:1b,id:"minecraft:golden_hoe"}] run scoreboard players set match_tool_off mine 1

execute if score dimension mine matches -1 if data block 0 0 0 Items[{Slot:1b,id:"minecraft:wooden_hoe"}] run scoreboard players set match_tool_off mine 1
execute if score dimension mine matches -1 if data block 0 0 0 Items[{Slot:1b,id:"minecraft:stone_hoe"}] run scoreboard players set match_tool_off mine 1
execute if score dimension mine matches -1 if data block 0 0 0 Items[{Slot:1b,id:"minecraft:iron_hoe"}] run scoreboard players set match_tool_off mine 1
execute if score dimension mine matches -1 if data block 0 0 0 Items[{Slot:1b,id:"minecraft:diamond_hoe"}] run scoreboard players set match_tool_off mine 1
execute if score dimension mine matches -1 if data block 0 0 0 Items[{Slot:1b,id:"minecraft:netherite_hoe"}] run scoreboard players set match_tool_off mine 1
execute if score dimension mine matches -1 if data block 0 0 0 Items[{Slot:1b,id:"minecraft:golden_hoe"}] run scoreboard players set match_tool_off mine 1