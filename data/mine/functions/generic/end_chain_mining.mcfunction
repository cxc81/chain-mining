# 所有连锁采集公共的结尾

tag @s remove mine_player
gamerule doTileDrops true
# 注意：如果最大耐久为0，表明手持的不是工具
# 将记分板变量damage_mainhand和damage_offhand存回命令存储mine:items
execute unless score max_durability_mainhand mine matches 0 store result storage mine:items mainhand.tag.Damage int 1 run scoreboard players get damage_mainhand mine
execute unless score max_durability_offhand mine matches 0 store result storage mine:items offhand.tag.Damage int 1 run scoreboard players get damage_offhand mine
# 将命令存储mine:items的物品存入玩家主副手
# 需要分情形：
#   1. 损坏值未达到最大耐久，则只修改玩家主副手物品的损坏值(耐久度)，使用/item modify命令
#   2. 损坏值达到或超过最大耐久，直接替换为空气(即物品已损毁)
execute unless score max_durability_mainhand mine matches 0 run item modify entity @s weapon.mainhand mine:set_damage_mainhand
execute unless score max_durability_mainhand mine matches 0 if score damage_mainhand mine >= max_durability_mainhand mine run function mine:generic/mainhand/break
execute unless score max_durability_offhand mine matches 0 run item modify entity @s weapon.offhand mine:set_damage_offhand
execute unless score max_durability_offhand mine matches 0 if score damage_offhand mine >= max_durability_offhand mine run function mine:generic/offhand/break
# 清除命令存储
data remove storage mine:items mainhand
data remove storage mine:items offhand
# 清空所有记分板变量
scoreboard players reset * mine