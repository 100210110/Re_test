execute at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~

# 如果没有分数设置为0
execute unless score @s total.times matches 0.. run scoreboard players set @s total.times 0
execute unless score @s total.life matches 0.. run scoreboard players set @s total.life 0
execute unless score @s total.dead matches 0.. run scoreboard players set @s total.dead 0
execute unless score @s total.killed matches 0.. run scoreboard players set @s total.killed 0
execute unless score @s total.play_time matches 0.. run scoreboard players set @s total.play_time 0
execute unless score @s total.life_time matches 0.. run scoreboard players set @s total.life_time 0

# 将存活时间和游玩时间转化为 时分秒
function re_test:kd/play_sec_to_time
function re_test:kd/life_sec_to_time

tellraw @s [{"text":""},{"text":"- ","bold":true,"color":"green"},{"text":"总游玩次数：","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"total.times"},"bold":true,"color":"red"},{"text":"\n"},{"text":"- ","bold":true,"color":"green"},{"text":"总存活次数：","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"total.life"},"bold":true,"color":"red"},{"text":"\n"},{"text":"- ","bold":true,"color":"green"},{"text":"总死亡次数：","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"total.dead"},"bold":true,"color":"red"},{"text":"\n"},{"text":"- ","bold":true,"color":"green"},{"text":"总击杀次数：","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"total.killed"},"bold":true,"color":"red"},{"text":"\n"},{"text":"- ","bold":true,"color":"green"},{"text":"总游玩时间：","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"time.play_time_h_1"},"bold":true,"color":"red"},{"score":{"name":"@s","objective":"time.play_time_h_0"},"bold":true,"color":"red"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"time.play_time_m_1"},"bold":true,"color":"red"},{"score":{"name":"@s","objective":"time.play_time_m_0"},"bold":true,"color":"red"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"time.play_time_s_1"},"bold":true,"color":"red"},{"score":{"name":"@s","objective":"time.play_time_s_0"},"bold":true,"color":"red"},{"text":"\n"},{"text":"- ","bold":true,"color":"green"},{"text":"总存活时间：","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"time.life_time_h_1"},"bold":true,"color":"red"},{"score":{"name":"@s","objective":"time.life_time_h_0"},"bold":true,"color":"red"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"time.life_time_m_1"},"bold":true,"color":"red"},{"score":{"name":"@s","objective":"time.life_time_m_0"},"bold":true,"color":"red"},{"text":":","color":"gray"},{"score":{"name":"@s","objective":"time.life_time_s_1"},"bold":true,"color":"red"},{"score":{"name":"@s","objective":"time.life_time_s_0"},"bold":true,"color":"red"}]