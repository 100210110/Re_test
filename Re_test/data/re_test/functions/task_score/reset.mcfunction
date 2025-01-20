# 运行此函数清理计分板后调用初始化函数
scoreboard objectives remove kill
scoreboard objectives add kill totalKillCount {"text":"任务面板","color":"gold","bold":true}
scoreboard objectives setdisplay sidebar.team.blue kill
scoreboard objectives setdisplay sidebar.team.dark_blue kill
function re_test:task_score/main