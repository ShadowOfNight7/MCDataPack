# execute as @e[type=end_crystal] at @s run particle end_rod ~ ~-10 ~ 1.8 30 1.8 0.3 50 force
execute as @s[nbt={ShowBottom:true}] at @s unless entity @e[type=marker,distance=..1,tag=EndCrystalMarker] run summon marker ~ ~ ~ {Tags:["EndCrystalMarker"]}
execute as @s[nbt={ShowBottom:true}] at @s store result entity @s beam_target[0] byte 0.0001 run data get entity @e[type=ender_dragon,limit=1] Pos[0] 10000
execute as @s[nbt={ShowBottom:true}] at @s store result entity @s beam_target[1] byte 0.0001 run data get entity @e[type=ender_dragon,limit=1] Pos[1] 10000
execute as @s[nbt={ShowBottom:true}] at @s store result entity @s beam_target[2] byte 0.0001 run data get entity @e[type=ender_dragon,limit=1] Pos[2] 10000

