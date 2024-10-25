# 将last_data_version所表示的版本号拆分成a.b.c
# 分别存储在变量：
#    last_version_number_main、last_version_number_sub、last_version_number_minor
# 根据公式data_version = a*256 + b*16 + c，即可反推a、b、c
execute store result score last_data_version chain_mining_variables run data get storage chain_mining:data data.last_data_version

scoreboard players operation temp chain_mining_variables = last_data_version chain_mining_variables
scoreboard players operation last_version_number_minor chain_mining_variables = temp chain_mining_variables
scoreboard players operation last_version_number_minor chain_mining_variables %= 16 chain_mining_constants
scoreboard players operation temp chain_mining_variables /= 16 chain_mining_constants
scoreboard players operation last_version_number_sub chain_mining_variables = temp chain_mining_variables
scoreboard players operation last_version_number_sub chain_mining_variables %= 16 chain_mining_constants
scoreboard players operation temp chain_mining_variables /= 16 chain_mining_constants
scoreboard players operation last_version_number_main chain_mining_variables = temp chain_mining_variables

execute store result storage chain_mining:data function_call.version_number_main int 1 run scoreboard players get last_version_number_main chain_mining_variables
execute store result storage chain_mining:data function_call.version_number_sub int 1 run scoreboard players get last_version_number_sub chain_mining_variables
execute store result storage chain_mining:data function_call.version_number_minor int 1 run scoreboard players get last_version_number_minor chain_mining_variables
data modify storage chain_mining:data function_call.target_variable set value last_data_version_str
function chain_mining:control/check_version/convert_to_string/macro_call with storage chain_mining:data function_call
