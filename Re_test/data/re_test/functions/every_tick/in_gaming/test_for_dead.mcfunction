# 检测并处理死亡玩家
execute as @a[tag=gaming,scores={deathCount=1..}] run gamemode spectator @s
execute as @a[tag=gaming,scores={deathCount=1..}] run tp -155 125 117
execute as @a[scores={deathCount=1..}] run title @s title [{"text":"你已迷失","color":"red"}]
execute as @a[scores={deathCount=1..}] run tag @s add dead
execute as @a[scores={deathCount=1..}] run clear @s
execute as @a[scores={deathCount=1..}] run team join playing.dead @s
execute as @a[scores={deathCount=1..}] store result score @s time.dead_life run scoreboard players get game_run_time time
execute as @a[scores={deathCount=1..}] run scoreboard players reset @s deathCount