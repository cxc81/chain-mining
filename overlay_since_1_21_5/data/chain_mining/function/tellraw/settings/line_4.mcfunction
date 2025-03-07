# @arguments
#   button_key: on/off
#   button_fallback: [开]/[关]
#   button_color: green/red
#   trigger_value: x / x+1
#   hover_key: disable/enable
#   hover_fallback: 关闭/开启
# 掉落物传送
$tellraw @s [{"text": " ", "color": "aqua"}, "7. ", {"translate": "chain_mining.setting.loot", "fallback": "掉落物传送：", "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.setting.loot.hover", "fallback": "开启时，连锁采集的掉落物将会自动传送到你所站的位置。"}}}, {"translate": "chain_mining.button.$(button_key1)", "fallback": "[$(button_fallback1)]", "color": "$(button_color1)", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set $(trigger_value1)"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_$(hover_key1)", "fallback": "点击$(hover_fallback1)！", "color": "yellow"}}}, "           ", "8. ", {"translate": "chain_mining.setting.uninstall", "fallback": "卸载数据包："}, {"translate": "chain_mining.button.uninstall", "fallback": "[卸载]", "color": "green", "click_event": {"action": "run_command", "command": "/function chain_mining:control/player/unload_warning"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.uninstall.hover", "fallback": "点击卸载此数据包！（需要足够的权限）", "color": "yellow"}}}]
