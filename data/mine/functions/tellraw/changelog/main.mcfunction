# 这里展示了版本号(3.3.1)；在pack.mcteta中也有一个；load函数的末尾也有
tellraw @s ["",{"text":"---------------------------------------------\n","color":"gray"},{"text":"\u8fde\u9501\u91c7\u96c6\u6570\u636e\u5305","color":"gold","bold":true},{"text":" - \u66f4\u65b0\u65e5\u5fd7","color":"gold"}]
tellraw @s [" ",{"text":"\u6570\u636e\u5305\u7248\u672c\uff1a3.3.1  (Minecraft\u7248\u672c\uff1a1.19.2)","color":"green"}]
tellraw @s [" ",{"text":"\u66f4\u65b0\u5185\u5bb9\uff1a","color":"aqua"}]
function mine:tellraw/changelog/changes
function mine:tellraw/changelog/see_also
tellraw @s {"text":"---------------------------------------------","color":"gray"}