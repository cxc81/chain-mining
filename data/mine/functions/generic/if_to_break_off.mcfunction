#判断副手工具(锄)是否损坏
execute if data block 0 0 0 Items[{Slot:1b,id:"minecraft:wooden_hoe"}] if score damage_off mine matches 59.. run function mine:generic/break_off
execute if data block 0 0 0 Items[{Slot:1b,id:"minecraft:stone_hoe"}] if score damage_off mine matches 131.. run function mine:generic/break_off
execute if data block 0 0 0 Items[{Slot:1b,id:"minecraft:iron_hoe"}] if score damage_off mine matches 250.. run function mine:generic/break_off
execute if data block 0 0 0 Items[{Slot:1b,id:"minecraft:diamond_hoe"}] if score damage_off mine matches 1561.. run function mine:generic/break_off
execute if data block 0 0 0 Items[{Slot:1b,id:"minecraft:netherite_hoe"}] if score damage_off mine matches 2031.. run function mine:generic/break_off
execute if data block 0 0 0 Items[{Slot:1b,id:"minecraft:golden_hoe"}] if score damage_off mine matches 32.. run function mine:generic/break_off