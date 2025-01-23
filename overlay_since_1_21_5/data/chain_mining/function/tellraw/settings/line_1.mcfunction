# 主世界矿石 & 下界矿石
# 所传入的参数：
#   text1, color1, prompt1, value1,
#   text2, color2, prompt2, value2
$tellraw @s [" ", {"text": "1. 主世界矿石： ", "color": "aqua"}, {"text": "[$(text1)]", "color": "$(color1)", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set $(value1)"}, "hover_event": {"action": "show_text", "value": {"text": "点击$(prompt1)！", "color": "yellow"}}}, "           ", {"text": "2. 下界矿石： ", "color": "aqua"}, {"text": "[$(text2)]", "color": "$(color2)", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set $(value2)"}, "hover_event": {"action": "show_text", "value": {"text": "点击$(prompt2)！", "color": "yellow"}}}]
