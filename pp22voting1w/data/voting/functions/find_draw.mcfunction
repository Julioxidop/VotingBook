scoreboard players set .iters .vdata -1
scoreboard players set .same .vdata 0
execute if score .max .vdata = .p1 .votes run scoreboard players add .same .vdata 1
execute if score .max .vdata = .p2 .votes run scoreboard players add .same .vdata 1
execute if score .max .vdata = .p3 .votes run scoreboard players add .same .vdata 1
execute if score .max .vdata = .p4 .votes run scoreboard players add .same .vdata 1
execute if score .max .vdata = .p5 .votes run scoreboard players add .same .vdata 1

execute if score .same .vdata matches 1 run function voting:player
execute if score .same .vdata matches 2.. run function voting:draw