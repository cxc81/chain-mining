# 无硬度作物 & 有硬度作物
# 所传入的参数：
#   text1, color1, prompt1, value1,
#   text2, color2, prompt2, value2
$tellraw @s [" ", {"text": "5. ", "color": "aqua"}, {"text": "无硬度作物", "color": "aqua", "hover_event": {"action": "show_text", "value": {"text": "小麦、胡萝卜、马铃薯、甜菜根、下界疣、甘蔗、甜浆果丛和树脂团"}}}, {"text": "： ", "color": "aqua"}, {"text": "[$(text1)]", "color": "$(color1)", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set $(value1)"}, "hover_event": {"action": "show_text", "value": {"text": "点击$(prompt1)！", "color": "yellow"}}}, "           ", {"text": "6. ", "color": "aqua"}, {"text": "有硬度作物", "color": "aqua", "hover_event": {"action": "show_text", "value": {"text": "南瓜、西瓜、可可果和仙人掌"}}}, {"text": "： ", "color": "aqua"}, {"text": "[$(text2)]", "color": "$(color2)", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set $(value2)"}, "hover_event": {"action": "show_text", "value": {"text": "点击$(prompt2)！", "color": "yellow"}}}]
