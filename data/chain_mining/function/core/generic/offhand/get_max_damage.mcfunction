# @returns
#   the maximum durability, i.e., components."minecraft:max_damage",
#   or 0 if the component does not exist
# 获取副手工具的最大耐久度
# 由于物品的最大耐久度必须是正整数，因此用0代表该物品不存在最大耐久度（即不会损耗耐久）
# 按照以下逻辑：
#   若获取到已经序列化的max_damage组件，返回对应的值
#   若获取到已经序列化的!max_damage组件，返回0
#   否则硬编码返回值，针对所有可损伤的物品：
#     原本就是挖掘工具：剑、斧、锄、锹、镐，剪刀、三叉戟、重锤(1.21起)
#     其余具有最大耐久的物品：盔甲、打火石、钓鱼竿、胡萝卜钓竿、诡异菌钓竿、弓、盾牌、弩、鞘翅、刷子
execute if data storage chain_mining:data items.offhand.components."minecraft:max_damage" run return run \
    data get storage chain_mining:data items.offhand.components."minecraft:max_damage"
execute if data storage chain_mining:data items.offhand.components."!minecraft:max_damage" run return 0

execute unless items entity @s weapon.offhand #chain_mining:damagable run return 0
# Tools
execute if items entity @s weapon.offhand #chain_mining:tool/material/golden run return 32
execute if items entity @s weapon.offhand #chain_mining:tool/material/wooden run return 59
execute if items entity @s weapon.offhand #chain_mining:tool/material/stone run return 131
execute if items entity @s weapon.offhand #chain_mining:tool/material/copper run return 190
execute if items entity @s weapon.offhand #chain_mining:tool/material/iron run return 250
execute if items entity @s weapon.offhand #chain_mining:tool/material/diamond run return 1561
execute if items entity @s weapon.offhand #chain_mining:tool/material/netherite run return 2031
execute if items entity @s weapon.offhand minecraft:shears run return 238
execute if items entity @s weapon.offhand minecraft:trident run return 250
execute if items entity @s weapon.offhand #chain_mining:tool/mace run return 500
# Armor
execute if items entity @s weapon.offhand minecraft:turtle_helmet run return 275
execute if items entity @s weapon.offhand minecraft:wolf_armor run return 64
execute if items entity @s weapon.offhand minecraft:leather_helmet run return 55
execute if items entity @s weapon.offhand minecraft:leather_chestplate run return 80
execute if items entity @s weapon.offhand minecraft:leather_leggings run return 75
execute if items entity @s weapon.offhand minecraft:leather_boots run return 65
execute if items entity @s weapon.offhand minecraft:golden_helmet run return 77
execute if items entity @s weapon.offhand minecraft:golden_chestplate run return 112
execute if items entity @s weapon.offhand minecraft:golden_leggings run return 105
execute if items entity @s weapon.offhand minecraft:golden_boots run return 91
execute if items entity @s weapon.offhand #chain_mining:armor/material/copper_helmet run return 121
execute if items entity @s weapon.offhand #chain_mining:armor/material/copper_chestplate run return 176
execute if items entity @s weapon.offhand #chain_mining:armor/material/copper_leggings run return 165
execute if items entity @s weapon.offhand #chain_mining:armor/material/copper_boots run return 143
execute if items entity @s weapon.offhand #chain_mining:armor/material/iron_like_helmets run return 165
execute if items entity @s weapon.offhand #chain_mining:armor/material/iron_like_chestplates run return 240
execute if items entity @s weapon.offhand #chain_mining:armor/material/iron_like_leggings run return 225
execute if items entity @s weapon.offhand #chain_mining:armor/material/iron_like_boots run return 195
execute if items entity @s weapon.offhand minecraft:diamond_helmet run return 363
execute if items entity @s weapon.offhand minecraft:diamond_chestplate run return 528
execute if items entity @s weapon.offhand minecraft:diamond_leggings run return 495
execute if items entity @s weapon.offhand minecraft:diamond_boots run return 429
execute if items entity @s weapon.offhand minecraft:netherite_helmet run return 407
execute if items entity @s weapon.offhand minecraft:netherite_chestplate run return 592
execute if items entity @s weapon.offhand minecraft:netherite_leggings run return 555
execute if items entity @s weapon.offhand minecraft:netherite_boots run return 481
# Other
execute if items entity @s weapon.offhand minecraft:flint_and_steel run return 64
execute if items entity @s weapon.offhand minecraft:fishing_rod run return 64
execute if items entity @s weapon.offhand minecraft:carrot_on_a_stick run return 25
execute if items entity @s weapon.offhand minecraft:warped_fungus_on_a_stick run return 100
execute if items entity @s weapon.offhand minecraft:bow run return 384
execute if items entity @s weapon.offhand minecraft:shield run return 336
execute if items entity @s weapon.offhand minecraft:crossbow run return 465
execute if items entity @s weapon.offhand minecraft:elytra run return 432
execute if items entity @s weapon.offhand minecraft:brush run return 64

# assert false
return 0
