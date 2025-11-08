function chain_mining:util/initialize_scoreboards

# 其他初始化操作
# 设置当前使用的数据包版本(a.b.c)，计算公式为 a*256 + b*16 + c，存入data.data_version
data modify storage chain_mining:data data.data_version set value 1346
function chain_mining:control/check_version/convert_to_string/data_version
# 设置当前支持的Minecraft版本
data modify storage chain_mining:data data.supported_minecraft_versions_str set value "1.21 - 1.21.11"
# 初始化changelogs
function chain_mining:util/initialize_changelogs
# 确保单刻能执行足够命令
function chain_mining:util/ensure_enough_command_sequence_length

# 启动tick计划函数
schedule clear chain_mining:tick
function chain_mining:tick
