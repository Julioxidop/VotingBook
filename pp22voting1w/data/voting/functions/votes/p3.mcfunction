#if player have not voted for this player add 1 point
execute if entity @s[tag=!p3_voted] run scoreboard players add .p3 .votes 1
execute if entity @s[tag=!p3_voted] run function voting:modify/p3

#if player have already voted for this player
execute if entity @s[tag=p3_voted] run function voting:modify/already

#if player have already voted for another player
execute as @s[tag=!p3_voted] run function voting:votes/remove_votes

#add reminder
tag @s add p3_voted

scoreboard players reset @s .trigger
scoreboard players enable @s .trigger
