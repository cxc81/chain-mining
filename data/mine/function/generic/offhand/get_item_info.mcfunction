# 这个函数只会在每次连锁开始时运行一次，目的是获取玩家副手物品的信息
# 目前使用副手信息的只有菌柄
# 1. 获取副手工具的最大耐久度，存入变量max_durability_offhand(如果手持不是工具，则为0)
scoreboard players set max_durability_offhand mine 0

execute if data storage mine:data items.offhand{id:"minecraft:golden_pickaxe"} run scoreboard players set max_durability_offhand mine 32
execute if data storage mine:data items.offhand{id:"minecraft:wooden_pickaxe"} run scoreboard players set max_durability_offhand mine 59
execute if data storage mine:data items.offhand{id:"minecraft:stone_pickaxe"} run scoreboard players set max_durability_offhand mine 131
execute if data storage mine:data items.offhand{id:"minecraft:iron_pickaxe"} run scoreboard players set max_durability_offhand mine 250
execute if data storage mine:data items.offhand{id:"minecraft:diamond_pickaxe"} run scoreboard players set max_durability_offhand mine 1561
execute if data storage mine:data items.offhand{id:"minecraft:netherite_pickaxe"} run scoreboard players set max_durability_offhand mine 2031

execute if data storage mine:data items.offhand{id:"minecraft:golden_axe"} run scoreboard players set max_durability_offhand mine 32
execute if data storage mine:data items.offhand{id:"minecraft:wooden_axe"} run scoreboard players set max_durability_offhand mine 59
execute if data storage mine:data items.offhand{id:"minecraft:stone_axe"} run scoreboard players set max_durability_offhand mine 131
execute if data storage mine:data items.offhand{id:"minecraft:iron_axe"} run scoreboard players set max_durability_offhand mine 250
execute if data storage mine:data items.offhand{id:"minecraft:diamond_axe"} run scoreboard players set max_durability_offhand mine 1561
execute if data storage mine:data items.offhand{id:"minecraft:netherite_axe"} run scoreboard players set max_durability_offhand mine 2031

execute if data storage mine:data items.offhand{id:"minecraft:golden_hoe"} run scoreboard players set max_durability_offhand mine 32
execute if data storage mine:data items.offhand{id:"minecraft:wooden_hoe"} run scoreboard players set max_durability_offhand mine 59
execute if data storage mine:data items.offhand{id:"minecraft:stone_hoe"} run scoreboard players set max_durability_offhand mine 131
execute if data storage mine:data items.offhand{id:"minecraft:iron_hoe"} run scoreboard players set max_durability_offhand mine 250
execute if data storage mine:data items.offhand{id:"minecraft:diamond_hoe"} run scoreboard players set max_durability_offhand mine 1561
execute if data storage mine:data items.offhand{id:"minecraft:netherite_hoe"} run scoreboard players set max_durability_offhand mine 2031

execute if data storage mine:data items.offhand{id:"minecraft:golden_shovel"} run scoreboard players set max_durability_offhand mine 32
execute if data storage mine:data items.offhand{id:"minecraft:wooden_shovel"} run scoreboard players set max_durability_offhand mine 59
execute if data storage mine:data items.offhand{id:"minecraft:stone_shovel"} run scoreboard players set max_durability_offhand mine 131
execute if data storage mine:data items.offhand{id:"minecraft:iron_shovel"} run scoreboard players set max_durability_offhand mine 250
execute if data storage mine:data items.offhand{id:"minecraft:diamond_shovel"} run scoreboard players set max_durability_offhand mine 1561
execute if data storage mine:data items.offhand{id:"minecraft:netherite_shovel"} run scoreboard players set max_durability_offhand mine 2031

execute if data storage mine:data items.offhand{id:"minecraft:golden_sword"} run scoreboard players set max_durability_offhand mine 32
execute if data storage mine:data items.offhand{id:"minecraft:wooden_sword"} run scoreboard players set max_durability_offhand mine 59
execute if data storage mine:data items.offhand{id:"minecraft:stone_sword"} run scoreboard players set max_durability_offhand mine 131
execute if data storage mine:data items.offhand{id:"minecraft:iron_sword"} run scoreboard players set max_durability_offhand mine 250
execute if data storage mine:data items.offhand{id:"minecraft:diamond_sword"} run scoreboard players set max_durability_offhand mine 1561
execute if data storage mine:data items.offhand{id:"minecraft:netherite_sword"} run scoreboard players set max_durability_offhand mine 2031

execute if data storage mine:data items.offhand{id:"minecraft:shears"} run scoreboard players set max_durability_offhand mine 238
execute if data storage mine:data items.offhand{id:"minecraft:trident"} run scoreboard players set max_durability_offhand mine 250

# 2. 获取副手物品当前损坏值和是否无法破坏（若无法破坏，则损坏值视为0）
execute store result score damage_offhand mine run data get storage mine:data items.offhand.components."minecraft:damage"
execute store result score unbreakable_offhand mine if data storage mine:data items.offhand.components."minecraft:unbreakable"
execute if score unbreakable_offhand mine matches 1 run scoreboard players set damage_offhand mine 0

# 3. 获取物品的魔咒信息（只关心耐久、精准采集、时运）
execute store result score unbreaking_level_offhand mine run data get storage mine:data items.offhand.components."minecraft:enchantments".levels."minecraft:unbreaking"
execute store result score silk_touch_level_offhand mine run data get storage mine:data items.offhand.components."minecraft:enchantments".levels."minecraft:silk_touch"
execute store result score fortune_level_offhand mine run data get storage mine:data items.offhand.components."minecraft:enchantments".levels."minecraft:fortune"
