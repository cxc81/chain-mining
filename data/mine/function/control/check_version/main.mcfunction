# 如果没有lastDataVersion，则表明此数据包是新安装的，不需要做兼容性问题
execute unless data storage mine:data lastDataVersion run return run \
    function mine:control/check_version/update_last_number

# 如果有lastDataVersion，则做以下检查
execute store result score lastDataVersion mine_variables run data get storage mine:data lastDataVersion
execute store result score dataVersion mine_variables run data get storage mine:data dataVersion

# 如果lastDataVersion < 816，则当前版本不支持，请在4.1.1及以前版本进行一次更新
execute if score lastDataVersion mine_variables matches ..815 run \
    function mine:tellraw/check_version/too_old

# 如果lastDataVersion介于[816, dataVersion)，进行自动升级
execute if score lastDataVersion mine_variables matches 816.. \
    if score lastDataVersion mine_variables < dataVersion mine_variables run \
    function mine:tellraw/check_version/automatically_upgrade

# 如果lastDataVersion > dataVersion，说明玩家降低了数据包版本，但也自动进行降级
execute if score lastDataVersion mine_variables > dataVersion mine_variables run \
    function mine:tellraw/check_version/automatically_downgrade
