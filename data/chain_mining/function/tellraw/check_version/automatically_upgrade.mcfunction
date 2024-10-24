function chain_mining:tellraw/separate_line
tellraw @s [{"text":"提示：这个世界此前使用了旧版的连锁采集数据包！","color":"yellow"}]
tellraw @s [{"text":"","color":"green"},{"text":"上次安装的版本：","color":"aqua"},\
    {"nbt":"data.last_data_version_str","storage":"chain_mining:data"}]

# 若版本位于下列范围，则自动执行优化
# assert last_data_version >= 816
execute if score last_data_version chain_mining_variables matches ..1041 run function chain_mining:control/perform_optimization/1041
execute if score last_data_version chain_mining_variables matches ..1090 run function chain_mining:control/perform_optimization/1090
execute if score last_data_version chain_mining_variables matches ..1092 run function chain_mining:control/perform_optimization/1092

tellraw @s [{"text":"已自动升级到最新版本！","color":"green"}, " ", {"text":"[更新日志]","color":"green","clickEvent":{"action":"run_command","value":"/trigger chain_mining_trigger set 3"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}]
function chain_mining:tellraw/separate_line
function chain_mining:control/check_version/update_last_number
