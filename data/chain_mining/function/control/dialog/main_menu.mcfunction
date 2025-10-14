# 若能使用对话框，则生成对应的对话框菜单，并播放点击印象
# 否则什么也不响应
execute unless function chain_mining:util/should_use_dialogs run return fail

function chain_mining:dialog/main_menu
execute at @s run playsound minecraft:block.lever.click player @s
