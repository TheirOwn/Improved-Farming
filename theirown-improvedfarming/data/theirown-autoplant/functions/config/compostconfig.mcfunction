scoreboard players set @s tap-trigger 0
execute as @s run function theirown-autoplant:config/clearchat
tellraw @s ["",{"text":"Composter Setting","color":"white","bold":"true"}]
execute if score compostmode tap-config matches 1 run tellraw @s ["",{"text":"Change composter output to dirt","clickEvent":{"action":"run_command","value":"/trigger tap-trigger set 6"},"color":"green"}]
execute if score compostmode tap-config matches 0 run tellraw @s ["",{"text":"Change composter output bonemeal","clickEvent":{"action":"run_command","value":"/trigger tap-trigger set 5"},"color":"green"}]
tellraw @s ["",{"text":"Edit number of bonemeal created","clickEvent":{"action":"run_command","value":"/trigger tap-trigger set 4"},"color":"green"}]
tellraw @s ["",{"text":"Go Back","color":"green","clickEvent":{"action":"run_command","value":"/trigger tap-trigger set 1"}}]