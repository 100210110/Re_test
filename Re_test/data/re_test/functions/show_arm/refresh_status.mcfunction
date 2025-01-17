
execute if score show_item_mark mode matches 0 as @e[type=minecraft:armor_stand,tag=sum_mix_mark] run data modify entity @s CustomNameVisible set value 0
execute if score show_item_mark mode matches 1 as @e[type=minecraft:armor_stand,tag=sum_mix_mark] run data modify entity @s CustomNameVisible set value 1

execute if score show_medical_mark mode matches 0 as @e[type=minecraft:armor_stand,tag=medic_box_mark] run data modify entity @s CustomNameVisible set value 0
execute if score show_medical_mark mode matches 1 as @e[type=minecraft:armor_stand,tag=medic_box_mark] run data modify entity @s CustomNameVisible set value 1

execute if score show_sum_gun_mark mode matches 0 as @e[type=minecraft:armor_stand,tag=sum_gun_mark] run data modify entity @s CustomNameVisible set value 0
execute if score show_sum_gun_mark mode matches 1 as @e[type=minecraft:armor_stand,tag=sum_gun_mark] run data modify entity @s CustomNameVisible set value 1

execute if score show_zomb_ck_mark mode matches 0 as @e[type=minecraft:armor_stand,tag=zomb_check_mark] run data modify entity @s CustomNameVisible set value 0
execute if score show_zomb_ck_mark mode matches 1 as @e[type=minecraft:armor_stand,tag=zomb_check_mark] run data modify entity @s CustomNameVisible set value 1

execute if score show_zomb_run_mark mode matches 0 as @e[type=minecraft:armor_stand,tag=zomb_run_mark] run data modify entity @s CustomNameVisible set value 0
execute if score show_zomb_run_mark mode matches 1 as @e[type=minecraft:armor_stand,tag=zomb_run_mark] run data modify entity @s CustomNameVisible set value 1