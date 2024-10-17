function mine:tellraw/separate_line
tellraw @s [{"text":"提示：这个世界此前使用了旧版的连锁采集数据包！","color":"yellow"}]
tellraw @s [{"text":"","color":"green"},{"text":"上次安装的版本：","color":"aqua"},\
    {"nbt":"data.last_data_version_str","storage":"mine:data"}]

# 若版本位于下列范围，则自动执行优化
# assert lastDataVersion >= 816
execute if score lastDataVersion mine_variables matches ..1041 run function mine:control/perform_optimization/1041
execute if score lastDataVersion mine_variables matches ..1090 run function mine:control/perform_optimization/1090

tellraw @s [{"text":"已自动升级到最新版本！","color":"green"}]
function mine:tellraw/separate_line
function mine:control/check_version/update_last_number
