# 此函数由mine:load函数调用
function mine:control/check_version/convert_to_string/data_version
execute if data storage mine:data lastDataVersion run function mine:control/check_version/convert_to_string/last_data_version
