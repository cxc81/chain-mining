# 获取主手工具的最大耐久度
# 如果获取到了序列化的max_damage组件，则直接返回组件中指定的值
# 否则硬编码返回值，仅针对挖掘工具返回默认的max_damage组件：
#    剑、斧、锄、锹、镐，剪刀、三叉戟、重锤
execute if data storage mine:data items.offhand.components."minecraft:max_damage" run return run \
    data get storage mine:data items.offhand.components."minecraft:max_damage"

execute if data storage mine:data items.offhand{id:"minecraft:golden_pickaxe"} run return 32
execute if data storage mine:data items.offhand{id:"minecraft:wooden_pickaxe"} run return 59
execute if data storage mine:data items.offhand{id:"minecraft:stone_pickaxe"} run return 131
execute if data storage mine:data items.offhand{id:"minecraft:iron_pickaxe"} run return 250
execute if data storage mine:data items.offhand{id:"minecraft:diamond_pickaxe"} run return 1561
execute if data storage mine:data items.offhand{id:"minecraft:netherite_pickaxe"} run return 2031

execute if data storage mine:data items.offhand{id:"minecraft:golden_axe"} run return 32
execute if data storage mine:data items.offhand{id:"minecraft:wooden_axe"} run return 59
execute if data storage mine:data items.offhand{id:"minecraft:stone_axe"} run return 131
execute if data storage mine:data items.offhand{id:"minecraft:iron_axe"} run return 250
execute if data storage mine:data items.offhand{id:"minecraft:diamond_axe"} run return 1561
execute if data storage mine:data items.offhand{id:"minecraft:netherite_axe"} run return 2031

execute if data storage mine:data items.offhand{id:"minecraft:golden_hoe"} run return 32
execute if data storage mine:data items.offhand{id:"minecraft:wooden_hoe"} run return 59
execute if data storage mine:data items.offhand{id:"minecraft:stone_hoe"} run return 131
execute if data storage mine:data items.offhand{id:"minecraft:iron_hoe"} run return 250
execute if data storage mine:data items.offhand{id:"minecraft:diamond_hoe"} run return 1561
execute if data storage mine:data items.offhand{id:"minecraft:netherite_hoe"} run return 2031

execute if data storage mine:data items.offhand{id:"minecraft:golden_shovel"} run return 32
execute if data storage mine:data items.offhand{id:"minecraft:wooden_shovel"} run return 59
execute if data storage mine:data items.offhand{id:"minecraft:stone_shovel"} run return 131
execute if data storage mine:data items.offhand{id:"minecraft:iron_shovel"} run return 250
execute if data storage mine:data items.offhand{id:"minecraft:diamond_shovel"} run return 1561
execute if data storage mine:data items.offhand{id:"minecraft:netherite_shovel"} run return 2031

execute if data storage mine:data items.offhand{id:"minecraft:golden_sword"} run return 32
execute if data storage mine:data items.offhand{id:"minecraft:wooden_sword"} run return 59
execute if data storage mine:data items.offhand{id:"minecraft:stone_sword"} run return 131
execute if data storage mine:data items.offhand{id:"minecraft:iron_sword"} run return 250
execute if data storage mine:data items.offhand{id:"minecraft:diamond_sword"} run return 1561
execute if data storage mine:data items.offhand{id:"minecraft:netherite_sword"} run return 2031

execute if data storage mine:data items.offhand{id:"minecraft:shears"} run return 238
execute if data storage mine:data items.offhand{id:"minecraft:trident"} run return 250
execute if data storage mine:data items.offhand{id:"minecraft:mace"} run return 500

return 0
