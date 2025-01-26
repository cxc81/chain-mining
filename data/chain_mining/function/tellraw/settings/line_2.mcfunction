# @arguments
#   text1, color1, prompt1, value1,
#   text2, color2, prompt2, value2
# 原木/菌柄 & 岩石
$tellraw @s [{"text": " ", "color": "aqua"}, "3. ", {"translate": "chain_mining.setting.logs", "fallback": "原木/菌柄："}, {"text": "[$(text1)]", "color": "$(color1)", "clickEvent": {"action": "run_command", "value": "/trigger chain_mining_trigger set $(value1)"}, "hoverEvent": {"action": "show_text", "contents": {"text": "点击$(prompt1)！", "color": "yellow"}}}, "            ", "4. ", {"translate": "chain_mining.setting.rocks", "fallback": "岩石：", "hoverEvent": {"action": "show_text", "contents": {"text": "安山岩、闪长岩、花岗岩、凝灰岩、方解石、紫水晶块和岩浆块"}}}, {"text": "[$(text2)]", "color": "$(color2)", "clickEvent": {"action": "run_command", "value": "/trigger chain_mining_trigger set $(value2)"}, "hoverEvent": {"action": "show_text", "contents": [{"text": "点击$(prompt2)！", "color": "yellow"}, {"text": "(强烈不建议开启！)", "color": "red"}]}}]
