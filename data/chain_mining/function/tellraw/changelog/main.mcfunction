function chain_mining:tellraw/separate_line
tellraw @s [{"text": "", "color": "gold"}, {"translate": "chain_mining.message.data_pack.title", "fallback": "连锁采集数据包", "bold": true}, " - ", {"translate": "chain_mining.message.changelog.title", "fallback": "更新日志"}]
tellraw @s [{"text": " ", "color": "aqua"}, {"translate": "chain_mining.message.changelog.versions", "fallback": "数据包版本：%s  (Minecraft版本：%s)", "with": [{"nbt": "data.data_version_str", "storage": "chain_mining:data", "color": "green"}, {"nbt": "data.supported_minecraft_versions_str", "storage": "chain_mining:data", "color": "green"}]}]
tellraw @s [{"text": " ", "color": "aqua"}, {"translate": "chain_mining.message.changelog.contents", "fallback": "更新内容："}]
function chain_mining:tellraw/changelog/changes
function chain_mining:tellraw/changelog/see_also
function chain_mining:tellraw/separate_line
