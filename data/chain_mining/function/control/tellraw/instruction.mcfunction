# 若能使用对话框，则生成对应的对话框菜单
execute if function chain_mining:util/should_use_dialogs run return run function chain_mining:dialog/instruction

# 否则，使用聊天菜单，并额外播放点击音效
function chain_mining:tellraw/instruction/main
execute at @s run playsound minecraft:block.lever.click player @s
