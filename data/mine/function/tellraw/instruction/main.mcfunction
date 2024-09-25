# 数据包版本号所出现的位置：
#   下文就有一处；
#   pack.mcmeta中有一处；
#   函数mine:tellraw/changelog/main中有一处；
#   函数mine:load的末尾有一处。
# Minecraft适用版本所出现的位置：
#   下文就有一处；
#   pack.mcmeta中有一处；
#   函数mine:tellraw/changelog/main中有一处。
tellraw @s ["",{"text":"---------------------------------------------\n","color":"gray"},{"text":"连锁采集数据包","color":"gold","bold":true},{"text":" - 使用说明","color":"gold"}]
tellraw @s {"text":" 1. 数据包版本：v4.2.1  (Minecraft版本：1.21 - 1.21.2)","color":"aqua"}
tellraw @s ["",{"text":" 2. 支持采集所有矿石、原木、菌柄、","color":"aqua"},{"text":"类石头方块","color":"aqua","hoverEvent":{"action":"show_text","contents":{"text":"安山岩、闪长岩、花岗岩、凝灰岩、方解石和岩浆块"}}},{"text":"、荧石和农作物；","color":"aqua"}]
tellraw @s [" ",{"text":"3. 会自动扣除耐久，且工具上的魔咒(如耐久、时运等)能够正常生效；","color":"aqua"}]
tellraw @s [" ",{"text":"4. 物品耐久度耗尽时，会自动停止连锁；","color":"aqua"}]
tellraw @s [" ",{"text":"5. 点击下方设置来控制各类连锁的开关。","color":"aqua"}]
tellraw @s [" ",{"text":"更多使用说明：","color":"aqua"},{"text":"[矿石]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 101"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}," ",{"text":"[原木/菌柄]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 102"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}," ",{"text":"[类石头]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 103"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}," ",{"text":"[荧石]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 104"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}," ",{"text":"[农作物1]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 105"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}," ",{"text":"[农作物2]","color":"green","clickEvent":{"action":"run_command","value":"/trigger mine_trigger set 106"},"hoverEvent":{"action":"show_text","contents":{"text":"点击查看！","color":"yellow"}}}]
function mine:tellraw/instruction/see_also
tellraw @s {"text":"---------------------------------------------","color":"gray"}
