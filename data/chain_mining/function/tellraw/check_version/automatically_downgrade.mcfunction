function chain_mining:tellraw/separate_line
tellraw @s [{"text": "警告：这个世界此前使用了更新版本的连锁采集数据包！", "color": "red"}]
tellraw @s [{"text": "", "color": "green"}, {"text": "上次安装的版本：", "color": "aqua"}, \
    {"nbt": "data.last_data_version_str", "storage": "chain_mining:data"}]
tellraw @s [{"text": "请当心，有可能会引发问题！", "color": "yellow"}]
function chain_mining:tellraw/separate_line
function chain_mining:control/check_version/update_last_number
