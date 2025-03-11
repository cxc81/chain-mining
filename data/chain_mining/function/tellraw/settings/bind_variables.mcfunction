# @arguments
#   variable1, variable2 (均截取chain_mining_setting_后的部分)
#   index1, index2 (生成/trigger命令提供的数值)
# 将两个设置变量绑定到一行，来生成一系列宏参数，以供文本组件显示
$execute if score @s chain_mining_setting_$(variable1) matches 1 run data modify storage chain_mining:data function_call.lines merge value {button_key1: "on", button_fallback1: "开", button_color1: "green", trigger_value1: $(index1)0, hover_key1: "disable", hover_fallback1: "关闭"}
$execute unless score @s chain_mining_setting_$(variable1) matches 1 run data modify storage chain_mining:data function_call.lines merge value {button_key1: "off", button_fallback1: "关", button_color1: "red", trigger_value1: $(index1)1, hover_key1: "enable", hover_fallback1: "开启"}
$execute if score @s chain_mining_setting_$(variable2) matches 1 run data modify storage chain_mining:data function_call.lines merge value {button_key2: "on", button_fallback2: "开", button_color2: "green", trigger_value2: $(index2)0, hover_key2: "disable", hover_fallback2: "关闭"}
$execute unless score @s chain_mining_setting_$(variable2) matches 1 run data modify storage chain_mining:data function_call.lines merge value {button_key2: "off", button_fallback2: "关", button_color2: "red", trigger_value2: $(index2)1, hover_key2: "enable", hover_fallback2: "开启"}
