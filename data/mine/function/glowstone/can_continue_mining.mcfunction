# 分有工具和无工具采集(由damage_per_block_mainhand决定)
execute if score damage_per_block_mainhand mine_variables matches 1.. if score damage_mainhand mine_variables < max_damage_mainhand mine_variables run return 1
execute if score damage_per_block_mainhand mine_variables matches 0 run return 1
return 0
