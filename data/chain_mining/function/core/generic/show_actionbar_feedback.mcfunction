execute unless data storage chain_mining:data function_call.actionbar[0] run return fail

title @s actionbar {"translate": "chain_mining.message.actionbar", "fallback": "共采集了%s", "color": "aqua", "with": [{"nbt": "function_call.actionbar[]", "storage": "chain_mining:data", "interpret": true, "separator": {"translate": "chain_mining.message.generic.separator", "fallback": "，"}}]}
