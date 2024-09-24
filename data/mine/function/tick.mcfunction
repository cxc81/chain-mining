# 1. 执行/gamerule doTileDrops，判断此世界是否有方块掉落物
execute store result score gamerule_do_tile_drops mine run gamerule doTileDrops
execute if score gamerule_do_tile_drops mine matches 1 as @a run function mine:control/mine_main
# 将所有掉落物标记为已检测
tag @e[type=minecraft:item,tag=!mine_detected] add mine_detected

# 2. 数据包加载成功的信息反馈
execute as @a unless score @s mine_enter = $server_tick mine_enter run function mine:tellraw/datapack_loaded_success
scoreboard players add $server_tick mine_enter 1
execute as @a run scoreboard players operation @s mine_enter = $server_tick mine_enter

# 3. 玩家如果是第一次进入此世界，要给设置赋初值
execute as @a unless score @s mine_setting_ores = @s mine_setting_ores run function mine:control/player_first_enter

# 4. 响应玩家的点击事件(使用命令/trigger)
function mine:control/respond_trigger

# 5. 如果有卸载请求，则30秒后过期
scoreboard players remove $remaining_time mine_confirm_unload 1
execute if score $remaining_time mine_confirm_unload matches ..0 run scoreboard objectives remove mine_confirm_unload
