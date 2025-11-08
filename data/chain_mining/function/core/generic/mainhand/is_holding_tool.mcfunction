# @returns
#   1 if the item can be considered a tool, or 0 otherwise
# 判断主手持有的物品是否为挖掘工具（即拥有tool组件）
# 当且仅当满足下列条件之一，为挖掘工具：
#   /data命令成功获取到了该物品的tool组件
#   该物品不含有"!tool"组件，且物品原本有默认的tool组件
execute if data storage chain_mining:data items.mainhand.components."minecraft:tool" run return 1
execute if data storage chain_mining:data items.mainhand.components."!minecraft:tool" run return 0
return run execute if items entity @s weapon.mainhand #chain_mining:tool/all
