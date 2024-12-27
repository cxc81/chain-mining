# 将两个设置变量绑定到一行，来生成一系列宏参数，以供文本组件显示
# 需要传入的参数：
#  variable1, variable2 (均截取chain_mining_setting_后的部分)
#  index1, index2 (生成/trigger命令提供的数值)
$execute if score @s chain_mining_setting_$(variable1) matches 0 run data modify storage chain_mining:data function_call.lines merge value {text1: "关", color1: "red", prompt1: "开启", value1: $(index1)1}
$execute if score @s chain_mining_setting_$(variable1) matches 1 run data modify storage chain_mining:data function_call.lines merge value {text1: "开", color1: "green", prompt1: "关闭", value1: $(index1)0}
$execute if score @s chain_mining_setting_$(variable2) matches 0 run data modify storage chain_mining:data function_call.lines merge value {text2: "关", color2: "red", prompt2: "开启", value2: $(index2)1}
$execute if score @s chain_mining_setting_$(variable2) matches 1 run data modify storage chain_mining:data function_call.lines merge value {text2: "开", color2: "green", prompt2: "关闭", value2: $(index2)0}
