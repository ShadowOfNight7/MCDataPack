advancement revoke @s only gameify:placeblock

scoreboard players set @s posX 5
scoreboard players set @s posY 5
scoreboard players set @s posZ 5

execute as @s at @s positioned ^ ^ ^2.5 positioned ~-2.5 ~-2.5 ~-2.5 run function gameify:custom_crafting_detection1 with entity @s


execute as @e[tag=CustomCrafterInitial] at @s run fill ~ ~ ~ ~ ~ ~ dropper replace spawner

execute as @e[tag=CustomCrafterInitial] at @s align xyz run summon block_display ~ ~ ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.001f,1.001f,1.001f]},block_state:{Name:"minecraft:crafting_table"}}

tag @e[tag=CustomCrafterInitial] remove CustomCrafterInitial

