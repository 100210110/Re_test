execute as @s run trigger t_setout set 1
execute if score @s t_setout matches 1 run tp @s 203 307 85
scoreboard players reset @s t_setout