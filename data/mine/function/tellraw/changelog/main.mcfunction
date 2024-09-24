# 这里展示了数据包版本号(4.1.0)；下文就有一个；在pack.mcteta中也有一个；mine:load函数的末尾也有
# 这里展示了Minecraft版本号(1.21 - 1.21.2)；下文就有一个；在pack.mcmeta中也有一个；mine:tellraw/instruction/main中也有版本描述
tellraw @s ["",{"text":"---------------------------------------------\n","color":"gray"},{"text":"连锁采集数据包","color":"gold","bold":true},{"text":" - 更新日志","color":"gold"}]
tellraw @s [" ",{"text":"数据包版本：4.1.0  (Minecraft版本：1.21 - 1.21.2)","color":"green"}]
tellraw @s [" ",{"text":"更新内容：","color":"aqua"}]
function mine:tellraw/changelog/changes
function mine:tellraw/changelog/see_also
tellraw @s {"text":"---------------------------------------------","color":"gray"}
