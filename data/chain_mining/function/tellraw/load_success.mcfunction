# 效果：连锁采集数据包已加载！ [设置] [使用说明] [更新日志]
tellraw @s [{"translate": "chain_mining.message.load_success", "color": "gold", "fallback": "连锁采集数据包已加载！"}, " ", \
    {"translate": "chain_mining.button.settings", "color": "green", "fallback": "[设置]", "clickEvent": {"action": "run_command", "value": "/trigger chain_mining_trigger set 1"}, "hoverEvent": {"action": "show_text", "contents": {"translate": "chain_mining.button.settings.description", "color": "yellow", "fallback": "点击查看！"}}}, " ", \
    {"translate": "chain_mining.button.instruction", "color": "green", "fallback": "[使用说明]", "clickEvent": {"action": "run_command", "value": "/trigger chain_mining_trigger set 2"}, "hoverEvent": {"action": "show_text", "contents": {"translate": "chain_mining.button.instruction.description", "color": "yellow", "fallback": "点击查看！"}}}, " ", \
    {"translate": "chain_mining.button.changelog", "color": "green", "fallback": "[更新日志]", "clickEvent":{"action": "run_command", "value": "/trigger chain_mining_trigger set 3"}, "hoverEvent": {"action": "show_text", "contents": {"translate": "chain_mining.button.changelog.description", "color": "yellow", "fallback": "点击查看！"}}}]
