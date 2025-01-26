# @arguments
#   text1, color1, prompt1, value1,
#   text2, color2, prompt2, value2
# 主世界矿石 & 下界矿石
$tellraw @s [{"text": " ", "color": "aqua"}, "1. ", {"translate": "chain_mining.setting.overworld_ores", "fallback": "主世界矿石："}, {"text": "[$(text1)]", "color": "$(color1)", "clickEvent": {"action": "run_command", "value": "/trigger chain_mining_trigger set $(value1)"}, "hoverEvent": {"action": "show_text", "contents": {"text": "点击$(prompt1)！", "color": "yellow"}}}, "           ", "2. ", {"translate": "chain_mining.setting.nether_ores", "fallback": "下界矿石："}, {"text": "[$(text2)]", "color": "$(color2)", "clickEvent": {"action": "run_command", "value": "/trigger chain_mining_trigger set $(value2)"}, "hoverEvent": {"action": "show_text", "contents": {"text": "点击$(prompt2)！", "color": "yellow"}}}]
