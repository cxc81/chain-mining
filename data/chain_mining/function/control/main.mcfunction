# 1. 尝试对每位玩家进行响应/trigger
execute as @a run function chain_mining:control/player/respond_trigger/main

# 2. 获取游戏规则“方块掉落” - 仅当此世界允许方块掉落时，才执行后续步骤
execute unless function chain_mining:util/gamerule_block_drops run return fail

# 3. 每位玩家的主逻辑，只对非潜行玩家
execute as @a[predicate=!chain_mining:player/is_sneaking] at @s run function chain_mining:core/main

# 4. 将所有掉落物与经验球标记为已检测
tag @e[type=#chain_mining:detectable,tag=!chain_mining_detected] add chain_mining_detected
