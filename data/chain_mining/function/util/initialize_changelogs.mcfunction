# 此函数向命令存储中初始化了更新日志中的每行文本
# 为了兼容1.20.5 - 1.21.4，以NBT书写文本组件时，不能出现布尔值、异构列表或\n
data modify storage chain_mining:data data.changelog_lines set value []

data modify storage chain_mining:data data.changelog_lines append value [{text: "  ", color: "yellow"}, {text: "·", color: "light_purple"}, {text: " 界面"}]
data modify storage chain_mining:data data.changelog_lines append value [{text: "     ", color: "aqua"}, {text: "·", color: "light_purple"}, {text: " 为"}, {text: "1.21.6", color: "green"}, {text: "及以上版本添加了一个对话框形式的主菜单。"}]
data modify storage chain_mining:data data.changelog_lines append value [{text: "        ", color: "aqua"}, {text: "·", color: "light_purple"}, {text: " 默认可通过"}, {text: "G", color: "green"}, {text: "键呼出。"}]
data modify storage chain_mining:data data.changelog_lines append value [{text: "        ", color: "aqua"}, {text: "·", color: "light_purple"}, {text: " 这是为未来版本添加对话框菜单做准备。"}]
data modify storage chain_mining:data data.changelog_lines append value [{text: "  ", color: "yellow"}, {text: "·", color: "light_purple"}, {text: " 技术性"}]
data modify storage chain_mining:data data.changelog_lines append value [{text: "     ", color: "aqua"}, {text: "·", color: "light_purple"}, {text: " 为"}, {text: "1.21.11", color: "green"}, {text: "及以上版本适配了所有矛物品。"}]
data modify storage chain_mining:data data.changelog_lines append value [{text: "        ", color: "aqua"}, {text: "·", color: "light_purple"}, {text: " 通常情况下矛不可用于挖掘方块，但可通过命令修改相关组件来实现。"}]
data modify storage chain_mining:data data.changelog_lines append value [{text: "  ", color: "yellow"}, {text: "·", color: "light_purple"}, {text: " 修复"}]
data modify storage chain_mining:data data.changelog_lines append value [{text: "     ", color: "aqua"}, {text: "·", color: "light_purple"}, {text: " 修复了剪刀在连锁无硬度方块时，不会消耗耐久度的问题。"}]
