# @returns
#   the maximum durability, i.e., components."minecraft:max_damage",
#   or 0 if the component does not exist
# 获取主手工具的最大耐久度
# 由于物品的最大耐久度必须是正整数，因此用0代表该物品不存在最大耐久度（即不会损耗耐久）
# 按照以下逻辑：
#   若获取到已经序列化的max_damage组件，返回对应的值
#   若获取到已经序列化的!max_damage组件，返回0
#   否则查询该物品的max_damage默认组件值
execute if data storage chain_mining:data items.mainhand.components."minecraft:max_damage" run return run data get storage chain_mining:data items.mainhand.components."minecraft:max_damage"
execute if data storage chain_mining:data items.mainhand.components."!minecraft:max_damage" run return 0

return run function chain_mining:core/generic/query_default_max_damage with storage chain_mining:data items.mainhand
