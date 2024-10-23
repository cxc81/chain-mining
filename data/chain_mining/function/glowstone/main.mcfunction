scoreboard players set num_blocks_mined chain_mining_variables 1
# 此函数判断：用手中的物品挖掘荧石，是否会消耗耐久以及每次消耗几点耐久，存放在damage_per_block变量中
execute store result score damage_per_block_mainhand chain_mining_variables run \
    function chain_mining:generic/mainhand/get_damage_per_block
function chain_mining:generic/tp_items
function chain_mining:glowstone/find
function chain_mining:generic/actionbar_feedback
