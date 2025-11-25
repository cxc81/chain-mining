scoreboard players add num_blocks_mined chain_mining_variables 1
# 在1.21.9前，掉落物固定为1个发光浆果
# 自1.21.9起，使用minecraft:harvest/cave_vine战利品表
loot spawn ~ ~ ~ loot chain_mining:harvest/cave_vines

execute if block ~ ~ ~ minecraft:cave_vines run return run setblock ~ ~ ~ minecraft:cave_vines[berries=false]
return run setblock ~ ~ ~ minecraft:cave_vines_plant[berries=false]
