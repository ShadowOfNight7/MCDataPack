execute if score @s cooldown matches 1.. run tellraw @s ["You are on cooldown. Please wait ",{"score":{"name":"@s","objective":"cooldown"}}, " ticks."]


execute as @s[tag=HighPriest] at @s if score @s cooldown matches ..0 run function gameify:abilities/high_priest with entity @s


