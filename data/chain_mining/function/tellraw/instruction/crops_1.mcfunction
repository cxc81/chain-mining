function chain_mining:tellraw/separate_line
tellraw @s [{"text":"","color":"gold"},{"translate": "chain_mining.message.data_pack.title", "fallback": "连锁采集数据包", "bold": true}," - 使用说明 (农作物1)"]
tellraw @s [{"text":" ","color":"aqua"},"1. 支持",{"translate": "chain_mining.message.instruction.these_blocks", "fallback": "[这%s种方块]", "with": ["7"], "color":"green","hoverEvent":{"action":"show_text","value":"小麦、胡萝卜、马铃薯、甜菜根、下界疣、甘蔗和甜浆果丛"}},"；"]
tellraw @s [{"text":" ","color":"aqua"},"2. 只有成熟的作物才能连锁，且采集后自动补种；"]
tellraw @s [{"text":" ","color":"aqua"},"3. 使用工具",{"text":"不会","color":"yellow","bold":true},"消耗耐久，且工具上的时运魔咒能生效；"]
tellraw @s [{"text":" ","color":"aqua"},"4. 对于甘蔗，最底部的不会自动采集。"]
tellraw @s [{"text":" ","color":"aqua"},"更多使用说明：",{"text":"[总说明]","color":"green","clickEvent":{"action":"run_command","value":"/trigger chain_mining_trigger set 2"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}," ",{"text":"[矿石]","color":"green","clickEvent":{"action":"run_command","value":"/trigger chain_mining_trigger set 101"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}," ",{"text":"[原木/菌柄]","color":"green","clickEvent":{"action":"run_command","value":"/trigger chain_mining_trigger set 102"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}," ",{"text":"[类石头]","color":"green","clickEvent":{"action":"run_command","value":"/trigger chain_mining_trigger set 103"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}," ",{"text":"[荧石]","color":"green","clickEvent":{"action":"run_command","value":"/trigger chain_mining_trigger set 104"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}," ",{"text":"[农作物2]","color":"green","clickEvent":{"action":"run_command","value":"/trigger chain_mining_trigger set 106"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}]
function chain_mining:tellraw/instruction/see_also
function chain_mining:tellraw/separate_line
