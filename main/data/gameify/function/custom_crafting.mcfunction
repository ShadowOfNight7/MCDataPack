advancement revoke @s only gameify:placeblock

scoreboard players set @s posX 500

execute as @s at @s positioned ~ ~ ~ run function gameify:custom_crafting_detection1 with entity @s

tag @e[tag=CustomCrafterInitial] remove CustomCrafterInitial