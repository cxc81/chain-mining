# 玩家如果是第一次进入此世界，要给设置赋初值
execute as @a unless score @s chain_mining_setting_ores = @s chain_mining_setting_ores run function chain_mining:control/player_initialize_settings

function chain_mining:tellraw/load_success
function chain_mining:control/check_version/main
