# 此函数向命令存储中初始化了更新日志中的每行文本
# 为了兼容1.20.5 - 1.21.4，以SNBT格式书写文本组件时，不能出现布尔值、异构列表或\n
data modify storage chain_mining:data data.changelog_lines set value []

data modify storage chain_mining:data data.changelog_lines append value [{text: "  ", color: "yellow"}, {text: "·", color: "light_purple"}, {text: " 游戏内容"}]
data modify storage chain_mining:data data.changelog_lines append value [{text: "     ", color: "aqua"}, {text: "·", color: "light_purple"}, {text: " 为"}, {text: "26.2", color: "green"}, {text: "及以上版本添加了连锁硫黄和朱砂的支持。"}]
data modify storage chain_mining:data data.changelog_lines append value [{text: "        ", color: "aqua"}, {text: "·", color: "light_purple"}, {text: " 它们均属于"}, {text: "岩石", color: "green"}, {text: "分类。"}]
