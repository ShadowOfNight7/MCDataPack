scoreboard players set @s cooldown 3600

execute as @s at @s rotated ~ 0 positioned ^ ^ ^10 run summon armor_stand ~ ~ ~ {Tags:["ArrowRain"]}
execute as @s at @s as @e[tag=ArrowRain,distance=9.5..10.5] at @s run spreadplayers ~ ~ 0 1 true @s