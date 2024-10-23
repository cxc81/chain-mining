scoreboard players set num_logs_mined chain_mining_variables 1
scoreboard players set num_wart_blocks_mined chain_mining_variables 0
scoreboard players set num_shroomlights_mined chain_mining_variables 0
function chain_mining:generic/tp_items
execute store success score holding_hoe_offhand chain_mining_variables if predicate chain_mining:player/offhand/holding_hoe
execute if score holding_hoe_offhand chain_mining_variables matches 1 run function chain_mining:logs/warped_stem/find_leaves
function chain_mining:logs/warped_stem/find
title @s actionbar [{"text":"共采集了","color":"aqua"},{"score":{"name":"num_logs_mined","objective":"chain_mining_variables"},"color":"yellow"},{"text":"个菌柄，","color":"aqua"},{"score":{"name":"num_wart_blocks_mined","objective":"chain_mining_variables"},"color":"yellow"},{"text":"个疣块，","color":"aqua"},{"score":{"name":"num_shroomlights_mined","objective":"chain_mining_variables"},"color":"yellow"},{"text":"个菌光体","color":"aqua"}]
