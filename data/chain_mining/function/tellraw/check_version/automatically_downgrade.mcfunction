tellraw @s [{"translate": "chain_mining.message.automatically_downgrade.line1", "fallback": "警告：这个世界此前使用了更新版本的连锁采集数据包！", "color": "red"}]
tellraw @s [{"translate": "chain_mining.message.automatically_downgrade.line2", "fallback": "上次安装的版本：%s", "color": "aqua", "with": [{"nbt": "data.last_data_version_str", "storage": "chain_mining:data", "color": "green"}]}]
tellraw @s [{"translate": "chain_mining.message.automatically_downgrade.line3", "fallback": "请当心，有可能会引发问题！", "color": "yellow"}]
