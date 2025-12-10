# 此函数向命令存储中初始化了更新日志中的每行文本
# 为了兼容1.20.5 - 1.21.4，以NBT书写文本组件时，不能出现布尔值、异构列表或\n
data modify storage chain_mining:data data.changelog_lines set value []

data modify storage chain_mining:data data.changelog_lines append value [{text: "  ", color: "yellow"}, {text: "·", color: "light_purple"}, {text: " 游戏内容"}]
data modify storage chain_mining:data data.changelog_lines append value [{text: "     ", color: "aqua"}, {text: "·", color: "light_purple"}, {text: " 为"}, {text: "1.21.5", color: "green"}, {text: "及以上版本添加了对"}, {text: "仙人掌花"}, {text: "的连锁采集支持。"}]
data modify storage chain_mining:data data.changelog_lines append value [{text: "        ", color: "aqua"}, {text: "·", color: "light_purple"}, {text: " 尽管仙人掌花无硬度，但其仍然属于硬作物类别，同仙人掌。"}]
data modify storage chain_mining:data data.changelog_lines append value [{text: "        ", color: "aqua"}, {text: "·", color: "light_purple"}, {text: " 仍然需要挖掘仙人掌，才能触发仙人掌花(和仙人掌)的连锁采集。"}]
data modify storage chain_mining:data data.changelog_lines append value [{text: "  ", color: "yellow"}, {text: "·", color: "light_purple"}, {text: " 界面"}]
data modify storage chain_mining:data data.changelog_lines append value [{text: "     ", color: "aqua"}, {text: "·", color: "light_purple"}, {text: " 优化了“支持的方块”悬停提示的内容显示效果。"}]
data modify storage chain_mining:data data.changelog_lines append value [{text: "        ", color: "aqua"}, {text: "·", color: "light_purple"}, {text: " 同时为"}, {text: "1.21.9", color: "green"}, {text: "及以上版本添加了每种方块的精灵图提示。"}]
