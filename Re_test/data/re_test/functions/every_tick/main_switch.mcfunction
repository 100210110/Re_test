execute if score every_tick mode matches 1 run scoreboard players set every_tick mode 2
execute if score every_tick mode matches 0 run scoreboard players set every_tick mode 1
execute if score every_tick mode matches 2 run scoreboard players set every_tick mode 0
execute if score every_tick mode matches 1 run function re_test:every_tick/main
