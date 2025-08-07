function chain_mining:tellraw/separate_line
tellraw @s [{"text": "", "color": "gold"}, {"translate": "chain_mining.message.data_pack.title", "fallback": "连锁采集数据包", "bold": true}, " - ", {"translate": "chain_mining.message.unload.title", "fallback": "卸载"}]
tellraw @s [{"text": " ", "color": "green"}, {"translate": "chain_mining.message.unload_success.line1", "fallback": "卸载完成！已成功删除相关的记分板和命令存储！"}]
tellraw @s [{"text": " ", "color": "yellow"}, {"translate": "chain_mining.message.unload_success.line2", "fallback": "在重新加载世界前，请将此数据包从世界文件夹中移除！"}]
tellraw @s [{"text": " ", "color": "gray"}, {"translate": "chain_mining.message.unload_success.line3", "fallback": "提示：你也可以先使用%s命令禁用此数据包。", "with": [{"text": "/datapack disable", "underlined": true, "clickEvent": {"action": "suggest_command", "value": "/datapack disable "}, "click_event": {"action": "suggest_command", "command": "/datapack disable "}}]}]
function chain_mining:tellraw/separate_line
