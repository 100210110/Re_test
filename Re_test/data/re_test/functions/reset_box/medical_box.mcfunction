execute as @e[type=minecraft:armor_stand,tag=medic_box_mark] at @s run data modify block ~ ~ ~ Items set value []
execute as @e[type=minecraft:armor_stand,tag=medic_box_mark] at @s run data modify block ~ ~ ~ LootTable set value ""
execute as @e[type=minecraft:armor_stand,tag=medic_box_mark] at @s run data modify block ~ ~ ~ LootTable set value "re_test:medical_box/medicine"