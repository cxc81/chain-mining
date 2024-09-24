# 效果：成功加载连锁采集数据包！ [设置] [使用说明] [更新日志]
tellraw @s ["",{"text":"\u6210\u529f\u52a0\u8f7d\u8fde\u9501\u91c7\u96c6\u6570\u636e\u5305\uff01 ","color":"gold"},{"text":"[\u8bbe\u7f6e]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 1"},"hoverEvent":{"action":"show_text","value":"\u70b9\u51fb\u67e5\u770b"}}," ",{"text":"[\u4f7f\u7528\u8bf4\u660e]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 2"},"hoverEvent":{"action":"show_text","value":"\u70b9\u51fb\u67e5\u770b"}}," ",{"text":"[\u66f4\u65b0\u65e5\u5fd7]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 3"},"hoverEvent":{"action":"show_text","value":"\u70b9\u51fb\u67e5\u770b"}}]

execute store result score lastDataVersion mine run data get storage mine:data lastDataVersion
execute store result score dataVersion mine run data get storage mine:data dataVersion
# 如果有lastDataVersion，但数值小于816，说明属于有辅助箱子的，需要优化确认
execute if data storage mine:data lastDataVersion if score lastDataVersion mine matches ..815 run tellraw @s ["",{"text":"\u63d0\u793a\uff1a\u60a8\u521a\u521a\u5347\u7ea7\u4e86\u8fde\u9501\u91c7\u96c6\u6570\u636e\u5305\uff0c\u542b\u6709\u65e7\u6570\u636e\uff01","color":"yellow"},{"text":"[\u70b9\u51fb\u6b64\u5904\u4ee5\u4f18\u5316]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set -1024"}}]
# 如果有lastDataVersion，且数值为816，则自动更新数据包版本
execute if data storage mine:data lastDataVersion if score lastDataVersion mine matches 816 run data modify storage mine:data lastDataVersion set from storage mine:data dataVersion
# 如果有lastDataVersion，但数值大于dataVersion，说明玩家降低了数据包版本
execute if data storage mine:data lastDataVersion if score lastDataVersion mine > dataVersion mine run tellraw @s ["",{"text":"\u63d0\u793a\uff1a\u8fd9\u4e2a\u4e16\u754c\u4e4b\u524d\u4f7f\u7528\u4e86\u66f4\u65b0\u7248\u672c\u7684\u8fde\u9501\u91c7\u96c6\u6570\u636e\u5305\uff01","color":"red"}]