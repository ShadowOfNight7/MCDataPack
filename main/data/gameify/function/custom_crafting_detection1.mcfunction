execute as @s if score @s posX matches 1.. if block ~ ~ ~ spawner unless entity @e[tag=CustomCrafter,distance=..0.5] align xyz positioned ~0.5 ~ ~0.5 run summon armor_stand ~ ~ ~ {Tags:["CustomCrafter","CustomCrafterInitial"],NoGravity:true}

execute as @s unless entity @e[tag=CustomCrafterInitial] run scoreboard players remove @s posX 1
execute as @s if entity @e[tag=CustomCrafterInitial] run scoreboard players set @s posZ 0

execute as @s if score @s posX matches 1.. positioned ^ ^ ^0.01 run function gameify:custom_crafting_detection1 with entity @s
