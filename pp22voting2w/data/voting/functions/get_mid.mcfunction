execute if score .p1 .votes > .mid .vdata if score .p1 .votes < .max .vdata run scoreboard players operation .mid .vdata = .p1 .votes
execute if score .p2 .votes > .mid .vdata if score .p2 .votes < .max .vdata run scoreboard players operation .mid .vdata = .p2 .votes
execute if score .p3 .votes > .mid .vdata if score .p3 .votes < .max .vdata run scoreboard players operation .mid .vdata = .p3 .votes
execute if score .p4 .votes > .mid .vdata if score .p4 .votes < .max .vdata run scoreboard players operation .mid .vdata = .p4 .votes
execute if score .p5 .votes > .mid .vdata if score .p5 .votes < .max .vdata run scoreboard players operation .mid .vdata = .p5 .votes


scoreboard players remove .iters2 .vdata 1
execute if score .iters2 .vdata matches 1.. run function voting:get_mid