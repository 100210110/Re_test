# - 地板打雷

#监狱门 
fill 206 305 103 206 307 103 iron_bars
fill 209 305 103 205 305 103 minecraft:red_stained_glass
fill 209 307 103 205 307 103 minecraft:purple_stained_glass
//
schedule function execute as @r[team=dead_player] at @s run summon minecraft:lightning_bolt ~ ~ ~ 10
schedule function execute as @r[team=dead_player] at @s run summon minecraft:lightning_bolt ~ ~ ~ 20
schedule function execute as @r[team=dead_player] at @s run summon minecraft:lightning_bolt ~ ~ ~ 30
schedule function execute as @r[team=dead_player] at @s run summon minecraft:lightning_bolt ~ ~ ~ 40
schedule function execute as @r[team=dead_player] at @s run summon minecraft:lightning_bolt ~ ~ ~ 50
schedule function execute as @r[team=dead_player] at @s run summon minecraft:lightning_bolt ~ ~ ~ 60
schedule function execute as @r[team=dead_player] at @s run summon minecraft:lightning_bolt ~ ~ ~ 70
schedule function execute as @r[team=dead_player] at @s run summon minecraft:lightning_bolt ~ ~ ~ 80
schedule function execute as @r[team=dead_player] at @s run summon minecraft:lightning_bolt ~ ~ ~ 90
schedule function execute as @r[team=dead_player] at @s run summon minecraft:lightning_bolt ~ ~ ~ 100

