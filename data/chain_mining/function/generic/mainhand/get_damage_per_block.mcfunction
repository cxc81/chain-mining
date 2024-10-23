# 此函数目前仅用于荧石，由chain_mining:glowstone/main调用
# 获取主手工具的单方块耐久消耗量
# 如果获取到了序列化的tool组件，则直接返回组件中的damage_per_block
# 否则硬编码返回值，这些物品有默认的tool组件：
#   镐、斧、锄、锹、剪刀：消耗1耐久
#   剑、三叉戟、重锤：消耗2耐久
execute unless score holding_tool_mainhand chain_mining_variables matches 1 run return 0
execute if data storage chain_mining:data items.mainhand.components."minecraft:tool" run return run \
    data get storage chain_mining:data items.mainhand.components."minecraft:tool".damage_per_block

execute if data storage chain_mining:data items.mainhand{id:"minecraft:wooden_pickaxe"} run return 1
execute if data storage chain_mining:data items.mainhand{id:"minecraft:stone_pickaxe"} run return 1
execute if data storage chain_mining:data items.mainhand{id:"minecraft:iron_pickaxe"} run return 1
execute if data storage chain_mining:data items.mainhand{id:"minecraft:diamond_pickaxe"} run return 1
execute if data storage chain_mining:data items.mainhand{id:"minecraft:netherite_pickaxe"} run return 1
execute if data storage chain_mining:data items.mainhand{id:"minecraft:golden_pickaxe"} run return 1

execute if data storage chain_mining:data items.mainhand{id:"minecraft:wooden_axe"} run return 1
execute if data storage chain_mining:data items.mainhand{id:"minecraft:stone_axe"} run return 1
execute if data storage chain_mining:data items.mainhand{id:"minecraft:iron_axe"} run return 1
execute if data storage chain_mining:data items.mainhand{id:"minecraft:diamond_axe"} run return 1
execute if data storage chain_mining:data items.mainhand{id:"minecraft:netherite_axe"} run return 1
execute if data storage chain_mining:data items.mainhand{id:"minecraft:golden_axe"} run return 1

execute if data storage chain_mining:data items.mainhand{id:"minecraft:wooden_hoe"} run return 1
execute if data storage chain_mining:data items.mainhand{id:"minecraft:stone_hoe"} run return 1
execute if data storage chain_mining:data items.mainhand{id:"minecraft:iron_hoe"} run return 1
execute if data storage chain_mining:data items.mainhand{id:"minecraft:diamond_hoe"} run return 1
execute if data storage chain_mining:data items.mainhand{id:"minecraft:netherite_hoe"} run return 1
execute if data storage chain_mining:data items.mainhand{id:"minecraft:golden_hoe"} run return 1

execute if data storage chain_mining:data items.mainhand{id:"minecraft:wooden_shovel"} run return 1
execute if data storage chain_mining:data items.mainhand{id:"minecraft:stone_shovel"} run return 1
execute if data storage chain_mining:data items.mainhand{id:"minecraft:iron_shovel"} run return 1
execute if data storage chain_mining:data items.mainhand{id:"minecraft:diamond_shovel"} run return 1
execute if data storage chain_mining:data items.mainhand{id:"minecraft:netherite_shovel"} run return 1
execute if data storage chain_mining:data items.mainhand{id:"minecraft:golden_shovel"} run return 1

execute if data storage chain_mining:data items.mainhand{id:"minecraft:wooden_sword"} run return 2
execute if data storage chain_mining:data items.mainhand{id:"minecraft:stone_sword"} run return 2
execute if data storage chain_mining:data items.mainhand{id:"minecraft:iron_sword"} run return 2
execute if data storage chain_mining:data items.mainhand{id:"minecraft:diamond_sword"} run return 2
execute if data storage chain_mining:data items.mainhand{id:"minecraft:netherite_sword"} run return 2
execute if data storage chain_mining:data items.mainhand{id:"minecraft:golden_sword"} run return 2

execute if data storage chain_mining:data items.mainhand{id:"minecraft:shears"} run return 1
execute if data storage chain_mining:data items.mainhand{id:"minecraft:trident"} run return 2
execute if data storage chain_mining:data items.mainhand{id:"minecraft:mace"} run return 2

return 0
