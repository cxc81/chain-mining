# 如果物品damage组件不存在，则视为-1
# 对于默认拥有damage组件的物品，其默认值是0
# 如果获取不到序列化的damage或!damage组件，则需要判断该物品是否默认可损伤
execute if data storage chain_mining:data items.mainhand.components."minecraft:damage" run return run \
    data get storage chain_mining:data items.mainhand.components."minecraft:damage"
execute if data storage chain_mining:data items.mainhand.components."!minecraft:damage" run return -1

execute if items entity @s weapon.mainhand #chain_mining:tool/damagable run return 0
return -1
