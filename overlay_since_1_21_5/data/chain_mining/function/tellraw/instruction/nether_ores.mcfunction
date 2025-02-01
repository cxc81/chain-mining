function chain_mining:tellraw/separate_line
tellraw @s [{"text": "", "color": "gold"}, {"translate": "chain_mining.message.data_pack.title", "fallback": "连锁采集数据包", "bold": true}, " - 使用说明 (下界矿石)"]
tellraw @s [{"text": " 1. ", "color": "aqua"}, {"translate": "chain_mining.message.instruction.supported_blocks", "fallback": "支持%s；", "with": [{"translate": "chain_mining.message.instruction.these_blocks", "fallback": "[这%s种方块]", "with": ["5"], "color": "green", "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.message.instruction.nether_ores.hover", "fallback": "下界石英矿石、下界金矿石、镶金黑石、远古残骸和荧石"}}}]}]
tellraw @s [{"text": " 2. ", "color": "aqua"}, {"translate": "chain_mining.message.instruction.nether_ores.line2", "fallback": "除荧石外，必须使用正确的镐挖掘，才能触发连锁；"}]
tellraw @s [{"text": " 3. ", "color": "aqua"}, {"translate": "chain_mining.message.instruction.nether_ores.line3", "fallback": "采集荧石对工具无要求(但工具上的魔咒能生效)。"}]
tellraw @s [{"text": " ", "color": "aqua"}, {"translate": "chain_mining.message.instruction.more_instructions", "fallback": "更多使用说明：%s %s %s %s %s %s", "with": [{"translate": "chain_mining.button.general_instruction", "fallback": "[总说明]", "color": "green", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 2"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_view", "fallback": "点击查看！", "color": "yellow"}}}, {"translate": "chain_mining.button.overworld_ores", "fallback": "[主世界矿石]", "color": "green", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 100"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_view", "fallback": "点击查看！", "color": "yellow"}}}, {"translate": "chain_mining.button.logs", "fallback": "[原木/菌柄]", "color": "green", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 300"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_view", "fallback": "点击查看！", "color": "yellow"}}}, {"translate": "chain_mining.button.rocks", "fallback": "[岩石]", "color": "green", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 400"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_view", "fallback": "点击查看！", "color": "yellow"}}}, {"translate": "chain_mining.button.crops_no_hardness", "fallback": "[无硬度作物]", "color": "green", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 500"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_view", "fallback": "点击查看！", "color": "yellow"}}}, {"translate": "chain_mining.button.crops_with_hardness", "fallback": "[有硬度作物]", "color": "green", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 600"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_view", "fallback": "点击查看！", "color": "yellow"}}}]}]
function chain_mining:tellraw/instruction/see_also
function chain_mining:tellraw/separate_line
