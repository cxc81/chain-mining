# ���й��ߺ��޹��߲ɼ�(��damage_multiplier_mainhand����)
execute if score damage_multiplier_mainhand mine matches 1.. if score damage_mainhand mine < max_durability_mainhand mine run function mine:glowstone/mine
execute if score damage_multiplier_mainhand mine matches 0 run function mine:glowstone/mine