function chain_mining:tellraw/separate_line
tellraw @s [{"text": "", "color": "gold"}, {"translate": "chain_mining.message.data_pack.title", "fallback": "连锁采集数据包", "bold": true}, " - ", {"translate": "chain_mining.message.instruction.crops_no_hardness.title", "fallback": "使用说明 (无硬度作物)"}]
tellraw @s [{"text": " ", "color": "aqua"}, "1. ", {"translate": "chain_mining.message.instruction.supported_blocks", "fallback": "支持%s；", "with": [{"translate": "chain_mining.message.instruction.these_blocks", "fallback": "[这%s种方块]", "with": ["8"], "color": "green", "hoverEvent": {"action": "show_text", "contents": {"translate": "chain_mining.message.instruction.crops_no_hardness.hover", "fallback": "小麦、胡萝卜、马铃薯、甜菜根、下界疣、甘蔗、甜浆果丛和树脂团"}}}]}]
tellraw @s [{"text": " 2. ", "color": "aqua"}, {"translate": "chain_mining.message.instruction.crops_no_hardness.line2", "fallback": "只有成熟的作物才能连锁，且对于大部分作物，采集后自动补种；"}]
tellraw @s [{"text": " 3. ", "color": "aqua"}, {"translate": "chain_mining.message.instruction.crops_no_hardness.line3", "fallback": "使用工具%s消耗耐久，且工具上的时运魔咒能生效；", "with": [{"translate": "chain_mining.message.instruction.crops_no_hardness.line3.arg1", "fallback": "不会", "color": "yellow", "bold": true}]}]
tellraw @s [{"text": " 4. ", "color": "aqua"}, {"translate": "chain_mining.message.instruction.crops_no_hardness.line4", "fallback": "对于甘蔗，最底部的不会自动采集。"}]
tellraw @s [{"text": " ", "color": "aqua"}, {"translate": "chain_mining.message.instruction.more_instructions", "fallback": "更多使用说明：%s %s %s %s %s %s", "with": [{"translate": "chain_mining.button.general_instruction", "fallback": "[总说明]", "color": "green", "clickEvent": {"action": "run_command", "value": "/trigger chain_mining_trigger set 2"}, "hoverEvent": {"action": "show_text", "contents": {"translate": "chain_mining.button.hover.click_to_view", "fallback": "点击查看！", "color": "yellow"}}}, {"translate": "chain_mining.button.overworld_ores", "fallback": "[主世界矿石]", "color": "green", "clickEvent": {"action": "run_command", "value": "/trigger chain_mining_trigger set 100"}, "hoverEvent": {"action": "show_text", "contents": {"translate": "chain_mining.button.hover.click_to_view", "fallback": "点击查看！", "color": "yellow"}}}, {"translate": "chain_mining.button.nether_ores", "fallback": "[下界矿石]", "color": "green", "clickEvent": {"action": "run_command", "value": "/trigger chain_mining_trigger set 200"}, "hoverEvent": {"action": "show_text", "contents": {"translate": "chain_mining.button.hover.click_to_view", "fallback": "点击查看！", "color": "yellow"}}}, {"translate": "chain_mining.button.logs", "fallback": "[原木/菌柄]", "color": "green", "clickEvent": {"action": "run_command", "value": "/trigger chain_mining_trigger set 300"}, "hoverEvent": {"action": "show_text", "contents": {"translate": "chain_mining.button.hover.click_to_view", "fallback": "点击查看！", "color": "yellow"}}}, {"translate": "chain_mining.button.rocks", "fallback": "[岩石]", "color": "green", "clickEvent": {"action": "run_command", "value": "/trigger chain_mining_trigger set 400"}, "hoverEvent": {"action": "show_text", "contents": {"translate": "chain_mining.button.hover.click_to_view", "fallback": "点击查看！", "color": "yellow"}}}, {"translate": "chain_mining.button.crops_with_hardness", "fallback": "[有硬度作物]", "color": "green", "clickEvent": {"action": "run_command", "value": "/trigger chain_mining_trigger set 600"}, "hoverEvent": {"action": "show_text", "contents": {"translate": "chain_mining.button.hover.click_to_view", "fallback": "点击查看！", "color": "yellow"}}}]}]
function chain_mining:tellraw/instruction/see_also
function chain_mining:tellraw/separate_line
