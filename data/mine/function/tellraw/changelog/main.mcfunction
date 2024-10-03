function mine:tellraw/separate_line
tellraw @s [{"text":"","color":"gold"},{"text":"连锁采集数据包","bold":true}," - 更新日志"]
tellraw @s [{"text":" ","color":"aqua"},"数据包版本：",{"nbt":"data.data_version_str","storage":"mine:data","color":"green"},"  (Minecraft版本：",{"nbt":"data.supported_minecraft_versions_str","storage":"mine:data","color":"green"},")"]
tellraw @s [{"text":" ","color":"aqua"},"更新内容："]
function mine:tellraw/changelog/changes
function mine:tellraw/changelog/see_also
function mine:tellraw/separate_line
