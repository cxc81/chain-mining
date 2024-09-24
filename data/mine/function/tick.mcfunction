# 1. 执行主逻辑
function mine:control/main

# 2. 数据包加载成功的信息反馈
execute as @a unless score @s mine_enter_detect = $server_tick mine_enter_detect run function mine:tellraw/datapack_loaded_success
scoreboard players add $server_tick mine_enter_detect 1
execute as @a run scoreboard players operation @s mine_enter_detect = $server_tick mine_enter_detect

# 3. 玩家如果是第一次进入此世界，要给设置赋初值
execute as @a unless score @s mine_setting_ores = @s mine_setting_ores run function mine:control/player_first_enter

# 4. 响应玩家的点击事件(使用命令/trigger)
function mine:control/respond_trigger

# 5. 如果有卸载请求，则30秒后过期
scoreboard players remove $remaining_time mine_confirm_unload 1
execute if score $remaining_time mine_confirm_unload matches ..0 run scoreboard objectives remove mine_confirm_unload
