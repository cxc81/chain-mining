# 掉落物传送
# 所传入的参数：
#   text1, color1, prompt1, value1
$tellraw @s [{"text": " ", "color": "aqua"}, "7. ", {"translate": "chain_mining.setting.loot", "fallback": "掉落物传送：", "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.setting.loot.hover", "fallback": "开启时，连锁采集的掉落物将会自动传送到你所站的位置。"}}}, {"text": "[$(text1)]", "color": "$(color1)", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set $(value1)"}, "hover_event": {"action": "show_text", "value": {"text": "点击$(prompt1)！", "color": "yellow"}}}, "           ", "8. ", {"translate": "chain_mining.setting.uninstall", "fallback": "卸载数据包："}, {"translate": "chain_mining.button.uninstall", "fallback": "[卸载]", "color": "green", "click_event": {"action": "run_command", "command": "/function chain_mining:control/player/unload_warning"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.uninstall.hover", "fallback": "点击卸载此数据包！（需要足够的权限）", "color": "yellow"}}}]
