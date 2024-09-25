# 将lastDataVersion所表示的版本号拆分成a.b.c
# 分别存储在变量last_version_number_main、last_version_number_sub、last_version_number_minor
# 根据公式lastDataVersion = a*256 + b*16 + c，即可反推a、b、c
scoreboard players set 16 mine_variables 16
scoreboard players operation temp mine_variables = lastDataVersion mine_variables

scoreboard players operation last_version_number_minor mine_variables = temp mine_variables
scoreboard players operation last_version_number_minor mine_variables %= 16 mine_variables
scoreboard players operation temp mine_variables /= 16 mine_variables

scoreboard players operation last_version_number_sub mine_variables = temp mine_variables
scoreboard players operation last_version_number_sub mine_variables %= 16 mine_variables
scoreboard players operation temp mine_variables /= 16 mine_variables

scoreboard players operation last_version_number_main mine_variables = temp mine_variables
