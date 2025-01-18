# 复制直升机降落平台
clone -86 103 4 -79 104 -4 -158 62 113 masked
# 清除召唤按钮
setblock -137 64 121 air
kill @e[type=minecraft:block_display,tag=copter]
kill @e[type=minecraft:block_display,tag=copter_button]

title @a[tag=gaming] title {"text": "救援已在路上","color":"red"}
title @a[tag=gaming] subtitle {"text": "将于5分钟内抵达","color":"red"}

bossbar add copter_time {"text":"救援直升机距离","color":"gold","bold":true}
execute store result bossbar minecraft:copter_time max run scoreboard players get copter time
execute store result bossbar minecraft:copter_time value run scoreboard players get copter time
bossbar set minecraft:copter_time players @a[tag=gaming]
scoreboard players set copter mode 1