# 1. 执行主逻辑
function mine:control/main

# 2. 数据包加载成功的信息反馈
execute as @a unless score @s mine_enter_detect = $server_tick mine_enter_detect run function mine:control/player_enters
scoreboard players add $server_tick mine_enter_detect 1
execute as @a run scoreboard players operation @s mine_enter_detect = $server_tick mine_enter_detect

# 4. 响应玩家的点击事件(使用命令/trigger)
function mine:control/respond_trigger

# 5. 如果有卸载请求，则30秒后过期
scoreboard players remove $remaining_time mine_confirm_unload 1
execute if score $remaining_time mine_confirm_unload matches ..0 run scoreboard objectives remove mine_confirm_unload
