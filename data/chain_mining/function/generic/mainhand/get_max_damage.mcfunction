# 获取主手工具的最大耐久度
# 由于物品的最大耐久度必须是正整数，因此用0代表该物品不存在最大耐久度（即不会损耗耐久）
# 如果手持的不是挖掘工具，则直接返回0
# 否则按照以下逻辑：
#   若获取到已经序列化的max_damage组件，返回对应的值
#   若获取到已经序列化的!max_damage组件，返回0
#   否则硬编码返回值，针对所有可损伤的物品：
#     原本就是挖掘工具：剑、斧、锄、锹、镐，剪刀、三叉戟、重锤
#     其余具有最大耐久的物品：
execute unless score holding_tool_mainhand chain_mining_variables matches 1 run return 0
execute if data storage chain_mining:data items.mainhand.components."minecraft:max_damage" run return run \
    data get storage chain_mining:data items.mainhand.components."minecraft:max_damage"
execute if data storage chain_mining:data items.mainhand.components."!minecraft:max_damage" run return 0

execute if data storage chain_mining:data items.mainhand{id:"minecraft:golden_pickaxe"} run return 32
execute if data storage chain_mining:data items.mainhand{id:"minecraft:wooden_pickaxe"} run return 59
execute if data storage chain_mining:data items.mainhand{id:"minecraft:stone_pickaxe"} run return 131
execute if data storage chain_mining:data items.mainhand{id:"minecraft:iron_pickaxe"} run return 250
execute if data storage chain_mining:data items.mainhand{id:"minecraft:diamond_pickaxe"} run return 1561
execute if data storage chain_mining:data items.mainhand{id:"minecraft:netherite_pickaxe"} run return 2031

execute if data storage chain_mining:data items.mainhand{id:"minecraft:golden_axe"} run return 32
execute if data storage chain_mining:data items.mainhand{id:"minecraft:wooden_axe"} run return 59
execute if data storage chain_mining:data items.mainhand{id:"minecraft:stone_axe"} run return 131
execute if data storage chain_mining:data items.mainhand{id:"minecraft:iron_axe"} run return 250
execute if data storage chain_mining:data items.mainhand{id:"minecraft:diamond_axe"} run return 1561
execute if data storage chain_mining:data items.mainhand{id:"minecraft:netherite_axe"} run return 2031

execute if data storage chain_mining:data items.mainhand{id:"minecraft:golden_hoe"} run return 32
execute if data storage chain_mining:data items.mainhand{id:"minecraft:wooden_hoe"} run return 59
execute if data storage chain_mining:data items.mainhand{id:"minecraft:stone_hoe"} run return 131
execute if data storage chain_mining:data items.mainhand{id:"minecraft:iron_hoe"} run return 250
execute if data storage chain_mining:data items.mainhand{id:"minecraft:diamond_hoe"} run return 1561
execute if data storage chain_mining:data items.mainhand{id:"minecraft:netherite_hoe"} run return 2031

execute if data storage chain_mining:data items.mainhand{id:"minecraft:golden_shovel"} run return 32
execute if data storage chain_mining:data items.mainhand{id:"minecraft:wooden_shovel"} run return 59
execute if data storage chain_mining:data items.mainhand{id:"minecraft:stone_shovel"} run return 131
execute if data storage chain_mining:data items.mainhand{id:"minecraft:iron_shovel"} run return 250
execute if data storage chain_mining:data items.mainhand{id:"minecraft:diamond_shovel"} run return 1561
execute if data storage chain_mining:data items.mainhand{id:"minecraft:netherite_shovel"} run return 2031

execute if data storage chain_mining:data items.mainhand{id:"minecraft:golden_sword"} run return 32
execute if data storage chain_mining:data items.mainhand{id:"minecraft:wooden_sword"} run return 59
execute if data storage chain_mining:data items.mainhand{id:"minecraft:stone_sword"} run return 131
execute if data storage chain_mining:data items.mainhand{id:"minecraft:iron_sword"} run return 250
execute if data storage chain_mining:data items.mainhand{id:"minecraft:diamond_sword"} run return 1561
execute if data storage chain_mining:data items.mainhand{id:"minecraft:netherite_sword"} run return 2031

execute if data storage chain_mining:data items.mainhand{id:"minecraft:shears"} run return 238
execute if data storage chain_mining:data items.mainhand{id:"minecraft:trident"} run return 250
execute if data storage chain_mining:data items.mainhand{id:"minecraft:mace"} run return 500

return 0
