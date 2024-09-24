# 这个函数只会在每次连锁开始时运行一次，目的是获取玩家主手物品的信息
# 1. 获取主手工具的最大耐久度，存入变量max_durability_mainhand(如果手持不是工具，则为0)
scoreboard players set max_durability_mainhand mine 0

execute if data storage mine:data items.mainhand{id:"minecraft:golden_pickaxe"} run scoreboard players set max_durability_mainhand mine 32
execute if data storage mine:data items.mainhand{id:"minecraft:wooden_pickaxe"} run scoreboard players set max_durability_mainhand mine 59
execute if data storage mine:data items.mainhand{id:"minecraft:stone_pickaxe"} run scoreboard players set max_durability_mainhand mine 131
execute if data storage mine:data items.mainhand{id:"minecraft:iron_pickaxe"} run scoreboard players set max_durability_mainhand mine 250
execute if data storage mine:data items.mainhand{id:"minecraft:diamond_pickaxe"} run scoreboard players set max_durability_mainhand mine 1561
execute if data storage mine:data items.mainhand{id:"minecraft:netherite_pickaxe"} run scoreboard players set max_durability_mainhand mine 2031

execute if data storage mine:data items.mainhand{id:"minecraft:golden_axe"} run scoreboard players set max_durability_mainhand mine 32
execute if data storage mine:data items.mainhand{id:"minecraft:wooden_axe"} run scoreboard players set max_durability_mainhand mine 59
execute if data storage mine:data items.mainhand{id:"minecraft:stone_axe"} run scoreboard players set max_durability_mainhand mine 131
execute if data storage mine:data items.mainhand{id:"minecraft:iron_axe"} run scoreboard players set max_durability_mainhand mine 250
execute if data storage mine:data items.mainhand{id:"minecraft:diamond_axe"} run scoreboard players set max_durability_mainhand mine 1561
execute if data storage mine:data items.mainhand{id:"minecraft:netherite_axe"} run scoreboard players set max_durability_mainhand mine 2031

execute if data storage mine:data items.mainhand{id:"minecraft:golden_hoe"} run scoreboard players set max_durability_mainhand mine 32
execute if data storage mine:data items.mainhand{id:"minecraft:wooden_hoe"} run scoreboard players set max_durability_mainhand mine 59
execute if data storage mine:data items.mainhand{id:"minecraft:stone_hoe"} run scoreboard players set max_durability_mainhand mine 131
execute if data storage mine:data items.mainhand{id:"minecraft:iron_hoe"} run scoreboard players set max_durability_mainhand mine 250
execute if data storage mine:data items.mainhand{id:"minecraft:diamond_hoe"} run scoreboard players set max_durability_mainhand mine 1561
execute if data storage mine:data items.mainhand{id:"minecraft:netherite_hoe"} run scoreboard players set max_durability_mainhand mine 2031

execute if data storage mine:data items.mainhand{id:"minecraft:golden_shovel"} run scoreboard players set max_durability_mainhand mine 32
execute if data storage mine:data items.mainhand{id:"minecraft:wooden_shovel"} run scoreboard players set max_durability_mainhand mine 59
execute if data storage mine:data items.mainhand{id:"minecraft:stone_shovel"} run scoreboard players set max_durability_mainhand mine 131
execute if data storage mine:data items.mainhand{id:"minecraft:iron_shovel"} run scoreboard players set max_durability_mainhand mine 250
execute if data storage mine:data items.mainhand{id:"minecraft:diamond_shovel"} run scoreboard players set max_durability_mainhand mine 1561
execute if data storage mine:data items.mainhand{id:"minecraft:netherite_shovel"} run scoreboard players set max_durability_mainhand mine 2031

execute if data storage mine:data items.mainhand{id:"minecraft:golden_sword"} run scoreboard players set max_durability_mainhand mine 32
execute if data storage mine:data items.mainhand{id:"minecraft:wooden_sword"} run scoreboard players set max_durability_mainhand mine 59
execute if data storage mine:data items.mainhand{id:"minecraft:stone_sword"} run scoreboard players set max_durability_mainhand mine 131
execute if data storage mine:data items.mainhand{id:"minecraft:iron_sword"} run scoreboard players set max_durability_mainhand mine 250
execute if data storage mine:data items.mainhand{id:"minecraft:diamond_sword"} run scoreboard players set max_durability_mainhand mine 1561
execute if data storage mine:data items.mainhand{id:"minecraft:netherite_sword"} run scoreboard players set max_durability_mainhand mine 2031

execute if data storage mine:data items.mainhand{id:"minecraft:shears"} run scoreboard players set max_durability_mainhand mine 238
execute if data storage mine:data items.mainhand{id:"minecraft:trident"} run scoreboard players set max_durability_mainhand mine 250

# 2. 获取主手物品当前损坏值和是否无法破坏（若无法破坏，则损坏值视为0）
execute store result score damage_mainhand mine run data get storage mine:data items.mainhand.components."minecraft:damage"
execute store result score unbreakable_mainhand mine if data storage mine:data items.mainhand.components."minecraft:unbreakable"
execute if score unbreakable_mainhand mine matches 1 run scoreboard players set damage_mainhand mine 0

# 3. 获取物品的魔咒信息（只关心耐久、精准采集、时运）
execute store result score unbreaking_level_mainhand mine run data get storage mine:data items.mainhand.components."minecraft:enchantments".levels."minecraft:unbreaking"
execute store result score silk_touch_level_mainhand mine run data get storage mine:data items.mainhand.components."minecraft:enchantments".levels."minecraft:silk_touch"
execute store result score fortune_level_mainhand mine run data get storage mine:data items.mainhand.components."minecraft:enchantments".levels."minecraft:fortune"
