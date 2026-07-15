scoreboard players set @s cooldown 2400
tellraw @s ["You used ",{"text":"Soul Harvest","bold":true,"color":"blue"}, "!"]

# execute as @s at @s positioned 0.001 0.001 0.001 positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["AimingOccult"]}

# execute as @e[tag=AimingOccult] store result score @s posX run data get entity @s Pos[0] 10000
# execute as @e[tag=AimingOccult] store result score @s posY run data get entity @s Pos[1] 10000
# execute as @e[tag=AimingOccult] store result score @s posZ run data get entity @s Pos[2] 10000

execute as @s at @s positioned ^ ^ ^1 run summon marker ~ ~1 ~ {Tags:["SoulBinding"]}
execute as @s at @s run rotate @e[tag=SoulBinding,limit=1] ~ ~
say a