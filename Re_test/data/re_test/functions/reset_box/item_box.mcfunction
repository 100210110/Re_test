execute as @e[type=minecraft:armor_stand,tag=sum_mix_mark] at @s run data modify block ~ ~ ~ LootTable set value ""
execute as @e[type=minecraft:armor_stand,tag=sum_mix_mark] at @s positioned ~ ~ ~ if block ~ ~ ~ minecraft:barrel[facing=up] run setblock ~ ~ ~ air
execute as @e[type=minecraft:armor_stand,tag=sum_mix_mark,tag=1] at @s run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"re_test:mix_chest/mix_item/mix_all"} keep
execute as @e[type=minecraft:armor_stand,tag=sum_mix_mark,tag=2] at @s run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"re_test:mix_chest/mix_item/mix_all_2"} keep
execute as @e[type=minecraft:armor_stand,tag=sum_mix_mark,tag=3] at @s run setblock ~ ~ ~ minecraft:barrel[facing=up]{LootTable:"re_test:mix_chest/mix_item/mix_all_3"} keep