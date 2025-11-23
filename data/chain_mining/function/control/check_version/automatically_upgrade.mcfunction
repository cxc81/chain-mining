function chain_mining:tellraw/separate_line
function chain_mining:tellraw/check_version/automatically_upgrade

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
