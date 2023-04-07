scoreboard objectives remove .trigger
scoreboard objectives remove .votes
scoreboard objectives remove .vdata

scoreboard objectives add .trigger trigger
scoreboard objectives add .votes dummy

scoreboard players set .p1 .votes 0
scoreboard players set .p2 .votes 0
scoreboard players set .p3 .votes 0
scoreboard players set .p4 .votes 0
scoreboard players set .p5 .votes 0

scoreboard objectives add .vdata dummy
scoreboard players set .iters .vdata -1
say reloaded voting