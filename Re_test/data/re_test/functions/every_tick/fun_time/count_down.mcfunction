# 调用此函数前运行下面两个函数
# function re_test:math/update_fun_time_sec
# scoreboard players operation fun_time_countdown time = fun_time_sec time
execute if score fun_time_countdown time matches 11..30 run title @a actionbar {"score":{"name":"fun_time_countdown","objective":"time"},"bold":true,"color":"green"}
execute if score fun_time_countdown time matches 6..10 run title @a actionbar {"score":{"name":"fun_time_countdown","objective":"time"},"bold":true,"color":"yellow"}
execute if score fun_time_countdown time matches 4..5 run title @a actionbar {"score":{"name":"fun_time_countdown","objective":"time"},"bold":true,"color":"gold"}
execute if score fun_time_countdown time matches 1..3 run title @a actionbar {"score":{"name":"fun_time_countdown","objective":"time"},"bold":true,"color":"red"}
execute if score fun_time_countdown time matches 0 run title @a actionbar {"text":"结束!","bold":true,"color":"red"}
execute if score fun_time_countdown time matches 0 run function re_test:fun_time/ending_fun_time

execute if score fun_time_countdown time matches 2..10 as @a at @s run playsound minecraft:block.note_block.pling voice @s ~ ~ ~ 0.1 1 0.1

scoreboard players remove fun_time_countdown time 1
execute if score fun_time_countdown time matches 0.. run schedule function re_test:every_tick/fun_time/count_down 1s append