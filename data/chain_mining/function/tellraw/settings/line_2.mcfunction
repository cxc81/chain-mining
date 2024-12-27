# 原木/菌柄 & 岩石
# 所传入的参数：
#   text1, color1, prompt1, value1,
#   text2, color2, prompt2, value2
$tellraw @s [" ",{"text":"3. 原木/菌柄： ","color":"aqua"},{"text":"[$(text1)]","color":"$(color1)","clickEvent":{"action":"run_command","value":"/trigger chain_mining_trigger set $(value1)"},"hoverEvent":{"action":"show_text","value":{"text":"点击$(prompt1)！","color":"yellow"}}},"            ",{"text":"4. ","color":"aqua"},{"text":"岩石","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"安山岩、闪长岩、花岗岩、凝灰岩、方解石、紫水晶块和岩浆块"}}},{"text":"： ","color":"aqua"},{"text":"[$(text2)]","color":"$(color2)","clickEvent":{"action":"run_command","value":"/trigger chain_mining_trigger set $(value2)"},"hoverEvent":{"action":"show_text","value":["",{"text":"点击$(prompt2)！","color":"yellow"},{"text":"(强烈不建议开启！)","color":"red"}]}}]
