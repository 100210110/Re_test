team join lobby @s
tellraw @s [{"text":""},{"text":">>> ","color":"yellow"},{"text":"切换至: ","color":"yellow"},{"text":"[大厅中]","color":"aqua"}]
execute at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~
clear @s[team=teaching]
execute if entity @s[tag=gaming] run tp @s 207 304 100 0 0
execute unless entity @s[tag=gaming] run tp @s 207 304 100 180 0
