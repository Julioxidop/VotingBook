execute if score .p1 .votes > .max .vdata run scoreboard players operation .max .vdata = .p1 .votes
execute if score .p2 .votes > .max .vdata run scoreboard players operation .max .vdata = .p2 .votes
execute if score .p3 .votes > .max .vdata run scoreboard players operation .max .vdata = .p3 .votes
execute if score .p4 .votes > .max .vdata run scoreboard players operation .max .vdata = .p4 .votes
execute if score .p5 .votes > .max .vdata run scoreboard players operation .max .vdata = .p5 .votes

scoreboard players remove .iters .vdata 1
execute if score .iters .vdata matches 1.. run function voting:get_max