execute positioned 211 307 84 as @a[dx=0,dy=1,dz=1.2] run function re_test:team/join_teaching
execute positioned 202 307 84 as @a[dx=0,dy=1,dz=1.2,team=!setout] run function re_test:team/join_setout
execute positioned 207 304 100 as @a[distance=..0.5,team=!lobby,team=!op,gamemode=!spectator,tag=!gaming] run function re_test:team/join_lobby