# 未使用generic/find/small函数，因为成熟的甜浆果丛有多种方块状态
execute positioned ~-1 ~ ~ if predicate chain_mining:block/sweet_berry_bush/is_mature run function chain_mining:core/soft_crops/sweet_berry_bush/mine
execute positioned ~1 ~ ~ if predicate chain_mining:block/sweet_berry_bush/is_mature run function chain_mining:core/soft_crops/sweet_berry_bush/mine
execute positioned ~ ~ ~-1 if predicate chain_mining:block/sweet_berry_bush/is_mature run function chain_mining:core/soft_crops/sweet_berry_bush/mine
execute positioned ~-1 ~ ~-1 if predicate chain_mining:block/sweet_berry_bush/is_mature run function chain_mining:core/soft_crops/sweet_berry_bush/mine
execute positioned ~1 ~ ~-1 if predicate chain_mining:block/sweet_berry_bush/is_mature run function chain_mining:core/soft_crops/sweet_berry_bush/mine
execute positioned ~ ~ ~1 if predicate chain_mining:block/sweet_berry_bush/is_mature run function chain_mining:core/soft_crops/sweet_berry_bush/mine
execute positioned ~-1 ~ ~1 if predicate chain_mining:block/sweet_berry_bush/is_mature run function chain_mining:core/soft_crops/sweet_berry_bush/mine
execute positioned ~1 ~ ~1 if predicate chain_mining:block/sweet_berry_bush/is_mature run function chain_mining:core/soft_crops/sweet_berry_bush/mine
