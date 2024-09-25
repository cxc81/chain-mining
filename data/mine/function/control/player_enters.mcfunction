# 玩家如果是第一次进入此世界，要给设置赋初值
execute as @a unless score @s mine_setting_ores = @s mine_setting_ores run function mine:control/player_initialize_settings

function mine:tellraw/load_success
function mine:control/check_version/main
