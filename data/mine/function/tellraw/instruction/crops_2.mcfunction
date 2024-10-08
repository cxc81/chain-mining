function mine:tellraw/separate_line
tellraw @s [{"text":"","color":"gold"},{"text":"连锁采集数据包","bold":true}," - 使用说明 (农作物2)"]
tellraw @s [{"text":" ","color":"aqua"},"1. 支持",{"text":"[这4种方块]","color":"green","hoverEvent":{"action":"show_text","value":"南瓜、西瓜、可可果和仙人掌"}},"；"]
tellraw @s [{"text":" ","color":"aqua"},"2. 除了仙人掌外，必须使用斧才能触发连锁采集；"]
tellraw @s [{"text":" ","color":"aqua"},"3. 南瓜茎、西瓜茎和最底部的仙人掌均不会被连锁采集；"]
tellraw @s [{"text":" ","color":"aqua"},"4. 可可果在连锁采集后会自动补种。"]
tellraw @s [{"text":" ","color":"aqua"},"更多使用说明：",{"text":"[总说明]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 2"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}," ",{"text":"[矿石]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 101"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}," ",{"text":"[原木/菌柄]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 102"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}," ",{"text":"[类石头]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 103"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}," ",{"text":"[荧石]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 104"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}," ",{"text":"[农作物1]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 105"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}]
function mine:tellraw/instruction/see_also
function mine:tellraw/separate_line
