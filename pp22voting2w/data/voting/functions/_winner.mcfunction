scoreboard players operation .max .vdata = .p1 .votes
scoreboard players operation .mid .vdata = .p1 .votes
scoreboard players set .iters .vdata 5
function voting:get_max

#case draw
function voting:find_draw
scoreboard players set .iters2 .vdata 5
#no draw
execute if score .same .vdata matches 1 run function voting:get_mid
#draw 2
execute if score .same .vdata matches 2 run scoreboard players set .mid .vdata -999
#1-2
function voting:find_draw_mid
execute if score .same .vdata matches 1..2 if score .same2 .vdata matches 1 run function voting:player

#draw 3+
execute if score .same2 .vdata matches 2.. run function voting:draw_mid
execute if score .same .vdata matches 3.. run function voting:draw