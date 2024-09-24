# 这里展示了数据包版本号(3.3.2)；下文就有一个；在pack.mcteta中也有一个；mine:load函数的末尾也有
# 这里展示了Minecraft版本号(1.19.3)；下文就有一个；在pack.mcmeta中也有一个；mine:tellraw/instruction/main中也有版本描述
tellraw @s ["",{"text":"---------------------------------------------\n","color":"gray"},{"text":"\u8fde\u9501\u91c7\u96c6\u6570\u636e\u5305","color":"gold","bold":true},{"text":" - \u66f4\u65b0\u65e5\u5fd7","color":"gold"}]
tellraw @s [" ",{"text":"\u6570\u636e\u5305\u7248\u672c\uff1a3.3.2  (Minecraft\u7248\u672c\uff1a1.19.3)","color":"green"}]
tellraw @s [" ",{"text":"\u66f4\u65b0\u5185\u5bb9\uff1a","color":"aqua"}]
function mine:tellraw/changelog/changes
function mine:tellraw/changelog/see_als
tellraw @s {"text":"---------------------------------------------","color":"gray"}