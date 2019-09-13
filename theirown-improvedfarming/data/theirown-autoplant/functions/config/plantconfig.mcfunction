scoreboard players set @s tap-trigger 0
execute as @s run function theirown-autoplant:config/clearchat
tellraw @s ["",{"text":"Plant Settings","color":"white","bold":"true"}]
execute if score enabletrees tap-config matches 1 run tellraw @s ["",{"text":"Disable tree autoplanting","clickEvent":{"action":"run_command","value":"/trigger tap-trigger set 7"},"color":"red"}]
execute if score enabletrees tap-config matches 0 run tellraw @s ["",{"text":"Enable tree autoplanting","clickEvent":{"action":"run_command","value":"/trigger tap-trigger set 8"},"color":"green"}]
execute unless score planttime itemage matches 0 run tellraw @s ["",{"text":"Enable instant planting","clickEvent":{"action":"run_command","value":"/trigger tap-trigger set 9"},"color":"green"}]
execute if score planttime itemage matches 0 run tellraw @s ["",{"text":"Disable instant planting","clickEvent":{"action":"run_command","value":"/trigger tap-trigger set 10"},"color":"red"}]
tellraw @s ["",{"text":"Go Back","color":"green","clickEvent":{"action":"run_command","value":"/trigger tap-trigger set 1"}}]