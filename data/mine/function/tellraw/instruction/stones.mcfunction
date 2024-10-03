function mine:tellraw/separate_line
tellraw @s [{"text":"","color":"gold"},{"text":"连锁采集数据包","bold":true}," - 使用说明 (类石头)"]
tellraw @s [{"text":" ","color":"aqua"},"1. 支持",{"text":"[这7种方块]","color":"green","hoverEvent":{"action":"show_text","contents":"安山岩、闪长岩、花岗岩、凝灰岩、方解石、紫水晶块和岩浆块"}},"；"]
tellraw @s [{"text":" ","color":"aqua"},"2. 必须使用镐挖掘，才能触发连锁；"]
tellraw @s [{"text":" ","color":"aqua"},"3. 除非特有需求，否则",{"text":"不要","color":"red","bold":true},"在设置中开启类石头！(可能使镐子瞬间报废)"]
tellraw @s [{"text":" ","color":"aqua"},"更多使用说明：",{"text":"[总说明]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 2"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}," ",{"text":"[矿石]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 101"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}," ",{"text":"[原木/菌柄]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 102"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}," ",{"text":"[荧石]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 104"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}," ",{"text":"[农作物1]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 105"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}," ",{"text":"[农作物2]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 106"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}]
function mine:tellraw/instruction/see_also
function mine:tellraw/separate_line
