# @arguments
#   button_key: on/off
#   button_fallback: [开]/[关]
#   button_color: green/red
#   trigger_value: x / x+1
#   hover_key: disable/enable
#   hover_fallback: 关闭/开启
# 主世界矿石 & 下界矿石
$tellraw @s [{"text": " ", "color": "aqua"}, "1. ", {"translate": "chain_mining.setting.overworld_ores", "fallback": "主世界矿石："}, {"translate": "chain_mining.button.$(button_key1)", "fallback": "[$(button_fallback1)]", "color": "$(button_color1)", "clickEvent": {"action": "run_command", "value": "/trigger chain_mining_trigger set $(trigger_value1)"}, "hoverEvent": {"action": "show_text", "contents": {"translate": "chain_mining.button.hover.click_to_$(hover_key1)", "fallback": "点击$(hover_fallback1)！", "color": "yellow"}}}, "           ", "2. ", {"translate": "chain_mining.setting.nether_ores", "fallback": "下界矿石："}, {"translate": "chain_mining.button.$(button_key2)", "fallback": "[$(button_fallback2)]", "color": "$(button_color2)", "clickEvent": {"action": "run_command", "value": "/trigger chain_mining_trigger set $(trigger_value2)"}, "hoverEvent": {"action": "show_text", "contents": {"translate": "chain_mining.button.hover.click_to_$(hover_key2)", "fallback": "点击$(hover_fallback2)！", "color": "yellow"}}}]
