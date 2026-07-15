execute as @s at @s run summon arrow ~ ~35 ~ {Tags:["ArrowRaining","ArrowRaining2"],Motion:[0d,-2.5d,0d]}

execute as @e[tag=ArrowRaining2] at @s store result entity @s Motion[0] double 0.0001 run random value -3000..3000
execute as @e[tag=ArrowRaining2] at @s store result entity @s Motion[2] double 0.0001 run random value -3000..3000

execute as @e[tag=ArrowRaining2] at @s store result score @s posX run data get entity @s Pos[0] 10000
execute as @e[tag=ArrowRaining2] at @s store result score @s posY run data get entity @s Pos[1] 10000
execute as @e[tag=ArrowRaining2] at @s store result score @s posZ run data get entity @s Pos[2] 10000

execute as @e[tag=ArrowRaining2] at @s store result score @s random run random value -150000..150000
execute as @e[tag=ArrowRaining2] at @s store result entity @s Pos[0] double 0.0001 run scoreboard players operation @s posX += @s random
execute as @e[tag=ArrowRaining2] at @s store result score @s random run random value -30000..30000
execute as @e[tag=ArrowRaining2] at @s store result entity @s Pos[1] double 0.0001 run scoreboard players operation @s posY += @s random
execute as @e[tag=ArrowRaining2] at @s store result score @s random run random value -150000..150000
execute as @e[tag=ArrowRaining2] at @s store result entity @s Pos[2] double 0.0001 run scoreboard players operation @s posZ += @s random

tag @e[tag=ArrowRaining2] remove ArrowRaining2



kill @s[scores={time=600..}]