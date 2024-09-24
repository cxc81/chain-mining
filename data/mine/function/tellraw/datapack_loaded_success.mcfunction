# 效果：连锁采集数据包已加载！ [设置] [使用说明] [更新日志]
tellraw @s ["",{"text":"连锁采集数据包已加载！ ","color":"gold"},{"text":"[设置]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 1"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}," ",{"text":"[使用说明]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 2"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}," ",{"text":"[更新日志]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 3"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}]

execute store result score lastDataVersion mine run data get storage mine:data lastDataVersion
execute store result score dataVersion mine run data get storage mine:data dataVersion
# 如果有lastDataVersion，但数值小于816，说明属于有辅助箱子的，需要优化确认
execute if data storage mine:data lastDataVersion if score lastDataVersion mine matches ..815 run tellraw @s ["",{"text":"提示：您刚刚升级了连锁采集数据包，含有旧数据！","color":"yellow"},{"text":"[点击此处以优化]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set -1024"}}]
# 如果有lastDataVersion，且数值介于[816, dataVersion]，则自动更新数据包版本
execute if data storage mine:data lastDataVersion if score lastDataVersion mine matches 816.. if score lastDataVersion mine <= dataVersion mine run data modify storage mine:data lastDataVersion set from storage mine:data dataVersion
# 如果有lastDataVersion，但数值大于dataVersion，说明玩家降低了数据包版本
execute if data storage mine:data lastDataVersion if score lastDataVersion mine > dataVersion mine run tellraw @s ["",{"text":"提示：这个世界之前使用了更高版本的连锁采集数据包！","color":"red"}]
