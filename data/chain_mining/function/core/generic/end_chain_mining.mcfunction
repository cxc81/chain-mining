# 所有连锁采集公共的结尾
tag @s remove chain_mining_current_player
function chain_mining:core/generic/show_actionbar_feedback
# 更新玩家主手和副手物品，可以是修改损害值或损毁物品
function chain_mining:core/generic/mainhand/update_item
function chain_mining:core/generic/offhand/update_item
# 尝试施加饥饿消耗度
function chain_mining:core/generic/apply_exhaustion
