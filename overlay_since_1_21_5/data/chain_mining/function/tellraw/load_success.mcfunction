# 效果：连锁采集数据包已加载！ [设置] [使用说明] [更新日志]
tellraw @s [{"translate": "chain_mining.message.load_success", "color": "gold", "fallback": "连锁采集数据包已加载！ %s %s %s", "with": [{"translate": "chain_mining.button.settings", "color": "green", "fallback": "[设置]", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 1"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_view", "color": "yellow", "fallback": "点击查看！"}}}, {"translate": "chain_mining.button.instruction", "color": "green", "fallback": "[使用说明]", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 2"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_view", "color": "yellow", "fallback": "点击查看！"}}}, {"translate": "chain_mining.button.changelog", "color": "green", "fallback": "[更新日志]", "click_event":{"action": "run_command", "command": "/trigger chain_mining_trigger set 3"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_view", "color": "yellow", "fallback": "点击查看！"}}}]}]
