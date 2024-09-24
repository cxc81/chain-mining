function mine:generic/get_if_to_mine
execute if score if_to_mine mine matches 1 run function mine:glowstone/mine
#下面这条命令：空手也能连锁采集
execute if score empty_hand mine matches 1 run function mine:glowstone/mine