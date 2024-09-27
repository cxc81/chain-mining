# 将lastDataVersion所表示的版本号拆分成a.b.c
# 分别存储在变量：
#    last_version_number_main、last_version_number_sub、last_version_number_minor
# 根据公式dataVersion = a*256 + b*16 + c，即可反推a、b、c
scoreboard players set 16 mine_variables 16
execute store result score lastDataVersion mine_variables run data get storage mine:data lastDataVersion

scoreboard players operation temp mine_variables = lastDataVersion mine_variables
scoreboard players operation last_version_number_minor mine_variables = temp mine_variables
scoreboard players operation last_version_number_minor mine_variables %= 16 mine_variables
scoreboard players operation temp mine_variables /= 16 mine_variables
scoreboard players operation last_version_number_sub mine_variables = temp mine_variables
scoreboard players operation last_version_number_sub mine_variables %= 16 mine_variables
scoreboard players operation temp mine_variables /= 16 mine_variables
scoreboard players operation last_version_number_main mine_variables = temp mine_variables

execute store result storage mine:data function_call.version_number_main int 1 run scoreboard players get last_version_number_main mine_variables
execute store result storage mine:data function_call.version_number_sub int 1 run scoreboard players get last_version_number_sub mine_variables
execute store result storage mine:data function_call.version_number_minor int 1 run scoreboard players get last_version_number_minor mine_variables
data modify storage mine:data function_call.target_variable set value last_data_version_str
function mine:control/check_version/convert_to_string/macro_call with storage mine:data function_call
