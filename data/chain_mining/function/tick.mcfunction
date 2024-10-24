# 1. 执行主逻辑
function chain_mining:control/main

# 2. 数据包加载成功的信息反馈
execute as @a unless score @s chain_mining_enter_detect = $server_tick chain_mining_enter_detect run function chain_mining:control/player/enters
scoreboard players add $server_tick chain_mining_enter_detect 1
execute as @a run scoreboard players operation @s chain_mining_enter_detect = $server_tick chain_mining_enter_detect

# 3. 如果有卸载请求，则30秒后过期
scoreboard players remove $remaining_time chain_mining_confirm_unload 1
execute if score $remaining_time chain_mining_confirm_unload matches ..0 run scoreboard objectives remove chain_mining_confirm_unload
