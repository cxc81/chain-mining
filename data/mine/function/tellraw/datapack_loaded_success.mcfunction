# 效果：连锁采集数据包已加载！ [设置] [使用说明] [更新日志]
tellraw @s ["",{"text":"连锁采集数据包已加载！ ","color":"gold"},{"text":"[设置]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 1"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}," ",{"text":"[使用说明]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 2"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}," ",{"text":"[更新日志]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 3"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}]

# 如果没有lastDataVersion，则表明此数据包是新安装的，不需要做兼容性问题
execute unless data storage mine:data lastDataVersion run return run \
    data modify storage mine:data lastDataVersion set from storage mine:data dataVersion

# 如果有lastDataVersion，则做以下检查
execute store result score lastDataVersion mine_variables run data get storage mine:data lastDataVersion
execute store result score dataVersion mine_variables run data get storage mine:data dataVersion
# 如果lastDataVersion < 816，则当前版本不支持，请在4.1.1及以前版本进行一次更新
execute if score lastDataVersion mine_variables matches ..815 run tellraw @s ["",{"text":"提示：这个世界此前使用了过于陈旧的连锁采集数据包！\n","color":"yellow"},{"text":"建议卸载此数据包，并使用4.1.1版本的数据包进行一次优化！","color":"green"}]
# 如果lastDataVersion介于[816, 1041]，则需要进行手动升级
execute if score lastDataVersion mine_variables matches 816..1041 run tellraw @s ["",{"text":"提示：这个世界此前使用了旧版的连锁采集数据包！\n","color":"yellow"},{"text":"[点击此处]以清除残留数据！","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 1041"}}]
# 如果lastDataVersion介于[1056, dataVersion]，什么也不提示，进行自动升级
# 如果lastDataVersion > dataVersion，说明玩家降低了数据包版本，但也自动进行降级
execute if score lastDataVersion mine_variables > dataVersion mine_variables run tellraw @s ["",{"text":"提示：这个世界之前使用了更高版本的连锁采集数据包！\n","color":"red"}]

# 若能更新lastDataVersion，则自动升级或降级
execute if score lastDataVersion mine_variables matches 1056.. run data modify storage mine:data lastDataVersion set from storage mine:data dataVersion
