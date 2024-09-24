# 目前用于荧石，判断玩家主手是否持有工具，以判断是否消耗耐久
# 用镐、斧、锄、锹、剪刀破坏方块消耗1耐久，用剑、三叉戟破坏方块消耗2耐久，用其它任何工具不消耗耐久
# 单个方块的耐久消耗量存入damage_multiplier_mainhand
scoreboard players set damage_multiplier_mainhand mine 0
execute if data storage mine:data items.mainhand{id:"minecraft:wooden_pickaxe"} run scoreboard players set damage_multiplier_mainhand mine 1
execute if data storage mine:data items.mainhand{id:"minecraft:stone_pickaxe"} run scoreboard players set damage_multiplier_mainhand mine 1
execute if data storage mine:data items.mainhand{id:"minecraft:iron_pickaxe"} run scoreboard players set damage_multiplier_mainhand mine 1
execute if data storage mine:data items.mainhand{id:"minecraft:diamond_pickaxe"} run scoreboard players set damage_multiplier_mainhand mine 1
execute if data storage mine:data items.mainhand{id:"minecraft:netherite_pickaxe"} run scoreboard players set damage_multiplier_mainhand mine 1
execute if data storage mine:data items.mainhand{id:"minecraft:golden_pickaxe"} run scoreboard players set damage_multiplier_mainhand mine 1

execute if data storage mine:data items.mainhand{id:"minecraft:wooden_axe"} run scoreboard players set damage_multiplier_mainhand mine 1
execute if data storage mine:data items.mainhand{id:"minecraft:stone_axe"} run scoreboard players set damage_multiplier_mainhand mine 1
execute if data storage mine:data items.mainhand{id:"minecraft:iron_axe"} run scoreboard players set damage_multiplier_mainhand mine 1
execute if data storage mine:data items.mainhand{id:"minecraft:diamond_axe"} run scoreboard players set damage_multiplier_mainhand mine 1
execute if data storage mine:data items.mainhand{id:"minecraft:netherite_axe"} run scoreboard players set damage_multiplier_mainhand mine 1
execute if data storage mine:data items.mainhand{id:"minecraft:golden_axe"} run scoreboard players set damage_multiplier_mainhand mine 1

execute if data storage mine:data items.mainhand{id:"minecraft:wooden_hoe"} run scoreboard players set damage_multiplier_mainhand mine 1
execute if data storage mine:data items.mainhand{id:"minecraft:stone_hoe"} run scoreboard players set damage_multiplier_mainhand mine 1
execute if data storage mine:data items.mainhand{id:"minecraft:iron_hoe"} run scoreboard players set damage_multiplier_mainhand mine 1
execute if data storage mine:data items.mainhand{id:"minecraft:diamond_hoe"} run scoreboard players set damage_multiplier_mainhand mine 1
execute if data storage mine:data items.mainhand{id:"minecraft:netherite_hoe"} run scoreboard players set damage_multiplier_mainhand mine 1
execute if data storage mine:data items.mainhand{id:"minecraft:golden_hoe"} run scoreboard players set damage_multiplier_mainhand mine 1

execute if data storage mine:data items.mainhand{id:"minecraft:wooden_shovel"} run scoreboard players set damage_multiplier_mainhand mine 1
execute if data storage mine:data items.mainhand{id:"minecraft:stone_shovel"} run scoreboard players set damage_multiplier_mainhand mine 1
execute if data storage mine:data items.mainhand{id:"minecraft:iron_shovel"} run scoreboard players set damage_multiplier_mainhand mine 1
execute if data storage mine:data items.mainhand{id:"minecraft:diamond_shovel"} run scoreboard players set damage_multiplier_mainhand mine 1
execute if data storage mine:data items.mainhand{id:"minecraft:netherite_shovel"} run scoreboard players set damage_multiplier_mainhand mine 1
execute if data storage mine:data items.mainhand{id:"minecraft:golden_shovel"} run scoreboard players set damage_multiplier_mainhand mine 1

execute if data storage mine:data items.mainhand{id:"minecraft:wooden_sword"} run scoreboard players set damage_multiplier_mainhand mine 2
execute if data storage mine:data items.mainhand{id:"minecraft:stone_sword"} run scoreboard players set damage_multiplier_mainhand mine 2
execute if data storage mine:data items.mainhand{id:"minecraft:iron_sword"} run scoreboard players set damage_multiplier_mainhand mine 2
execute if data storage mine:data items.mainhand{id:"minecraft:diamond_sword"} run scoreboard players set damage_multiplier_mainhand mine 2
execute if data storage mine:data items.mainhand{id:"minecraft:netherite_sword"} run scoreboard players set damage_multiplier_mainhand mine 2
execute if data storage mine:data items.mainhand{id:"minecraft:golden_sword"} run scoreboard players set damage_multiplier_mainhand mine 2

execute if data storage mine:data items.mainhand{id:"minecraft:shears"} run scoreboard players set damage_multiplier_mainhand mine 1
execute if data storage mine:data items.mainhand{id:"minecraft:trident"} run scoreboard players set damage_multiplier_mainhand mine 2
