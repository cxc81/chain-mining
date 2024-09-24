scoreboard players set count mine_variables 1
# 此函数判断：用手中的物品挖掘荧石，是否会消耗耐久以及每次消耗几点耐久，存放在damage_per_block变量中
execute store result score damage_per_block_mainhand mine_variables run \
    function mine:generic/mainhand/get_damage_per_block
function mine:generic/tp_items
function mine:glowstone/find
function mine:generic/actionbar_feedback
