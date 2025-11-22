# 生成0~n之间的随机整数，若生成0，则扣除耐久
# 扣除耐久几率：1 / (unbreaking_level_mainhand + 1)
execute if predicate {condition: "minecraft:value_check", value: {type: "minecraft:uniform", min: 0, max: {type: "minecraft:score", score: "chain_mining_variables", target: {type: "minecraft:fixed", name: "unbreaking_level_mainhand"}}}, range: 0} run scoreboard players add damage_mainhand chain_mining_variables 1
