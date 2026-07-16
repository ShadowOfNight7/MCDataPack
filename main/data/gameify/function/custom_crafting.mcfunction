advancement revoke @s only gameify:placeblock

scoreboard players set @s posX 5
scoreboard players set @s posY 5
scoreboard players set @s posZ 5

execute as @s at @s positioned ^ ^ ^2.5 positioned ~-2.5 ~-2.5 ~-2.5 run function gameify:custom_crafting_detection1 with entity @s

tag @e[tag=CustomCrafterInitial] remove CustomCrafterInitial

