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

kill @e[type=minecraft:block_display,tag=villager]
kill @e[type=minecraft:block_display,tag=villager_button]
kill @e[type=minecraft:block_display,tag=copter]
kill @e[type=minecraft:block_display,tag=copter_button]

effect clear @a[tag=gaming]
execute as @a[tag=gaming] run attribute @s minecraft:generic.max_health base set 20
execute as @a[tag=gaming] run attribute @s minecraft:generic.movement_speed base set 0.12

clear @a[tag=gaming]
tag @e[tag=zomb_check_mark] remove run
tag @e[tag=zomb_check_mark] remove cd
scoreboard players reset @e[tag=zomb_check_mark] cool_down

tag @a remove helic
tag @a remove dead
tag @a remove gaming
team empty playing
kill @e[type=minecraft:item]