





execute as @s at @s unless block ~ ~ ~ dropper align xyz run kill @e[distance=..0.1,type=block_display]
execute as @s at @s unless block ~ ~ ~ dropper run kill @e[distance=..0.5,type=item,nbt={Item:{components:{"minecraft:block_entity_data":{id:"minecraft:dropper"}}}}]
execute as @s at @s unless block ~ ~ ~ dropper run summon item ~ ~0.2 ~ {Item:{id:"minecraft:spawner",count:1b,components:{block_entity_data:{id:"mob_spawner",SpawnCount:0s,SpawnRange:0},custom_data:{custom_crafting:1}}}}
execute as @s at @s unless block ~ ~ ~ dropper align xyz run kill @s

