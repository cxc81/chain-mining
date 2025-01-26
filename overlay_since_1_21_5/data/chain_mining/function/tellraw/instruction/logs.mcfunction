function chain_mining:tellraw/separate_line
tellraw @s [{"text": "", "color": "gold"}, {"translate": "chain_mining.message.data_pack.title", "fallback": "连锁采集数据包", "bold": true}, " - 使用说明 (原木/菌柄)"]
tellraw @s [{"text": " ", "color": "aqua"}, "1. ", {"translate": "chain_mining.message.instruction.supported_blocks", "fallback": "支持%s；", "with": [{"translate": "chain_mining.message.instruction.these_blocks", "fallback": "[这%s种方块]", "with": ["12"], "color": "green", "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.message.instruction.logs.hover", "fallback": "橡木原木、云杉原木、白桦原木、丛林原木、金合欢原木、深色橡木原木、红树原木、红树根、樱花原木、苍白橡木原木、绯红菌柄和诡异菌柄"}}}]}]
tellraw @s [{"text": " ", "color": "aqua"}, "2. 必须使用斧采集，才能触发连锁；"]
tellraw @s [{"text": " ", "color": "aqua"}, "3. 若副手持有锄，还会采集", {"text": "5×4×5", "color": "green"}, "范围的对应树叶、疣块和菌光体；"]
tellraw @s [{"text": " ", "color": "aqua"}, "4. 红树根可以和红树原木一起连锁。"]
tellraw @s [{"text": " ", "color": "aqua"}, "更多使用说明：", {"translate": "chain_mining.button.general_instruction", "fallback": "[总说明]", "color": "green", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 2"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_view", "fallback": "点击查看！", "color": "yellow"}}}, " ", {"translate": "chain_mining.button.overworld_ores", "fallback": "[主世界矿石]", "color": "green", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 100"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_view", "fallback": "点击查看！", "color": "yellow"}}}, " ", {"translate": "chain_mining.button.nether_ores", "fallback": "[下界矿石]", "color": "green", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 200"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_view", "fallback": "点击查看！", "color": "yellow"}}}, " ", {"translate": "chain_mining.button.rocks", "fallback": "[岩石]", "color": "green", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 400"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_view", "fallback": "点击查看！", "color": "yellow"}}}, " ", {"translate": "chain_mining.button.crops_no_hardness", "fallback": "[无硬度作物]", "color": "green", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 500"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_view", "fallback": "点击查看！", "color": "yellow"}}}, " ", {"translate": "chain_mining.button.crops_with_hardness", "fallback": "[有硬度作物]", "color": "green", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 600"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_view", "fallback": "点击查看！", "color": "yellow"}}}]
function chain_mining:tellraw/instruction/see_also
function chain_mining:tellraw/separate_line
