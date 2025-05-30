# 1. 主世界矿石
execute if score @s chain_mining_setting_overworld_ores matches 1 run function chain_mining:core/overworld_ores/main
# 2. 下界矿石
execute if score @s chain_mining_setting_nether_ores matches 1 run function chain_mining:core/nether_ores/main
# 3. 原木/菌柄
execute if score @s chain_mining_setting_logs matches 1 run function chain_mining:core/logs/main
# 4. 岩石(安山岩、闪长岩、花岗岩、凝灰岩、方解石、紫水晶块和岩浆块)
execute if score @s chain_mining_setting_rocks matches 1 run function chain_mining:core/rocks/main
# 5. 软作物(小麦、胡萝卜、马铃薯、甜菜根、下界疣、甘蔗、甜浆果丛和树脂团)
execute if score @s chain_mining_setting_soft_crops matches 1 run function chain_mining:core/soft_crops/main
# 6. 硬作物(南瓜、西瓜、可可果、仙人掌和巨型蘑菇)
execute if score @s chain_mining_setting_hard_crops matches 1 run function chain_mining:core/hard_crops/main
