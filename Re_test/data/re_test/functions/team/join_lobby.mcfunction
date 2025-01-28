clear @s
team join lobby @s
tellraw @s [{"text":""},{"text":">>> ","color":"yellow"},{"text":"切换至: ","color":"yellow"},{"text":"[大厅中]","color":"aqua"}]
execute at @s run playsound minecraft:block.note_block.bell voice @s ~ ~ ~

give @s[tag=knockback_stick] minecraft:blaze_rod{Enchantments:[{id:"minecraft:knockback",lvl:3}]}
