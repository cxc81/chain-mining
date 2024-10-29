function chain_mining:tellraw/separate_line
tellraw @s [{"text":"","color":"gold"},{"translate": "chain_mining.message.data_pack.title", "fallback": "连锁采集数据包", "bold": true}," - 更新日志 (技术性)"]
tellraw @s [{"text":"  ","color":"aqua"},{"text":"·","color":"light_purple","bold":true}," 整个数据包的命名空间已从",{"text":"mine","color":"green"},"更改为",{"text":"chain_mining","color":"green"},"，包括："]
tellraw @s [{"text":"     ","color":"aqua"},{"text":"·","color":"light_purple","bold":true}," 数据包文件的命名空间"]
tellraw @s [{"text":"     ","color":"aqua"},{"text":"·","color":"light_purple","bold":true}," 记分项、记分板标签的名称前缀"]
tellraw @s [{"text":"     ","color":"aqua"},{"text":"·","color":"light_purple","bold":true}," 本地化键名的ID前缀"]
tellraw @s [{"text":"  ","color":"aqua"},{"text":"·","color":"light_purple","bold":true}," 显著地提升了补种农作物时的函数运行效率。"]
tellraw @s [{"text":"  ","color":"aqua"},{"text":"·","color":"light_purple","bold":true}," 针对物品堆叠组件的检测变得更加完善了。"]
tellraw @s [{"text":"     ","color":"aqua"},{"text":"·","color":"light_purple","bold":true}," 现在会同时检查物品的",{"text":"tool","color":"green"},"、",{"text":"unbreakable","color":"green"},"、",{"text":"damage","color":"green"},"和\n       ",{"text":"max_damage","color":"green"},"组件。"]
tellraw @s [{"text":"        ","color":"aqua"},{"text":"·","color":"light_purple","bold":true}," 仅当",{"text":"tool","color":"green"},"、",{"text":"damage","color":"green"},"和",{"text":"max_damage","color":"green"},"存在，",{"text":"unbreakable","color":"green"},"不存在\n          时，才会在连锁中消耗耐久。"]
tellraw @s [{"text":"        ","color":"aqua"},{"text":"·","color":"light_purple","bold":true}," 部分逻辑(如连锁原木/菌柄)要求物品具有",{"text":"tool","color":"green"},"组件，才能连锁。"]
tellraw @s [{"text":"        ","color":"aqua"},{"text":"·","color":"light_purple","bold":true}," 如果工具的",{"text":"damage","color":"green"},"或",{"text":"max_damage","color":"green"},"组件被移除，则相当于它们拥有\n          了",{"text":"unbreakable","color":"green"},"组件。"]
tellraw @s [{"text":"     ","color":"aqua"},{"text":"·","color":"light_purple","bold":true}," 现在会主动读取",{"text":"tool","color":"green"},"组件中的",{"text":"damage_per_block","color":"green"},"字段，基于此决定物\n       品的耐久消耗度。"]
tellraw @s [{"text":"        ","color":"aqua"},{"text":"·","color":"light_purple","bold":true}," 此前版本中，耐久消耗度是硬编码的，且仅用于荧石的采集。"]
tellraw @s [{"text":"  ","color":"aqua"},{"text":"·","color":"light_purple","bold":true}," 代码进行了大量重构，包括合并冗余代码、更改函数签名等。"]
tellraw @s [{"text":"     ","color":"aqua"},{"text":"·","color":"light_purple","bold":true}," 连锁采集的核心逻辑整理到",{"text":"chain_mining:core/","color":"green"},"函数文件夹下。"]
tellraw @s [{"text":"     ","color":"aqua"},{"text":"·","color":"light_purple","bold":true}," 合并了各类方块的搜寻方块函数到",{"text":"chain_mining:core/generic/find","color":"green"},"\n       中，以减少代码冗余。"]
function chain_mining:tellraw/changelog/see_also
function chain_mining:tellraw/separate_line
