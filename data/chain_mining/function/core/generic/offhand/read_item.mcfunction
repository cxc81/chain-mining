# @until 1.21.5
# 将副手物品存入命令存储chain_mining:data的items.offhand
# 会存储一个冗余的Slot字段，但也无需移除
execute store success score #temp chain_mining_variables run data modify storage chain_mining:data items.offhand set from storage chain_mining:player_nbt data.Inventory[{Slot:-106b}]
execute unless score #temp chain_mining_variables matches 1 run data remove storage chain_mining:data items.offhand
