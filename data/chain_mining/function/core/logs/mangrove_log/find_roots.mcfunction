# 红树根也可以连锁，但不能向下连锁
# 此函数区别于chain_mining:generic/find中的函数
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:mangrove_roots run function chain_mining:core/logs/mangrove_log/mine_roots
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:mangrove_roots run function chain_mining:core/logs/mangrove_log/mine_roots
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:mangrove_roots run function chain_mining:core/logs/mangrove_log/mine_roots
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:mangrove_roots run function chain_mining:core/logs/mangrove_log/mine_roots
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ minecraft:mangrove_roots run function chain_mining:core/logs/mangrove_log/mine_roots
execute positioned ~-1 ~ ~1 if block ~ ~ ~ minecraft:mangrove_roots run function chain_mining:core/logs/mangrove_log/mine_roots
execute positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:mangrove_roots run function chain_mining:core/logs/mangrove_log/mine_roots
execute positioned ~1 ~ ~1 if block ~ ~ ~ minecraft:mangrove_roots run function chain_mining:core/logs/mangrove_log/mine_roots
execute positioned ~ ~1 ~ if block ~ ~ ~ minecraft:mangrove_roots run function chain_mining:core/logs/mangrove_log/mine_roots
execute positioned ~-1 ~1 ~ if block ~ ~ ~ minecraft:mangrove_roots run function chain_mining:core/logs/mangrove_log/mine_roots
execute positioned ~1 ~1 ~ if block ~ ~ ~ minecraft:mangrove_roots run function chain_mining:core/logs/mangrove_log/mine_roots
execute positioned ~ ~1 ~-1 if block ~ ~ ~ minecraft:mangrove_roots run function chain_mining:core/logs/mangrove_log/mine_roots
execute positioned ~ ~1 ~1 if block ~ ~ ~ minecraft:mangrove_roots run function chain_mining:core/logs/mangrove_log/mine_roots
execute positioned ~-1 ~1 ~-1 if block ~ ~ ~ minecraft:mangrove_roots run function chain_mining:core/logs/mangrove_log/mine_roots
execute positioned ~-1 ~1 ~1 if block ~ ~ ~ minecraft:mangrove_roots run function chain_mining:core/logs/mangrove_log/mine_roots
execute positioned ~1 ~1 ~-1 if block ~ ~ ~ minecraft:mangrove_roots run function chain_mining:core/logs/mangrove_log/mine_roots
execute positioned ~1 ~1 ~1 if block ~ ~ ~ minecraft:mangrove_roots run function chain_mining:core/logs/mangrove_log/mine_roots