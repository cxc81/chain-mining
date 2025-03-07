# @arguments
#   button_key: on/off
#   button_fallback: [开]/[关]
#   button_color: green/red
#   trigger_value: x / x+1
#   hover_key: disable/enable
#   hover_fallback: 关闭/开启
# 原木/菌柄 & 岩石
$tellraw @s [{"text": " ", "color": "aqua"}, "3. ", {"translate": "chain_mining.setting.logs", "fallback": "原木/菌柄："}, {"translate": "chain_mining.button.$(button_key1)", "fallback": "[$(button_fallback1)]", "color": "$(button_color1)", "clickEvent": {"action": "run_command", "value": "/trigger chain_mining_trigger set $(trigger_value1)"}, "hoverEvent": {"action": "show_text", "contents": {"translate": "chain_mining.button.hover.click_to_$(hover_key1)", "fallback": "点击$(hover_fallback1)！", "color": "yellow"}}}, "            ", "4. ", {"translate": "chain_mining.setting.rocks", "fallback": "岩石：", "hoverEvent": {"action": "show_text", "contents": {"translate": "chain_mining.message.instruction.rocks.hover", "fallback": "安山岩、闪长岩、花岗岩、凝灰岩、方解石、紫水晶块和岩浆块"}}}, {"translate": "chain_mining.button.$(button_key2)", "fallback": "[$(button_fallback2)]", "color": "$(button_color2)", "clickEvent": {"action": "run_command", "value": "/trigger chain_mining_trigger set $(trigger_value2)"}, "hoverEvent": {"action": "show_text", "contents": [{"translate": "chain_mining.button.hover.click_to_$(hover_key2)", "fallback": "点击$(hover_fallback2)！", "color": "yellow"}, {"translate": "chain_mining.button.hover.not_recommended", "fallback": "(强烈不建议开启！)", "color": "red"}]}}]
