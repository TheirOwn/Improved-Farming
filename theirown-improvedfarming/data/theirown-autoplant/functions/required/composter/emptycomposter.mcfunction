scoreboard players set @s Composter 4

execute as @s at @s if score bonemeal tap-config matches 0 run function theirown-autoplant:required/composter/bonemeal0
execute as @s at @s if score bonemeal tap-config matches 1 run function theirown-autoplant:required/composter/bonemeal1
execute as @s at @s if score bonemeal tap-config matches 2 run function theirown-autoplant:required/composter/bonemeal2

#restore hopper functionality
data merge block ~ ~-1 ~ {TransferCooldown:0}

#reset composter
scoreboard players set @s Composter 2