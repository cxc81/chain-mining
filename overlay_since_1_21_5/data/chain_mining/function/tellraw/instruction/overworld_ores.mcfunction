function chain_mining:tellraw/separate_line
tellraw @s [{"text": "", "color": "gold"}, {"translate": "chain_mining.message.data_pack.title", "fallback": "连锁采集数据包", "bold": true}, " - 使用说明 (主世界矿石)"]
tellraw @s [{"text": " ", "color": "aqua"}, "1. 支持", {"translate": "chain_mining.message.instruction.these_blocks", "fallback": "[这%s种方块]", "with": ["9"], "color": "green", "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.message.instruction.ores.all_blocks", "fallback": "煤矿石、铜矿石、铁矿石、青金石矿石、红石矿石、金矿石、钻石矿石、绿宝石矿石和紫水晶簇"}}}, "以及前", {"text": "8", "color": "green"}, "种方块的深层变种；"]
tellraw @s [{"text": " ", "color": "aqua"}, "2. 必须使用正确的镐挖掘，才能触发连锁。"]
tellraw @s [{"text": " ", "color": "aqua"}, "更多使用说明：", {"text": "[总说明]", "color": "green", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 2"}, "hover_event": {"action": "show_text", "value": {"text": "点击查看！", "color": "yellow"}}}, " ", {"text": "[下界矿石]", "color": "green", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 200"}, "hover_event": {"action": "show_text", "value": {"text": "点击查看！", "color": "yellow"}}}, " ", {"text": "[原木/菌柄]", "color": "green", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 300"}, "hover_event": {"action": "show_text", "value": {"text": "点击查看！", "color": "yellow"}}}, " ", {"text": "[岩石]", "color": "green", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 400"}, "hover_event": {"action": "show_text", "value": {"text": "点击查看！", "color": "yellow"}}}, " ", {"text": "[无硬度作物]", "color": "green", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 500"}, "hover_event": {"action": "show_text", "value": {"text": "点击查看！", "color": "yellow"}}}, " ", {"text": "[有硬度作物]", "color": "green", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 600"}, "hover_event": {"action": "show_text", "value": {"text": "点击查看！", "color": "yellow"}}}]
function chain_mining:tellraw/instruction/see_also
function chain_mining:tellraw/separate_line
