# execute as @e[type=end_crystal] at @s run particle end_rod ~ ~-10 ~ 1.8 30 1.8 0.3 50 force

execute as @s[nbt={ShowBottom:true}] at @s unless entity @e[type=marker,distance=..1,tags=] run summon marker ~ ~ ~ {Tags:["EndCrystalMarker"]}

execute as @s[nbt={ShowBottom:true}] at @s store result data @s beam_target[0]  