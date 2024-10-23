# 如果没有last_data_version，则表明此数据包是新安装的，不需要做兼容性问题
execute unless data storage chain_mining:data last_data_version run return run \
    function chain_mining:control/check_version/update_last_number

# 如果有last_data_version，则做以下检查
execute store result score last_data_version chain_mining_variables run data get storage chain_mining:data last_data_version
execute store result score data_version chain_mining_variables run data get storage chain_mining:data data_version

# 如果last_data_version < 816，则当前版本不支持，请在4.1.1及以前版本进行一次更新
execute if score last_data_version chain_mining_variables matches ..815 run \
    function chain_mining:tellraw/check_version/too_old

# 如果last_data_version介于[816, data_version)，进行自动升级
execute if score last_data_version chain_mining_variables matches 816.. \
    if score last_data_version chain_mining_variables < data_version chain_mining_variables run \
    function chain_mining:tellraw/check_version/automatically_upgrade

# 如果last_data_version > data_version，说明玩家降低了数据包版本，但也自动进行降级
execute if score last_data_version chain_mining_variables > data_version chain_mining_variables run \
    function chain_mining:tellraw/check_version/automatically_downgrade
