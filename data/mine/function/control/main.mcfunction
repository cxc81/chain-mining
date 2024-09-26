# 1. 获取游戏规则doTileDrops（方块破坏后有掉落物）
#    仅当此世界有方块掉落物时，才执行后续步骤
execute store result score gamerule_do_tile_drops mine_variables run gamerule doTileDrops
execute if score gamerule_do_tile_drops mine_variables matches 0 run return fail

# 2. 每位玩家的主逻辑，只对非潜行玩家
execute as @a[predicate=!mine:player/is_sneaking] run function mine:control/main_per_player

# 3. 将所有掉落物标记为已检测
tag @e[type=minecraft:item,tag=!mine_detected] add mine_detected
