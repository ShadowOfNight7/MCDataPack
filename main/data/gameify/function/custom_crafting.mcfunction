advancement revoke @s only gameify:placeblock

scoreboard players set @s posX 20
scoreboard players set @s posY 20
scoreboard players set @s posZ 20

execute as @s at @s positioned ~-10 ~-10 ~-10 run function gameify:custom_crafting_detection1 with entity @s

tag @e[tag=CustomCrafterInitial] remove CustomCrafterInitial