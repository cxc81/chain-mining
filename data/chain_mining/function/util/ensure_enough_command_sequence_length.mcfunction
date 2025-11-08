# @until 1.21.11

# 将游戏规则maxCommandChainLength设为至少1048576
execute store result score #gamerule_max_command_chain_length chain_mining_variables run gamerule maxCommandChainLength
execute if score #gamerule_max_command_chain_length chain_mining_variables matches ..1048575 run gamerule maxCommandChainLength 1048576
