execute if score dimension mine matches 0 if data block 0 -64 0 Items[{Slot:0b}].id run function mine:glowstone/mine
execute if score dimension mine matches -1 if data block 0 0 0 Items[{Slot:0b}].id run function mine:glowstone/mine
#下面这条命令：空手也能连锁采集
execute if score empty_hand mine matches 1 run function mine:glowstone/mine