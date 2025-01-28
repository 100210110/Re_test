# 计分板赋值后，倒计时三秒后开始fun_time


execute if score fun_time_start time matches 3 run tellraw @a {"score":{"name":"fun_time_start","objective":"time"},"color":"yellow","bold":"true"}
execute if score fun_time_start time matches 3 run execute as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 1 1
execute if score fun_time_start time matches 2 run tellraw @a {"score":{"name":"fun_time_start","objective":"time"},"color":"yellow","bold":"true"}
execute if score fun_time_start time matches 2 run execute as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 1 1
execute if score fun_time_start time matches 1 run tellraw @a {"score":{"name":"fun_time_start","objective":"time"},"color":"gold","bold":"true"}
execute if score fun_time_start time matches 1 run execute as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 1 1
execute if score fun_time_start time matches 0 run tellraw @a {"text":"Start!","color":"red","bold":"true"}
execute if score fun_time_start time matches 0 run execute as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 1 2 1
execute if score fun_time_start time matches 0 run function re_test:fun_time/vote/run_fun_time

scoreboard players remove fun_time_start time 1
execute if score fun_time_start time matches 0.. run schedule function re_test:fun_time/fun_time_countdown 1s append