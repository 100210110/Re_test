execute at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~

scoreboard players set @s total.times 0
scoreboard players set @s total.life 0
scoreboard players set @s total.dead 0
scoreboard players set @s total.killed 0
scoreboard players set @s total.play_time 0
scoreboard players set @s total.life_time 0

tellraw @s [{"text":""},{"text":"- ","bold":true,"color":"green"},{"text":"总游玩次数：","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"total.times"},"bold":true,"color":"red"},{"text":"\n"},{"text":"- ","bold":true,"color":"green"},{"text":"总存活次数：","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"total.life"},"bold":true,"color":"red"},{"text":"\n"},{"text":"- ","bold":true,"color":"green"},{"text":"总死亡次数：","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"total.dead"},"bold":true,"color":"red"},{"text":"\n"},{"text":"- ","bold":true,"color":"green"},{"text":"总击杀次数：","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"total.killed"},"bold":true,"color":"red"},{"text":"\n"},{"text":"- ","bold":true,"color":"green"},{"text":"总游玩时间：","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"total.play_time"},"bold":true,"color":"red"},{"text":"\n"},{"text":"- ","bold":true,"color":"green"},{"text":"总存活时间：","bold":true,"color":"yellow"},{"score":{"name":"@s","objective":"total.life_time"},"bold":true,"color":"red"}]