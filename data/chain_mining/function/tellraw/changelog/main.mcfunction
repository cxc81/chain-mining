function chain_mining:tellraw/separate_line
tellraw @s [{"text":"","color":"gold"},{"text":"连锁采集数据包","bold":true}," - 更新日志"]
tellraw @s [{"text":" ","color":"aqua"},"数据包版本：",{"nbt":"data.data_version_str","storage":"chain_mining:data","color":"green"},"  (Minecraft版本：",{"nbt":"data.supported_minecraft_versions_str","storage":"chain_mining:data","color":"green"},")"]
tellraw @s [{"text":" ","color":"aqua"},"更新内容："]
function chain_mining:tellraw/changelog/changes
function chain_mining:tellraw/changelog/see_also
function chain_mining:tellraw/separate_line
