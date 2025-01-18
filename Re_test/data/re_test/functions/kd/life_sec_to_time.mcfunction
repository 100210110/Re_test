# 运行此函数将 总计的存活时间 改为 时分秒格式
execute store result score @s time.life_time_s run scoreboard players get @s total.life_time
execute store result score @s time.life_time_m run scoreboard players get @s total.life_time
execute store result score @s time.life_time_h run scoreboard players get @s total.life_time
scoreboard players operation @s time.life_time_s %= 60 math
scoreboard players operation @s time.life_time_m %= 3600 math
scoreboard players operation @s time.life_time_m /= 60 math
scoreboard players operation @s time.life_time_h /= 3600 math
execute store result score @s time.life_time_s_0 run scoreboard players get @s time.life_time_s
execute store result score @s time.life_time_s_1 run scoreboard players get @s time.life_time_s
execute store result score @s time.life_time_m_0 run scoreboard players get @s time.life_time_m
execute store result score @s time.life_time_m_1 run scoreboard players get @s time.life_time_m
execute store result score @s time.life_time_h_0 run scoreboard players get @s time.life_time_h
execute store result score @s time.life_time_h_1 run scoreboard players get @s time.life_time_h
scoreboard players operation @s time.life_time_s_0 %= 10 math
scoreboard players operation @s time.life_time_s_1 /= 10 math
scoreboard players operation @s time.life_time_m_0 %= 10 math
scoreboard players operation @s time.life_time_m_1 /= 10 math
scoreboard players operation @s time.life_time_h_0 %= 10 math
scoreboard players operation @s time.life_time_h_1 /= 10 math