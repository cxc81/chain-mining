function mine:generic/get_if_to_mine
execute if score if_to_mine mine matches 1 run function mine:glowstone/mine
#���������������Ҳ�������ɼ�
execute if score empty_hand mine matches 1 run function mine:glowstone/mine