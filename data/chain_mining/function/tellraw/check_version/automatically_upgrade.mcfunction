function chain_mining:tellraw/separate_line
tellraw @s [{"translate": "chain_mining.message.automatically_upgrade.line1", "fallback": "提示：这个世界此前使用了旧版的连锁采集数据包！", "color": "yellow"}]
tellraw @s [{"translate": "chain_mining.message.automatically_upgrade.line2", "fallback": "上次安装的版本：%s", "color": "aqua", "with": [{"nbt": "data.last_data_version_str", "storage": "chain_mining:data", "color": "green"}]}]

# 若版本位于下列范围，则自动执行优化
# assert last_data_version >= 816
execute if score last_data_version chain_mining_variables matches ..1041 run function chain_mining:control/perform_optimization/1041
execute if score last_data_version chain_mining_variables matches ..1090 run function chain_mining:control/perform_optimization/1090
execute if score last_data_version chain_mining_variables matches ..1092 run function chain_mining:control/perform_optimization/1092
execute if score last_data_version chain_mining_variables matches ..1296 run function chain_mining:control/perform_optimization/1296
execute if score last_data_version chain_mining_variables matches ..1312 run function chain_mining:control/perform_optimization/1312
execute if score last_data_version chain_mining_variables matches ..1328 run function chain_mining:control/perform_optimization/1328

function chain_mining:tellraw/check_version/upgrade_success
function chain_mining:tellraw/separate_line
function chain_mining:control/check_version/update_last_number
