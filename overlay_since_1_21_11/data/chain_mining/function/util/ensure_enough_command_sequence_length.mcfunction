# @since 1.21.11

# 将游戏规则max_command_sequence_length设为至少1048576
execute store result score #gamerule_max_command_sequence_length chain_mining_variables run gamerule max_command_sequence_length
execute if score #gamerule_max_command_sequence_length chain_mining_variables matches ..1048575 run gamerule max_command_sequence_length 1048576
