execute if score copter time matches 1.. run scoreboard players remove copter time 1
execute store result bossbar minecraft:copter_time value run scoreboard players get copter time

# 倒计时开始后每30s召唤一小波僵尸
execute if score copter time matches 3600 run execute as @e[tag=zomb_check_mark] at @s if entity @e[tag=gaming,gamemode=adventure,type=minecraft:player,sort=nearest,limit=1,distance=20..50] run execute as @e[tag=zomb_run_mark,distance=..10] at @s run summon minecraft:zombie
execute if score copter time matches 3000 run execute as @e[tag=zomb_check_mark] at @s if entity @e[tag=gaming,gamemode=adventure,type=minecraft:player,sort=nearest,limit=1,distance=20..50] run execute as @e[tag=zomb_run_mark,distance=..10] at @s run summon minecraft:zombie
execute if score copter time matches 2400 run execute as @e[tag=zomb_check_mark] at @s if entity @e[tag=gaming,gamemode=adventure,type=minecraft:player,sort=nearest,limit=1,distance=20..50] run execute as @e[tag=zomb_run_mark,distance=..10] at @s run summon minecraft:zombie

# music
execute if score copter time matches 3600 as @a[tag=gaming] at @s run playsound playerrevive:tension voice @s ~ ~ ~

execute if score copter time matches 1800 run title @a[tag=gaming] title {"text": "还有一分半! 冲散他们的阵型!","color":"red"}
execute if score copter time matches 1800 run title @a[tag=gaming] subtitle {"text": "冲冲冲","color":"yellow"}
execute if score copter time matches 1800 store result bossbar minecraft:copter_time max run scoreboard players get copter time
execute if score copter time matches 1800 run bossbar set minecraft:copter_time name {"text":">预计一分半到达<","color":"yellow","bold":true}
execute if score copter time matches 1800 as @a[tag=gaming] run attribute @s minecraft:generic.movement_speed base set 0.14
execute if score copter time matches 1800 run execute as @e[tag=zomb_check_mark] at @s if entity @e[tag=gaming,gamemode=adventure,type=minecraft:player,sort=nearest,limit=1,distance=20..50] run execute as @e[tag=zomb_run_mark,distance=..10] at @s run summon minecraft:zombie

# 将任务四变为绿色
execute if score copter time matches 600 run function re_test:task_score/task_4_remove
execute if score copter time matches 600 run title @a[tag=gaming] title {"text": "救援直升机: 把追兵解决掉! ","color":"red"}
execute if score copter time matches 600 run title @a[tag=gaming] subtitle {"text": "最后30秒","color":"yellow"}
execute if score copter time matches 600 store result bossbar minecraft:copter_time max run scoreboard players get copter time
execute if score copter time matches 600 run bossbar set minecraft:copter_time name {"text":"直升机接近中! ","color":"red","bold":true}
execute if score copter time matches 600 run item replace entity @a[tag=gaming,tag=!dead,scores={personal_difficulty=0..1}] hotbar.7 with tacz:modern_kinetic_gun{HideFlags:2,AttributeModifiers:[{Amount:50.0d,AttributeName:"minecraft:generic.armor",Operation:0,Slot:"mainhand",UUID:[I;0,1,2,3]},{Amount:30.0d,AttributeName:"minecraft:generic.armor_toughness",Operation:0,Slot:"mainhand",UUID:[I;4,5,6,7]},{Amount:100.0d,AttributeName:"minecraft:generic.knockback_resistance",Operation:0,Slot:"mainhand",UUID:[I;8,9,1,2]}],AttachmentEXTENDED_MAG:{id:"tacz:attachment",Count:1b,tag:{AttachmentId:"tacz:extended_mag_3"}},HasBulletInBarrel:1b,GunId:"zxgy:kits_t2",AttachmentSCOPE:{id:"tacz:attachment",Count:1b,tag:{AttachmentId:"tacz:sight_uh1"}},AttachmentMUZZLE:{id:"tacz:attachment",Count:1b,tag:{AttachmentId:"zxgy:kc"}},GunFireMode:"AUTO",GunCurrentAmmoCount:10000000,AttachmentGRIP:{id:"tacz:attachment",Count:1b,tag:{AttachmentId:"zxgy:cqbmk"}},AttachmentSTOCK:{id:"tacz:attachment",Count:1b,tag:{AttachmentId:"tacz:stock_militech_b5"}}}
execute if score copter time matches 600 run item replace entity @a[tag=gaming,tag=!dead,scores={personal_difficulty=0..1}] hotbar.8 with tacz:modern_kinetic_gun{AttachmentEXTENDED_MAG: {id: "tacz:attachment", Count: 1b, tag: {AttachmentId: "tacz:extended_mag_3"}}, HasBulletInBarrel: 1b, GunId: "tacz:aa12", AttachmentSCOPE: {id: "tacz:attachment", Count: 1b, tag: {AttachmentId: "tacz:sight_uh1"}}, GunFireMode: "AUTO", GunCurrentAmmoCount: 100000000, AttachmentGRIP: {id: "tacz:attachment", Count: 1b, tag: {AttachmentId: "tacz:grip_magpul_afg_2"}}}
execute if score copter time matches 600 run item replace entity @a[tag=gaming,tag=!dead] container.9 with tacz:ammo_box{AllTypeCreative: 1b}
execute if score copter time matches ..600 run particle minecraft:cloud -155 62 116 1 1 1 0.2 100 force
# 飞机到达前夕召唤一大波僵尸
execute if score copter time matches 599..600 run execute as @e[tag=zomb_check_mark] at @s if entity @e[tag=gaming,gamemode=adventure,type=minecraft:player,sort=nearest,limit=1,distance=20..50] run execute as @e[tag=zomb_run_mark,distance=..10] at @s run summon minecraft:zombie

# 为了BGM响得不那么突然
# execute if score copter time matches 400 as @a[tag=gaming] at @s run stopsound @s
execute if score copter time matches 400 as @a[tag=gaming] at @s run playsound playerrevive:hightension voice @s ~ ~ ~
execute if score copter time matches 400 run tellraw @a[tag=gaming] [{"text":""},{"text":">>> ","bold":true,"color":"yellow"},{"text":"干掉它们！救援直升机即将在湖中悬停！","bold":true,"color":"red"}]
execute if score copter time matches 395 run tellraw @a[tag=gaming] [{"text":""},{"text":">>> ","bold":true,"color":"yellow"},{"text":"干掉它们！救援直升机即将在湖中悬停！","bold":true,"color":"red"}]
execute if score copter time matches 390 run tellraw @a[tag=gaming] [{"text":""},{"text":">>> ","bold":true,"color":"yellow"},{"text":"干掉它们！救援直升机即将在湖中悬停！","bold":true,"color":"red"}]
execute if score copter time matches 385 run tellraw @a[tag=gaming] [{"text":""},{"text":">>> ","bold":true,"color":"yellow"},{"text":"干掉它们！救援直升机即将在湖中悬停！","bold":true,"color":"red"}]

# 将任务三变为灰色，最终任务标红
execute if score copter time matches 0 run function re_test:task_score/task_3_remove
execute if score copter time matches 0 run function re_test:task_score/task_5
execute if score copter time matches 0 run clone -95 105 10 -65 127 -17 -171 65 100 masked
execute if score copter time matches 0 run title @a[tag=gaming] title {"text": "救援已到达","color":"red"}
execute if score copter time matches 0 run title @a[tag=gaming] subtitle {"text": "速速撤离","color":"yellow"}
execute if score copter time matches 0 run bossbar remove minecraft:copter_time
execute if score copter time matches 0 run scoreboard players reset copter time