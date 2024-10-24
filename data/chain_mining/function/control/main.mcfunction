# 1. 获取游戏规则doTileDrops（方块破坏后有掉落物）
#    仅当此世界有方块掉落物时，才执行后续步骤
execute store result score gamerule_do_tile_drops chain_mining_variables run gamerule doTileDrops
execute if score gamerule_do_tile_drops chain_mining_variables matches 0 run return fail

# 2. 每位玩家的主逻辑，只对非潜行玩家
execute as @a[predicate=!chain_mining:player/is_sneaking] at @s run function chain_mining:control/player/main

# 3. 将所有掉落物与经验球标记为已检测
tag @e[type=#chain_mining:detectable,tag=!chain_mining_detected] add chain_mining_detected
