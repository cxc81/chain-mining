function chain_mining:tellraw/separate_line
tellraw @s [{"text": "", "color": "gold"}, {"translate": "chain_mining.message.data_pack.title", "fallback": "连锁采集数据包", "bold": true}, " - 设置"]

function chain_mining:tellraw/settings/bind_variables {variable1: "overworld_ores", variable2: "nether_ores", index1: 1, index2: 2}
function chain_mining:tellraw/settings/line_1 with storage chain_mining:data function_call.lines

function chain_mining:tellraw/settings/bind_variables {variable1: "logs", variable2: "rocks", index1: 3, index2: 4}
function chain_mining:tellraw/settings/line_2 with storage chain_mining:data function_call.lines

function chain_mining:tellraw/settings/bind_variables {variable1: "crops_no_hardness", variable2: "crops_with_hardness", index1: 5, index2: 6}
function chain_mining:tellraw/settings/line_3 with storage chain_mining:data function_call.lines

function chain_mining:tellraw/settings/bind_variables {variable1: "loot", variable2: "", index1: 7, index2: 8}
function chain_mining:tellraw/settings/line_4 with storage chain_mining:data function_call.lines

function chain_mining:tellraw/settings/see_also
function chain_mining:tellraw/separate_line
