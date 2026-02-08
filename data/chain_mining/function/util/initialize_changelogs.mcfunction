# 此函数向命令存储中初始化了更新日志中的每行文本
# 为了兼容1.20.5 - 1.21.4，以SNBT格式书写文本组件时，不能出现布尔值、异构列表或\n
data modify storage chain_mining:data data.changelog_lines set value []

data modify storage chain_mining:data data.changelog_lines append value [{text: "  ", color: "yellow"}, {text: "·", color: "light_purple"}, {text: " 界面"}]
data modify storage chain_mining:data data.changelog_lines append value [{text: "     ", color: "aqua"}, {text: "·", color: "light_purple"}, {text: " 修改了部分文本的显示方式以适配"}, {text: "26.1", color: "green"}, {text: "版本。"}]
