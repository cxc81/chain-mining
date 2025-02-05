function chain_mining:tellraw/separate_line
tellraw @s [{"text": "", "color": "gold"}, {"translate": "chain_mining.message.data_pack.title", "fallback": "连锁采集数据包", "bold": true}, " - ", {"translate": "chain_mining.message.instruction.crops_with_hardness.title", "fallback": "使用说明 (有硬度作物)"}]
tellraw @s [{"text": " 1. ", "color": "aqua"}, {"translate": "chain_mining.message.instruction.supported_blocks", "fallback": "支持%s；", "with": [{"translate": "chain_mining.message.instruction.these_blocks", "fallback": "[这%s种方块]", "with": ["4"], "color": "green", "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.message.instruction.crops_with_hardness.hover", "fallback": "南瓜、西瓜、可可果和仙人掌"}}}]}]
tellraw @s [{"text": " 2. ", "color": "aqua"}, {"translate": "chain_mining.message.instruction.crops_with_hardness.line2", "fallback": "除了仙人掌外，必须使用斧才能触发连锁采集；"}]
tellraw @s [{"text": " 3. ", "color": "aqua"}, {"translate": "chain_mining.message.instruction.crops_with_hardness.line3", "fallback": "南瓜茎、西瓜茎和最底部的仙人掌均不会被连锁采集；"}]
tellraw @s [{"text": " 4. ", "color": "aqua"}, {"translate": "chain_mining.message.instruction.crops_with_hardness.line4", "fallback": "可可果在连锁采集后会自动补种。"}]
tellraw @s [{"text": " ", "color": "aqua"}, {"translate": "chain_mining.message.instruction.more_instructions", "fallback": "更多使用说明：%s %s %s %s %s %s", "with": [{"translate": "chain_mining.button.general_instruction", "fallback": "[总说明]", "color": "green", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 2"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_view", "fallback": "点击查看！", "color": "yellow"}}}, {"translate": "chain_mining.button.overworld_ores", "fallback": "[主世界矿石]", "color": "green", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 100"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_view", "fallback": "点击查看！", "color": "yellow"}}}, {"translate": "chain_mining.button.nether_ores", "fallback": "[下界矿石]", "color": "green", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 200"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_view", "fallback": "点击查看！", "color": "yellow"}}}, {"translate": "chain_mining.button.logs", "fallback": "[原木/菌柄]", "color": "green", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 300"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_view", "fallback": "点击查看！", "color": "yellow"}}}, {"translate": "chain_mining.button.rocks", "fallback": "[岩石]", "color": "green", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 400"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_view", "fallback": "点击查看！", "color": "yellow"}}}, {"translate": "chain_mining.button.crops_no_hardness", "fallback": "[无硬度作物]", "color": "green", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 500"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_view", "fallback": "点击查看！", "color": "yellow"}}}]}]
function chain_mining:tellraw/instruction/see_also
function chain_mining:tellraw/separate_line
