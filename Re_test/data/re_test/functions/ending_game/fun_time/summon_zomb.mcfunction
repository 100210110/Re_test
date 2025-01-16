# - 逃生+刷僵尸

#监狱门 
fill 206 305 103 206 307 103 iron_bars
fill 209 305 103 205 305 103 minecraft:red_stained_glass
fill 209 307 103 205 307 103 minecraft:purple_stained_glass
#上玻璃
fill 209 308 104 205 308 106 air
title @a[team=dead_player] title {"text":"跳跃以逃离！","color":"red"}
effect give @a[team=dead_player] minecraft:jump_boost 10 30
execute as @r[team=dead_player] at @s run summon minecraft:vindicator ~ ~ ~
execute as @r[team=dead_player] at @s run summon minecraft:vindicator ~ ~ ~
execute as @r[team=dead_player] at @s run summon minecraft:vindicator ~ ~ ~
