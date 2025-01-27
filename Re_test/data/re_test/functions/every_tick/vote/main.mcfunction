# 执行此文件，开始投票，并持续检测，若所有玩家投票结束，进行结算

function re_test:fun_time/vote/main
scoreboard players set test_vote mode 1
function re_test:every_tick/vote/test_vote_ending