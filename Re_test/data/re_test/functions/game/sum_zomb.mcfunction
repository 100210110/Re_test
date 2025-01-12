execute as @e[tag=zomb_check_mark] at @s if entity @e[tag=gaming,gamemode=adventure,type=minecraft:player,sort=nearest,limit=1,distance=20..25] run tag @s add run
execute as @e[tag=zomb_check_mark,tag=run,tag=!cd] at @s run execute as @e[tag=zomb_run_mark,distance=..10] at @s run summon minecraft:zombie
tag @e[tag=zomb_check_mark,tag=run] add cd
scoreboard players set @e[tag=zomb_check_mark,tag=run,tag=cd] cool_down 300
tag @e[tag=zomb_check_mark,tag=run,tag=cd] remove run
scoreboard players remove @e[tag=cd] cool_down 1
tag @e[tag=zomb_check_mark,scores={cool_down=..0}] remove cd
scoreboard players reset @e[tag=zomb_check_mark,scores={cool_down=..0}] cool_down