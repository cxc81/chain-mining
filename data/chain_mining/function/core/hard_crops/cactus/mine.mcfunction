# 如果仙人掌的上方一格是仙人掌花，则优先连锁仙人掌花 (仅1.21.5+)
# 同时要求被挖掘的仙人掌下方还有仙人掌，才能触发连锁仙人掌
# 此逻辑确保了即使仙人掌的高度只有1格，也能连锁采集仙人掌花
execute positioned ~ ~1 ~ run function chain_mining:core/hard_crops/cactus/mine_cactus_flower
execute unless block ~ ~-1 ~ minecraft:cactus run return fail

scoreboard players add num_blocks_mined/cactus chain_mining_variables 1
function chain_mining:core/generic/mainhand/destroy_block
function chain_mining:core/generic/tp_items
function chain_mining:core/generic/mainhand/apply_damage

function chain_mining:core/generic/find/wide {blocks: "minecraft:cactus", mine_function: "hard_crops/cactus/mine"}
