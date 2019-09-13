scoreboard players set @s tap-trigger 0
tellraw @s ["",{"text":"Composter Setting","color":"white","bold":"true"}]
tellraw @s ["",{"text":"Edit composter settings","clickEvent":{"action":"run_command","value":"/trigger tap-trigger set 2"},"color":"green"}]
tellraw @s ["",{"text":"Edit auto plant settings","clickEvent":{"action":"run_command","value":"/trigger tap-trigger set 3"},"color":"green"}]