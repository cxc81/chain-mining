tellraw @s [{"translate": "chain_mining.message.automatically_upgrade.line1", "fallback": "提示：这个世界此前使用了旧版的连锁采集数据包！", "color": "yellow"}]
tellraw @s [{"translate": "chain_mining.message.automatically_upgrade.line2", "fallback": "上次安装的版本：%s", "color": "aqua", "with": [{"nbt": "data.last_data_version_str", "storage": "chain_mining:data", "interpret": true, "color": "green"}]}]
