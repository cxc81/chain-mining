# 掉落物传送
# 所传入的参数：
#   text1, color1, prompt1, value1
$tellraw @s [" ",{"text":"7. ","color":"aqua"},{"text":"掉落物传送","color":"aqua","hoverEvent":{"action":"show_text","value":{"text":"开启时，连锁采集的掉落物将会自动传送到你所站的位置。"}}},{"text":"： ","color":"aqua"},{"text":"[$(text1)]","color":"$(color1)","clickEvent":{"action":"run_command","value":"/trigger chain_mining_trigger set $(value1)"},"hoverEvent":{"action":"show_text","contents":{"text":"点击$(prompt1)！","color":"yellow"}}},"           ",{"text":"8. ","color":"aqua"},{"text":"卸载数据包： ","color":"aqua"},{"text":"[卸载]","color":"green","clickEvent":{"action":"run_command","value":"/function chain_mining:control/player/unload_warning"},"hoverEvent":{"action":"show_text","contents":{"text":"点击卸载此数据包！（需要足够的权限）","color":"yellow"}}}]
