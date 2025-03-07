# @arguments
#   button_key: on/off
#   button_fallback: [开]/[关]
#   button_color: green/red
#   trigger_value: x / x+1
#   hover_key: disable/enable
#   hover_fallback: 关闭/开启
# 软作物 & 硬作物
$tellraw @s [{"text": " ", "color": "aqua"}, "5. ", {"translate": "chain_mining.setting.soft_crops", "fallback": "软作物：", "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.message.instruction.soft_crops.hover", "fallback": "小麦、胡萝卜、马铃薯、甜菜根、下界疣、甘蔗、甜浆果丛和树脂团"}}}, {"translate": "chain_mining.button.$(button_key1)", "fallback": "[$(button_fallback1)]", "color": "$(button_color1)", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set $(trigger_value1)"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_$(hover_key1)", "fallback": "点击$(hover_fallback1)！", "color": "yellow"}}}, "           ", "6. ", {"translate": "chain_mining.setting.hard_crops", "fallback": "硬作物：", "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.message.instruction.hard_crops.hover", "fallback": "南瓜、西瓜、可可果和仙人掌"}}}, {"translate": "chain_mining.button.$(button_key2)", "fallback": "[$(button_fallback2)]", "color": "$(button_color2)", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set $(trigger_value2)"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_$(hover_key2)", "fallback": "点击$(hover_fallback2)！", "color": "yellow"}}}]
