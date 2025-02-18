# 检测指定位置加入队伍: 准备中、教程中、大厅中
function re_test:every_tick/testfor_team

# 刷新大厅的未准备人数牌子
execute positioned 205 308 80 run function re_test:before_game/update_unsetout_num
# 游戏开始后准备的直接加入游戏
execute if score game_start mode matches 1 as @a[team=setout] run function re_test:game/start_game_own
execute if score every_tick mode matches 1 run schedule function re_test:every_tick/main 1t append