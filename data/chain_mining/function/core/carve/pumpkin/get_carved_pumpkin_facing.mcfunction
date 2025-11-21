# @returns
#   0 - north
#   1 - east
#   2 - south
#   3 - west
execute positioned ~ ~ ~-0.5 unless entity @s[dx=0,dy=0,dz=0] run return 0
execute positioned ~0.5 ~ ~ unless entity @s[dx=0,dy=0,dz=0] run return 1
execute positioned ~ ~ ~0.5 unless entity @s[dx=0,dy=0,dz=0] run return 2
return 3
