# 此函数由chain_mining:control/check_version/main函数调用
function chain_mining:control/check_version/pre_process/legacy_0
function chain_mining:control/check_version/pre_process/legacy_1
execute if data storage chain_mining:data data.last_data_version run \
    function chain_mining:control/check_version/convert_to_string/last_data_version
