execute as @e[type=minecraft:armor_stand,tag=sum_gun_mark] at @s run data modify block ~ ~ ~ LootTable set value ""
execute as @e[type=minecraft:armor_stand,tag=sum_gun_mark] at @s positioned ~ ~ ~ if block ~ ~ ~ minecraft:shulker_box run setblock ~ ~ ~ air
execute as @e[type=minecraft:armor_stand,tag=sum_gun_mark] at @s run setblock ~ ~ ~ minecraft:shulker_box{LootTable:"re_test:gun_boxs/gun_box"} keep