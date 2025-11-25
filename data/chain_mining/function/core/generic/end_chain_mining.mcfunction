# 以下是所有连锁采集公共的结尾
tag @s remove chain_mining_current_player
# 如果没有收到任何动作栏反馈，则认为本次连锁采集没有成功，后续更新操作均不执行
execute unless data storage chain_mining:data function_call.actionbar[0] run return fail

# 显示动作栏反馈
function chain_mining:core/generic/show_actionbar_feedback
# 更新玩家主手和副手物品，可以是修改损害值或损毁物品
function chain_mining:core/generic/mainhand/update_item
function chain_mining:core/generic/offhand/update_item
# 尝试施加饥饿消耗度，当前仅适用于1.21.11+版本
function chain_mining:core/generic/apply_exhaustion
