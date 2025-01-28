# 切换队伍
execute positioned 211 307 84 as @a[dx=0,dy=1,dz=1.2] run function re_test:team/join_teaching
execute positioned 202 307 84 as @a[dx=0.3,dy=1,dz=1.2,team=!setout] run function re_test:team/join_setout
# 加入大厅
execute positioned 207 304 100 as @a[distance=..0.5,team=!lobby,team=!op,gamemode=!spectator,tag=!gaming] run function re_test:team/join_lobby

# 把游戏中意外回到大厅的玩家，传送回游戏场地
execute positioned 207 304 100 as @a[distance=..5,tag=gaming,gamemode=spectator] run tp -155 80 117
execute positioned 207 304 100 as @a[distance=..5,tag=gaming,gamemode=!spectator] run tp -151 109 177
execute positioned 207 304 100 as @a[distance=..5,tag=gaming,gamemode=!spectator] run function re_test:game/start_game_own