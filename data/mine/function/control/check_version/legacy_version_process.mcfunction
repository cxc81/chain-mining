# 此函数由mine:load函数调用
execute store result score has_mine_objective mine_variables unless score $non_existent mine = $non_existent mine
execute if score has_mine_objective mine_variables matches 0 run return fail

# assert has_mine_objective
execute unless data storage mine:data dataVersion run data merge storage mine:data {lastDataVersion: 0}
