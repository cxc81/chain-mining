# 1. 执行/gamerule doTileDrops，判断此世界是否有方块掉落物
execute store result score gamerule_do_tile_drops mine run gamerule doTileDrops
execute if score gamerule_do_tile_drops mine matches 1 as @a run function mine:control/mine_main

# 2. 数据包加载成功的信息反馈
execute as @a unless score @s mine_enter = @s mine_enter run function mine:control/datapack_loaded_success
scoreboard players set @a mine_enter 0

# 3. 玩家如果是第一次进入此世界，要给设置赋初值
execute as @a unless score @s mine_setting_ores = @s mine_setting_ores run function mine:control/player_first_enter

# 4. 响应玩家的点击事件(使用命令/trigger)
function mine:control/respond_trigger