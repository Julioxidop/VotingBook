execute if score .p1 .votes = .max .vdata as @e[tag=vote1] at @s run function voting:modify/draw_action
execute if score .p2 .votes = .max .vdata as @e[tag=vote2] at @s run function voting:modify/draw_action
execute if score .p3 .votes = .max .vdata as @e[tag=vote3] at @s run function voting:modify/draw_action
execute if score .p4 .votes = .max .vdata as @e[tag=vote4] at @s run function voting:modify/draw_action
execute if score .p5 .votes = .max .vdata as @e[tag=vote5] at @s run function voting:modify/draw_action

function voting:modify/draw