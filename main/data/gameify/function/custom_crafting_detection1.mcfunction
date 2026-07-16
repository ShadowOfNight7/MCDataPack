execute as @s if score @s posY matches 0 if score @s posX matches 0 run scoreboard players remove @s posZ 1
execute as @s if score @s posY matches 0 if score @s posX matches 0 run say a
execute as @s if score @s posY matches 0 if score @s posX matches 0 run scoreboard players set @s posY 20

execute as @s if score @s posX matches 0 run scoreboard players remove @s posY 1
execute as @s if score @s posX matches 0 run scoreboard players set @s posX 20

# execute as @s if score @s posX matches 1.. if block ~ ~ ~ spawner unless entity @e[tag=CustomCrafter,distance=..0.5] run summon armor_stand ~ ~ ~ {Tags:["CustomCrafter","CustomCrafterInitial"],NoGravity:true}
execute as @s run setblock ~ ~ ~ bedrock
execute as @s unless entity @e[tag=CustomCrafterInitial] run scoreboard players remove @s posX 1

execute as @s if score @s posX matches ..0 if score @s posY matches ..0 if score @s posZ matches 1.. positioned ~-19 ~-19 ~1 run function gameify:custom_crafting_detection1 with entity @s
execute as @s if score @s posX matches ..0 if score @s posY matches 1.. if score @s posZ matches 1.. positioned ~-19 ~1 ~ run function gameify:custom_crafting_detection1 with entity @s
execute as @s if score @s posX matches 1.. if score @s posY matches 1.. if score @s posZ matches 1.. positioned ~1 ~ ~ run function gameify:custom_crafting_detection1 with entity @s

execute as @s if score @s posZ matches 0 run say a