gamemode adventure @a[tag=gaming]
# 呼叫直升机的按钮
setblock -137 64 121 air

# 清除直升机以及底座
fill -141 73 127 -170 88 100 air
fill -159 76 122 -151 62 112 air

difficulty peaceful
scoreboard players set game_start mode 0
scoreboard players reset copter time
scoreboard objectives remove kill
scoreboard objectives add kill totalKillCount {"text":"击杀数","color":"red"}
scoreboard objectives setdisplay sidebar.team.blue kill
bossbar remove minecraft:copter_time
stopsound @a[tag=gaming]
# 刷新已加载锚点显隐状态，不改变，仅刷新
function re_test:show_arm/refresh_status
# 清除发光引导
kill @e[type=minecraft:block_display,tag=villager]
kill @e[type=minecraft:block_display,tag=villager_button]
kill @e[type=minecraft:block_display,tag=copter]
kill @e[type=minecraft:block_display,tag=copter_button]
# 清除机动车并重新召唤
function re_test:game/reset_car/kill
function re_test:game/reset_car/load

# 重置玩家状态、玩家属性
effect clear @a[tag=gaming]
execute as @a[tag=gaming] run attribute @s minecraft:generic.max_health base set 20
execute as @a[tag=gaming] run attribute @s minecraft:generic.movement_speed base set 0.12
clear @a[tag=gaming]
# 重置锚点状态，重置cd
tag @e[tag=zomb_check_mark] remove run
tag @e[tag=zomb_check_mark] remove cd
scoreboard players reset @e[tag=zomb_check_mark] cool_down
# 重置
tag @a remove helic
tag @a remove dead
tag @a remove gaming
team empty playing
kill @e[type=minecraft:item]