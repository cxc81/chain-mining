# 要使工具可损伤，需同时满足四个条件
execute if score holding_tool_offhand chain_mining_variables matches 0 run return 0
execute if score unbreakable_offhand chain_mining_variables matches 1 run return 0
execute if score max_damage_offhand chain_mining_variables matches 0 run return 0
execute if score damage_offhand chain_mining_variables matches -1 run return 0
return 1
