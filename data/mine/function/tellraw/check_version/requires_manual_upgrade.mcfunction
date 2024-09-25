function mine:control/check_version/split_last_number
tellraw @s {"text":"---------------------------------------------","color":"gray"}
tellraw @s [{"text":"提示：这个世界此前使用了旧版的连锁采集数据包！","color":"yellow"}]
tellraw @s [{"text":"","color":"green"},{"text":"上次安装的版本：","color":"aqua"},"v",\
    {"score":{"name":"last_version_number_main","objective":"mine_variables"}},".",\
    {"score":{"name":"last_version_number_sub","objective":"mine_variables"}},".",\
    {"score":{"name":"last_version_number_minor","objective":"mine_variables"}}]
tellraw @s [{"text":"[点击此处]以清除残留数据！","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 1041"},"hoverEvent":{"action":"show_text","contents":{"text":"点击以开始优化数据！","color":"yellow"}}}]
tellraw @s {"text":"---------------------------------------------","color":"gray"}
