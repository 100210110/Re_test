# 召唤飞机的按钮
setblock -137 64 121 minecraft:cherry_button[face=floor]
title @a[tag=gaming] title {"text": "救援直升机已收到讯号","color":"red"}
title @a[tag=gaming] subtitle {"text": "请在码头部署引导着陆点","color":"yellow"}
summon minecraft:block_display -137.0 63 121.0 {block_state:{Name:"minecraft:emerald_block"},Glowing:true,brightness:{block:15,sky:15},view_range:10,shadow_radius:0,Tags:["copter"]}
summon minecraft:block_display -137.0 64 121.0 {block_state:{Name:"minecraft:cherry_button",Properties:{face:floor}},Glowing:true,brightness:{block:15,sky:15},view_range:10,shadow_radius:0,Tags:["copter_button"]}
kill @e[type=minecraft:block_display,tag=villager]
kill @e[type=minecraft:block_display,tag=villager_button]