function chain_mining:tellraw/separate_line
tellraw @s [{"text": "", "color": "gold"}, {"translate": "chain_mining.message.data_pack.title", "fallback": "连锁采集数据包", "bold": true}, " - ", {"translate": "chain_mining.message.instruction.title", "fallback": "使用说明"}]
tellraw @s [{"text": " 1. ", "color": "aqua"}, {"translate": "chain_mining.message.instruction.main.line1", "fallback": "数据包版本：%s  (Minecraft版本：%s)", "with": [{"nbt": "data.data_version_str", "storage": "chain_mining:data", "color": "green"}, {"nbt": "data.supported_minecraft_versions_str", "storage": "chain_mining:data", "color": "green"}]}]
tellraw @s [{"text": " 2. ", "color": "aqua"}, {"translate": "chain_mining.message.instruction.main.line2", "fallback": "支持采集所有矿石、原木、菌柄、岩石和农作物；"}]
tellraw @s [{"text": " 3. ", "color": "aqua"}, {"translate": "chain_mining.message.instruction.main.line3", "fallback": "若方块具有硬度且使用了工具，会自动扣除耐久（直到工具损毁），不过魔咒能够生效；"}]
tellraw @s [{"text": " 4. ", "color": "aqua"}, {"translate": "chain_mining.message.instruction.main.line4", "fallback": "如果不希望触发连锁，可以保持潜行；"}]
tellraw @s [{"text": " 5. ", "color": "aqua"}, {"translate": "chain_mining.message.instruction.main.line5", "fallback": "点击下方设置来控制各类连锁的开关。"}]
tellraw @s [{"text": " ", "color": "aqua"}, {"translate": "chain_mining.message.instruction.more_instructions", "fallback": "更多使用说明：%s %s %s %s %s %s", "with": [{"translate": "chain_mining.button.overworld_ores", "fallback": "[主世界矿石]", "color": "green", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 100"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_view", "fallback": "点击查看！", "color": "yellow"}}}, {"translate": "chain_mining.button.nether_ores", "fallback": "[下界矿石]", "color": "green", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 200"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_view", "fallback": "点击查看！", "color": "yellow"}}}, {"translate": "chain_mining.button.logs", "fallback": "[原木/菌柄]", "color": "green", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 300"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_view", "fallback": "点击查看！", "color": "yellow"}}}, {"translate": "chain_mining.button.rocks", "fallback": "[岩石]", "color": "green", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 400"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_view", "fallback": "点击查看！", "color": "yellow"}}}, {"translate": "chain_mining.button.crops_no_hardness", "fallback": "[无硬度作物]", "color": "green", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 500"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_view", "fallback": "点击查看！", "color": "yellow"}}}, {"translate": "chain_mining.button.crops_with_hardness", "fallback": "[有硬度作物]", "color": "green", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 600"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_view", "fallback": "点击查看！", "color": "yellow"}}}]}]
function chain_mining:tellraw/instruction/see_also
function chain_mining:tellraw/separate_line
