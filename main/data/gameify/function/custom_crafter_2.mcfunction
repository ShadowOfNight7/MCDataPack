
execute as @s at @s run item replace entity @e[tag=CustomHold] weapon.mainhand with dropper[custom_data={result:1b},container=[{slot:1,item:{id:"minecraft:tide_armor_trim_smithing_template",components:{"minecraft:custom_data":{item_id:1b}}}},{slot:3,item:{id:"minecraft:tide_armor_trim_smithing_template",components:{"minecraft:custom_data":{item_id:1b}}}},{slot:4,item:{id:"minecraft:tide_armor_trim_smithing_template",components:{"minecraft:custom_data":{item_id:1b}}}},{slot:5,item:{id:"minecraft:tide_armor_trim_smithing_template",components:{"minecraft:custom_data":{item_id:1b}}}},{slot:7,item:{id:"minecraft:tide_armor_trim_smithing_template",components:{"minecraft:custom_data":{item_id:1b}}}}]]

execute as @s at @s run function gameify:custom_testrecipe with entity @s



execute as @s at @s unless block ~ ~ ~ dropper align xyz run kill @e[distance=..0.1,type=block_display]
execute as @s at @s unless block ~ ~ ~ dropper run kill @e[distance=..0.8,type=item,nbt={Item:{id:"minecraft:dropper"}}]
execute as @s at @s unless block ~ ~ ~ dropper run summon item ~ ~0.2 ~ {Item:{id:"minecraft:spawner",count:1b,components:{block_entity_data:{id:"mob_spawner",SpawnCount:0s,SpawnRange:0},custom_data:{custom_crafting:1}}}}
execute as @s at @s unless block ~ ~ ~ dropper align xyz run kill @s

