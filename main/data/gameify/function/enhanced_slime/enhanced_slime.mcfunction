execute as @s at @s store result score @s random run data get entity @s Size

tag @s[tag=!Goodbye] add TargetCube

execute as @e[type=slime,distance=..5,tag=!TargetCube,scores={time=100..}] at @s if score @s random = @e[tag=TargetCube,limit=1,type=slime,scores={time=100..}] random as @e[tag=TargetCube,limit=1,type=slime,scores={time=100..}] at @s run function gameify:enhanced_slime/slimegrow with entity @s
execute as @e[type=slime,distance=..5,tag=!TargetCube,scores={time=100..}] at @s if score @s random = @e[tag=TargetCube,limit=1,type=slime,scores={time=100..}] random run tag @s add Goodbye
execute as @e[type=slime,distance=..5,tag=!TargetCube,scores={time=100..}] at @s if score @s random = @e[tag=TargetCube,limit=1,type=slime,scores={time=100..}] random run tp @s ~ -200 ~

execute as @e[type=magma_cube,distance=..5,tag=!TargetCube,scores={time=100..}] at @s if score @s random = @e[tag=TargetCube,limit=1,type=magma_cube,scores={time=100..}] random as @e[tag=TargetCube,limit=1,type=magma_cube,scores={time=100..}] at @s run function gameify:enhanced_slime/slimegrow with entity @s
execute as @e[type=magma_cube,distance=..5,tag=!TargetCube,scores={time=100..}] at @s if score @s random = @e[tag=TargetCube,limit=1,type=magma_cube,scores={time=100..}] random run tag @s add Goodbye
execute as @e[type=magma_cube,distance=..5,tag=!TargetCube,scores={time=100..}] at @s if score @s random = @e[tag=TargetCube,limit=1,type=magma_cube,scores={time=100..}] random run tp @s ~ -200 ~

tag @s remove TargetCube

execute as @s[scores={random=5}] at @s unless entity @s[nbt={equipment:{mainhand:{id:"minecraft:slime_spawn_egg",count:1}},drop_chances:{mainhand:1f}}] run data merge entity @s {equipment:{mainhand:{id:"minecraft:slime_spawn_egg",count:1}},drop_chances:{mainhand:1f}}
execute as @s[scores={time=1}] at @s run effect give @s jump_boost infinite 2 false

execute as @s[scores={random=3}] at @s run effect give @s strength 1 0 true
execute as @s[scores={random=4}] at @s run effect give @s strength 1 1 true
execute as @s[scores={random=5}] at @s run effect give @s strength 1 2 true
execute as @s[scores={random=6}] at @s run effect give @s strength 1 3 true
execute as @s[scores={random=7}] at @s run effect give @s strength 1 4 true
execute as @s[scores={random=8}] at @s run effect give @s strength 1 5 true
execute as @s[scores={random=9}] at @s run effect give @s strength 1 6 true
execute as @s[scores={random=10..}] at @s run effect give @s strength 1 7 true
