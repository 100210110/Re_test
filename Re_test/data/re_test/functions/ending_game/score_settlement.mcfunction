# 游戏结束后调用，结算一切，包括存活与否的输出，击杀数、kd的归档，游玩次数、游玩时间、存活时间的归档
# 队伍名: playing  dead_player
scoreboard players set ending_score mode 1

# 加入临时队伍，去除前缀
execute as @a[tag=gaming,tag=!dead] run team join score.life @s
execute as @a[tag=dead] run team join score.dead @s

# 总击杀、游玩时间、总死亡、总存活、总游玩次数归档
execute as @a[tag=gaming] run scoreboard players add @s total.times 1
execute as @a[tag=gaming,tag=!dead] run scoreboard players add @s total.life 1
execute as @a[tag=dead] run scoreboard players add @s total.dead 1
execute as @a[tag=gaming] run scoreboard players operation @s total.killed += @s kill
execute as @a[tag=gaming] run scoreboard players operation @s total.play_time += game_run_time time
execute as @a[team=score.life] run scoreboard players operation @s total.life_time += game_run_time time
execute as @a[team=score.dead] run scoreboard players operation @s total.life_time += @s time.dead_life

# 击杀计分板 kill, 游戏运行时间计分板 game_run_time time, 存活team playing, 阵亡team dead_player
# 统计本场总击杀, total kill
scoreboard players set total kill 0
execute as @a[tag=gaming] run scoreboard players operation total kill += @s kill
# 把秒为单位的时间转换为时分秒
execute store result score game_run_s time run scoreboard players get game_run_time time
execute store result score game_run_m time run scoreboard players get game_run_time time
execute store result score game_run_h time run scoreboard players get game_run_time time
scoreboard players operation game_run_s time %= 60 math
scoreboard players operation game_run_m time %= 3600 math
scoreboard players operation game_run_m time /= 60 math
scoreboard players operation game_run_h time /= 3600 math
execute store result score game_run_s_0 time run scoreboard players get game_run_s time
execute store result score game_run_s_1 time run scoreboard players get game_run_s time
execute store result score game_run_m_0 time run scoreboard players get game_run_m time
execute store result score game_run_m_1 time run scoreboard players get game_run_m time
execute store result score game_run_h_0 time run scoreboard players get game_run_h time
execute store result score game_run_h_1 time run scoreboard players get game_run_h time
scoreboard players operation game_run_s_0 time %= 10 math
scoreboard players operation game_run_s_1 time /= 10 math
scoreboard players operation game_run_m_0 time %= 10 math
scoreboard players operation game_run_m_1 time /= 10 math
scoreboard players operation game_run_h_0 time %= 10 math
scoreboard players operation game_run_h_1 time /= 10 math



# 游戏结束，播报计时
tellraw @a [{"text":""},{"text":"[游戏结束]","bold":true,"color":"aqua"},{"text":"\n"},{"text":"总击杀僵尸: ","bold":true,"color":"yellow"},{"score":{"name":"total","objective":"kill"},"color":"red"},{"text":"\n"},{"text":"总用时: ","bold":true,"color":"yellow"},{"score":{"name":"game_run_h_1","objective":"time"},"bold":true,"color":"green"},{"score":{"name":"game_run_h_0","objective":"time"},"bold":true,"color":"green"},{"text":":"},{"score":{"name":"game_run_m_1","objective":"time"},"bold":true,"color":"green"},{"score":{"name":"game_run_m_0","objective":"time"},"bold":true,"color":"green"},{"text":":"},{"score":{"name":"game_run_s_1","objective":"time"},"bold":true,"color":"green"},{"score":{"name":"game_run_s_0","objective":"time"},"bold":true,"color":"green"}]
tellraw @a [{"text":""},{"text":"\n"},{"text":"[存活玩家]","bold":true,"color":"aqua"}]
execute if entity @a[team=score.life] as @a[team=score.life] run function re_test:difficulty/difficulty_output
execute unless entity @a[team=score.life] if entity @a[team=score.dead] run tellraw @a [{"text":""},{"text":"- ","color":"green"},{"text":"无人生还","color":"gray"}]
execute unless entity @a[team=score.life] unless entity @a[team=score.dead] run tellraw @a [{"text":""},{"text":"- ","color":"green"},{"text":"无人游玩","color":"gray"}]

tellraw @a [{"text":""},{"text":"\n"},{"text":"[阵亡玩家]","bold":true,"color":"gray"}]
# 将存活时间转化为 时分秒
execute as @a[team=score.dead] run function re_test:difficulty/life_sec_to_time
execute as @a[team=score.dead] run function re_test:difficulty/difficulty_output
execute if entity @a[team=score.life] unless entity @a[team=score.dead] run tellraw @a [{"text":""},{"text":"- ","color":"green"},{"text":"全员生还","color":"aqua"}]
execute unless entity @a[team=score.life] unless entity @a[team=score.dead] run tellraw @a [{"text":""},{"text":"- ","color":"green"},{"text":"无人游玩","color":"gray"}]

scoreboard players set ending_score mode 0