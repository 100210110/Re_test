execute as @e[type=minecraft:armor_stand,tag=sum_mix_mark] at @s run data modify block ~ ~ ~ LootTable set value ""
execute as @e[type=minecraft:armor_stand,tag=sum_mix_mark] at @s positioned ~ ~ ~ if block ~ ~ ~ minecraft:barrel run setblock ~ ~ ~ air