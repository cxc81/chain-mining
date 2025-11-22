# 将主手物品存入命令存储chain_mining:data的items.mainhand
data remove storage chain_mining:data items.mainhand
data modify storage chain_mining:data items.mainhand set from storage chain_mining:player_nbt data.SelectedItem
