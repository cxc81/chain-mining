function mine:tellraw/separate_line
tellraw @s [{"text":"提示：这个世界此前使用了过于陈旧的连锁采集数据包！","color":"yellow"}]
tellraw @s [{"text":"","color":"green"},{"text":"上次安装的版本：","color":"aqua"},\
    {"nbt":"data.last_data_version_str","storage":"mine:data"}]
tellraw @s [{"text":"建议卸载此数据包，并使用v4.1.1版本的数据包进行一次优化！","color":"green"}]
function mine:tellraw/separate_line
