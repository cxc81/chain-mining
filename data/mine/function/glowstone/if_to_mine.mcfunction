# 分有工具和无工具采集(由damage_multiplier_mainhand决定)
execute if score damage_multiplier_mainhand mine matches 1.. if score damage_mainhand mine < max_durability_mainhand mine run function mine:glowstone/mine
execute if score damage_multiplier_mainhand mine matches 0 run function mine:glowstone/mine