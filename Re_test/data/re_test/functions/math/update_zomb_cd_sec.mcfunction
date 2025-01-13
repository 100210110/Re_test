execute if score sum_zomb_cd mode matches ..0 run scoreboard players set sum_zomb_cd mode 0
scoreboard players operation sum_zomb_cd_sec time = sum_zomb_cd mode
scoreboard players operation sum_zomb_cd_sec time /= 20 math
function re_test:config/difficulty_set