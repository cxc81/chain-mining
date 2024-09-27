tellraw @s ["",{"text":"---------------------------------------------\n","color":"gray"},{"text":"连锁采集数据包","color":"gold","bold":true},{"text":" - 更新日志","color":"gold"}]
tellraw @s [{"text":" 数据包版本：","color":"aqua"},{"nbt":"data.data_version_str","storage":"mine:data","color":"green"},"  (Minecraft版本：",{"nbt":"data.supported_minecraft_versions_str","storage":"mine:data","color":"green"},")"]
tellraw @s [" ",{"text":"更新内容：","color":"aqua"}]
function mine:tellraw/changelog/changes
function mine:tellraw/changelog/see_also
tellraw @s {"text":"---------------------------------------------","color":"gray"}
