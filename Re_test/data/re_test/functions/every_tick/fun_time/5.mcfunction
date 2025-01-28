# 运行此函数将在fun_time时重复检测上
scoreboard players remove fun_time time 20


execute as @r[team=dead_player] at @s run summon minecraft:lightning_bolt ~ ~ ~






execute if score fun_time time matches 1.. run schedule function re_test:every_tick/fun_time/5 1s append