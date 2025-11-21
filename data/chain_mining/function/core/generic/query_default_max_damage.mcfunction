# @arguments
#   id
# 根据物品ID查询其默认的最大耐久度组件值
# 若该物品没有默认的最大耐久度组件，则返回0
$return run data get storage chain_mining:data data.default_max_damage."$(id)"
