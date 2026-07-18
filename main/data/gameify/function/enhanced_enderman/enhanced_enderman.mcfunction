execute as @s at @s on target run tag @s add EndermanTarget
execute as @s at @s unless entity @e[tag=EndermanTarget] if entity @p[distance=..7,gamemode=!creative,gamemode=!spectator] run damage @s 0 magic by @p[distance=..7,gamemode=!creative,gamemode=!spectator]

# execute as @s[nbt={HurtTime:9s}] at @s run damage @s 0 arrow
execute as @s at @s if score @s time matches 200.. run damage @s 0 arrow
execute as @s at @s if score @s time matches 200.. run effect give @s invisibility 3
execute as @s at @s if score @s time matches 200.. run scoreboard players set @s time 100

# execute as @s at @s run rotate @p[tag=EndermanTarget,distance=..3.65] facing entity @s
execute as @p[tag=EndermanTarget,distance=..3.65] at @s run effect give @s blindness 2 0 false
execute as @s at @s run damage @p[tag=EndermanTarget,distance=..3.65] 0.6 magic by @s from @s
tag @e[tag=EndermanTarget] remove EndermanTarget