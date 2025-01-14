execute if score show_item_mark mode matches 1 run scoreboard players set show_item_mark mode 2
execute if score show_item_mark mode matches 0 run scoreboard players set show_item_mark mode 1
execute if score show_item_mark mode matches 2 run scoreboard players set show_item_mark mode 0
execute if score show_item_mark mode matches 0 as @e[type=minecraft:armor_stand,tag=sum_mix_mark] run data modify entity @s CustomNameVisible set value 0
execute if score show_item_mark mode matches 1 as @e[type=minecraft:armor_stand,tag=sum_mix_mark] run data modify entity @s CustomNameVisible set value 1
execute unless score @s carrot_used matches 1.. run function re_test:config/show_arm