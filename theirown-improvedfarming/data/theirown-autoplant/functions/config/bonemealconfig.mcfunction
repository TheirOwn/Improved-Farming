scoreboard players set @s tap-trigger 0
execute as @s run function theirown-autoplant:config/clearchat
tellraw @s ["",{"text":"Bonemeal Settings","color":"white","bold":"true"}]
execute unless score bonemeal tap-config matches 0 run tellraw @s ["",{"text":"Lowest: 4","clickEvent":{"action":"run_command","value":"/trigger tap-trigger set 11"},"color":"green"}]
execute if score bonemeal tap-config matches 0 run tellraw @s ["",{"text":"Lowest: 4 (Current)","color":"blue"}]
execute unless score bonemeal tap-config matches 1 run tellraw @s ["",{"text":"Half: 9 (Default)","clickEvent":{"action":"run_command","value":"/trigger tap-trigger set 12"},"color":"green"}]
execute if score bonemeal tap-config matches 1 run tellraw @s ["",{"text":"Half: 9 (Current)","color":"blue"}]
execute unless score bonemeal tap-config matches 2 run tellraw @s ["",{"text":"Highest: 16","clickEvent":{"action":"run_command","value":"/trigger tap-trigger set 13"},"color":"red"}]
execute if score bonemeal tap-config matches 2 run tellraw @s ["",{"text":"Highest: 16 (Current)","color":"blue"}]
tellraw @s ["",{"text":"Go Back","color":"green","clickEvent":{"action":"run_command","value":"/trigger tap-trigger set 1"}}]
