# 将主手物品存入命令存储chain_mining:data的items.mainhand
execute store success score #temp chain_mining_variables run data modify storage chain_mining:data items.mainhand set from storage chain_mining:player_nbt data.SelectedItem
execute unless score #temp chain_mining_variables matches 1 run data remove storage chain_mining:data items.mainhand
