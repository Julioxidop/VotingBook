#if player have not voted for this player add 1 point
execute if entity @s[tag=!p5_voted] run scoreboard players add .p5 .votes 1
execute if entity @s[tag=!p5_voted] run function voting:modify/p5

#if player have already voted for this player
execute if entity @s[tag=p5_voted] run function voting:modify/already

#if player have already voted for another player
execute as @s[tag=!p5_voted] run function voting:votes/remove_votes

#add reminder
tag @s add p5_voted

scoreboard players reset @s .trigger
scoreboard players enable @s .trigger
