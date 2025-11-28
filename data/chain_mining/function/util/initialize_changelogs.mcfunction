# 此函数向命令存储中初始化了更新日志中的每行文本
# 为了兼容1.20.5 - 1.21.4，以NBT书写文本组件时，不能出现布尔值、异构列表或\n
data modify storage chain_mining:data data.changelog_lines set value []

data modify storage chain_mining:data data.changelog_lines append value [{text: "  ", color: "yellow"}, {text: "·", color: "light_purple"}, {text: " 连锁逻辑"}]
data modify storage chain_mining:data data.changelog_lines append value [{text: "     ", color: "aqua"}, {text: "·", color: "light_purple"}, {text: " 提升了连锁树叶类方块时的检查效率。"}]
data modify storage chain_mining:data data.changelog_lines append value [{text: "        ", color: "aqua"}, {text: "·", color: "light_purple"}, {text: " 之前：检查以原木方块顶面中心为中心的"}, {text: "5×4×5", color: "green"}, {text: "区域"}]
data modify storage chain_mining:data data.changelog_lines append value [{text: "        ", color: "aqua"}, {text: "·", color: "light_purple"}, {text: " 当前：检查原木顶面中心的"}, {text: "5×2×5", color: "green"}, {text: "区域，再加上方一层"}, {text: "3×3", color: "green"}, {text: "区域"}]
data modify storage chain_mining:data data.changelog_lines append value [{text: "     ", color: "aqua"}, {text: "·", color: "light_purple"}, {text: " 略微提升了连锁红树根时的检查效率。"}]
data modify storage chain_mining:data data.changelog_lines append value [{text: "     ", color: "aqua"}, {text: "·", color: "light_purple"}, {text: " 统一了连锁各类方块时的遍历顺序，按优先级分别是："}]
data modify storage chain_mining:data data.changelog_lines append value [{text: "        ", color: "aqua"}, {text: "·", color: "light_purple"}, {text: " 1. Y坐标偏移量：从高到低"}]
data modify storage chain_mining:data data.changelog_lines append value [{text: "        ", color: "aqua"}, {text: "·", color: "light_purple"}, {text: " 2. X坐标偏移量：按"}, {text: "[0, -1, 1, -2, 2]", color: "green"}, {text: "的顺序"}]
data modify storage chain_mining:data data.changelog_lines append value [{text: "        ", color: "aqua"}, {text: "·", color: "light_purple"}, {text: " 3. Z坐标偏移量：按"}, {text: "[0, -1, 1, -2, 2]", color: "green"}, {text: "的顺序"}]
