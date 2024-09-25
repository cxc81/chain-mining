function mine:control/check_version/split_last_number
tellraw @s {"text":"---------------------------------------------","color":"gray"}
tellraw @s [{"text":"提示：这个世界此前使用了旧版的连锁采集数据包！","color":"yellow"}]
tellraw @s [{"text":"","color":"green"},{"text":"上次安装的版本：","color":"aqua"},"v",\
    {"score":{"name":"last_version_number_main","objective":"mine_variables"}},".",\
    {"score":{"name":"last_version_number_sub","objective":"mine_variables"}},".",\
    {"score":{"name":"last_version_number_minor","objective":"mine_variables"}}]
tellraw @s [{"text":"已自动升级到最新版本！","color":"green"}]
tellraw @s {"text":"---------------------------------------------","color":"gray"}
function mine:control/check_version/update_last_number
