advancement revoke @s only gameify:placeblock

scoreboard players set @s posX 10
scoreboard players set @s posY 10
scoreboard players set @s posZ 10

execute as @s at @s positioned ~-5 ~-5 ~-5 run function gameify:custom_crafting_detection1 with entity @s

tag @e[tag=CustomCrafterInitial] remove CustomCrafterInitial