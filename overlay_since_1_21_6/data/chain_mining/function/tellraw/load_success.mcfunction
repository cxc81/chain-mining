# @since 1.21.6

# 如果use_dialogs变量置为1，则使用新版对话框
# 否则和1.21.6前的聊天界面相同

# 新效果：连锁采集数据包已加载！ [打开菜单]  
execute if score use_dialogs chain_mining_global_settings matches 1 run return run tellraw @s [{"translate": "chain_mining.message.load_success", "fallback": "连锁采集数据包已加载！ %s %s %s", "color": "gold", "with": [{"translate": "chain_mining.button.open_menu", "color": "green", "fallback": "[打开菜单]", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 4"}, "hover_event": {"action": "show_text", "value": [{"translate": "chain_mining.button.hover.open_dialog_tip", "color": "gray", "fallback": "提示：按%s也可打开此菜单。", "with": [{"keybind": "key.quickActions"}]}, "\n", {"translate": "chain_mining.button.hover.click_to_view", "color": "yellow", "fallback": "点击查看！"}]}}, "", ""]}]

# 效果：连锁采集数据包已加载！ [设置] [使用说明] [更新日志]
return run tellraw @s [{"translate": "chain_mining.message.load_success", "fallback": "连锁采集数据包已加载！ %s %s %s", "color": "gold", "with": [{"translate": "chain_mining.button.settings", "color": "green", "fallback": "[设置]", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 1"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_view", "color": "yellow", "fallback": "点击查看！"}}}, {"translate": "chain_mining.button.instructions", "color": "green", "fallback": "[使用说明]", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 2"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_view", "color": "yellow", "fallback": "点击查看！"}}}, {"translate": "chain_mining.button.changelog", "color": "green", "fallback": "[更新日志]", "click_event": {"action": "run_command", "command": "/trigger chain_mining_trigger set 3"}, "hover_event": {"action": "show_text", "value": {"translate": "chain_mining.button.hover.click_to_view", "color": "yellow", "fallback": "点击查看！"}}}]}]
