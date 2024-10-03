function mine:tellraw/separate_line
tellraw @s [{"text":"","color":"gold"},{"text":"连锁采集数据包","bold":true}," - 使用说明 (原木/菌柄)"]
tellraw @s [{"text":" ","color":"aqua"},"1. 支持采集",{"text":"[这11种方块]","color":"green","hoverEvent":{"action":"show_text","value":"橡木原木、云杉原木、白桦原木、丛林原木、金合欢原木、深色橡木原木、红树原木、红树根、樱花原木、绯红菌柄和诡异菌柄"}},"；"]
tellraw @s [{"text":" ","color":"aqua"},"2. 必须使用斧采集，才能触发连锁；"]
tellraw @s [{"text":" ","color":"aqua"},"3. 对于原木，若副手持有精准采集或时运工具，还会采集",{"text":"5×4×5","color":"green"},"范围的树叶；"]
tellraw @s [{"text":" ","color":"aqua"},"4. 对于菌柄，若副手持有锄，还会采集",{"text":"5×4×5","color":"green"},"的对应疣块和菌光体；"]
tellraw @s [{"text":" ","color":"aqua"},"5. 红树根可以和红树原木一起连锁。"]
tellraw @s [{"text":" ","color":"aqua"},"更多使用说明：",{"text":"[总说明]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 2"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}," ",{"text":"[矿石]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 101"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}," ",{"text":"[类石头]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 103"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}," ",{"text":"[荧石]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 104"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}," ",{"text":"[农作物1]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 105"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}," ",{"text":"[农作物2]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 106"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}]
function mine:tellraw/instruction/see_also
function mine:tellraw/separate_line
