function chain_mining:tellraw/separate_line
tellraw @s [{"text": "", "color": "gold"}, {"translate": "chain_mining.message.data_pack.title", "fallback": "连锁采集数据包", "bold": true}, " - ", {"translate": "chain_mining.message.unload.title", "fallback": "卸载"}]
tellraw @s [{"text": " ", "color": "aqua"}, {"translate": "chain_mining.message.unload_prompt.line1", "fallback": "你正在试图%s连锁采集数据包！", "with": [{"translate": "chain_mining.message.unload_prompt.line1.arg1", "fallback": "卸载", "color": "red", "bold": true}]}]
tellraw @s [{"text": " ", "color": "green"}, {"translate": "chain_mining.message.unload_prompt.line2", "fallback": "请在聊天框中输入%s以确认卸载！", "with": [{"text": "/trigger chain_mining_confirm_unload", "color": "yellow", "underlined": true, "clickEvent": {"action": "suggest_command", "value": "/trigger chain_mining_confirm_unload"}, "click_event": {"action": "suggest_command", "command": "/trigger chain_mining_confirm_unload"}}]}]
tellraw @s [{"text": " ", "color": "aqua"}, {"translate": "chain_mining.message.unload_prompt.line3", "fallback": "此命令在30秒内输入，方为有效。"}]
tellraw @s [{"text": " ", "color": "gray"}, {"translate": "chain_mining.message.unload_prompt.line4", "fallback": "提示：此次操作的目的是删除相关记分板和命令存储。"}]
function chain_mining:tellraw/separate_line
