scoreboard players add num_blocks_mined chain_mining_variables 1
# 在1.21.9前，掉落物硬编码为1~2（age=2）或2~3（age=3）甜浆果
# 自1.21.9起，使用minecraft:harvest/sweet_berry_bush战利品表
#   然而由于无法在命令中提供block_state_property条件的上下文，因此本数据包采用和1.21.9前相同的掉落逻辑
loot spawn ~ ~ ~ loot chain_mining:harvest/sweet_berry_bush

setblock ~ ~ ~ minecraft:sweet_berry_bush[age=1]
