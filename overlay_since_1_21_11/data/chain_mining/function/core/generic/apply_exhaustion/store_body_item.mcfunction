# @since 1.21.11

# 生成的物品展示实体的位置足够高，又在已加载区块
summon minecraft:item_display ~ 8192 ~ {Tags: ["chain_mining_display_entity"]}
item replace entity @e[type=minecraft:item_display,tag=chain_mining_display_entity,y=8192,limit=1] contents from entity @s armor.body
