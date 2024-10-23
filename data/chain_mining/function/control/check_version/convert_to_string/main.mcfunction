# 此函数由chain_mining:load函数调用
function chain_mining:control/check_version/convert_to_string/data_version
execute if data storage chain_mining:data last_data_version run function chain_mining:control/check_version/convert_to_string/last_data_version
