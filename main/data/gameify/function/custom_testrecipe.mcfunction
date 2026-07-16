scoreboard players set @s posZ 100

say a

execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[0] store result score @s posX run data get block ~ ~ ~ Items[0].Slot
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[0] run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[0].slot store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[0].slot
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[0].slot run scoreboard players set @s posX -999
tellraw Pokemon858 ["a", {"score":{"name":"@s","objective":"posX"}}]
tellraw Pokemon858 ["a", {"score":{"name":"@e[tag=CustomHold,limit=1]","objective":"posX"}}]
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 0



execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[0].components."minecraft:custom_data".item_id store result score @s posX run data get entity @s Items[0].components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[0].components."minecraft:custom_data".item_id run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[0].components."minecraft:custom_data".item_id store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[0].components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[0].components."minecraft:custom_data".item_id run scoreboard players set @s posX -999
tellraw Pokemon858 ["b", {"score":{"name":"@s","objective":"posX"}}]
tellraw Pokemon858 ["b", {"score":{"name":"@e[tag=CustomHold,limit=1]","objective":"posX"}}]
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 0

execute if score @s posZ matches 100 run say 1

execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[1] store result score @s posX run data get block ~ ~ ~ Items[1].Slot
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[1] run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[1].slot store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[1].slot
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[1].slot run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 0

execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[1].components."minecraft:custom_data".item_id store result score @s posX run data get entity @s Items[1].components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[1].components."minecraft:custom_data".item_id run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[1].components."minecraft:custom_data".item_id store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[1].components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[1].components."minecraft:custom_data".item_id run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 0

execute if score @s posZ matches 100 run say 2

execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[2] store result score @s posX run data get block ~ ~ ~ Items[2].Slot
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[2] run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[2].slot store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[2].slot
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[2].slot run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 0

execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[2].components."minecraft:custom_data".item_id store result score @s posX run data get entity @s Items[2].components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[2].components."minecraft:custom_data".item_id run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[2].components."minecraft:custom_data".item_id store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[2].components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[2].components."minecraft:custom_data".item_id run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 0

execute if score @s posZ matches 100 run say 3

execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[3] store result score @s posX run data get block ~ ~ ~ Items[3].Slot
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[3] run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[3].slot store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[3].slot
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[3].slot run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 0

execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[3].components."minecraft:custom_data".item_id store result score @s posX run data get entity @s Items[0].components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[3].components."minecraft:custom_data".item_id run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[3].components."minecraft:custom_data".item_id store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[3].components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[3].components."minecraft:custom_data".item_id run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 0

execute if score @s posZ matches 100 run say 4

execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[4] store result score @s posX run data get block ~ ~ ~ Items[4].Slot
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[4] run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[4].slot store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[4].slot
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[4].slot run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 0

execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[4].components."minecraft:custom_data".item_id store result score @s posX run data get entity @s Items[4].components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[4].components."minecraft:custom_data".item_id run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[4].components."minecraft:custom_data".item_id store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[4].components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[4].components."minecraft:custom_data".item_id run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 0

execute if score @s posZ matches 100 run say 5

execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[5] store result score @s posX run data get block ~ ~ ~ Items[5].Slot
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[5] run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[5].slot store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[5].slot
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[5].slot run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 0

execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[5].components."minecraft:custom_data".item_id store result score @s posX run data get entity @s Items[5].components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[5].components."minecraft:custom_data".item_id run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[5].components."minecraft:custom_data".item_id store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[5].components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[5].components."minecraft:custom_data".item_id run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 0

execute if score @s posZ matches 100 run say 6

execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[6] store result score @s posX run data get block ~ ~ ~ Items[6].Slot
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[6] run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[6].slot store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[6].slot
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[6].slot run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 0

execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[6].components."minecraft:custom_data".item_id store result score @s posX run data get entity @s Items[6].components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[6].components."minecraft:custom_data".item_id run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[6].components."minecraft:custom_data".item_id store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[6].components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[6].components."minecraft:custom_data".item_id run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 0

execute if score @s posZ matches 100 run say 7

execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[7] store result score @s posX run data get block ~ ~ ~ Items[7].Slot
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[7] run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[7].slot store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[7].slot
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[7].slot run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 0

execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[7].components."minecraft:custom_data".item_id store result score @s posX run data get entity @s Items[7].components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[7].components."minecraft:custom_data".item_id run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[7].components."minecraft:custom_data".item_id store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[7].components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[7].components."minecraft:custom_data".item_id run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 0

execute if score @s posZ matches 100 run say 8

execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[8] store result score @s posX run data get block ~ ~ ~ Items[8].Slot
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[8] run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[8].slot store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[8].slot
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[8].slot run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 0

execute if score @s posZ matches 100 as @s at @s if data block ~ ~ ~ Items[8].components."minecraft:custom_data".item_id store result score @s posX run data get entity @s Items[8].components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @s at @s unless data block ~ ~ ~ Items[8].components."minecraft:custom_data".item_id run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s if data entity @s equipment.mainhand.components."minecraft:container"[8].components."minecraft:custom_data".item_id store result score @s posX run data get entity @s equipment.mainhand.components."minecraft:container"[8].components."minecraft:custom_data".item_id
execute if score @s posZ matches 100 as @e[tag=CustomHold] at @s unless data entity @s equipment.mainhand.components."minecraft:container"[8].components."minecraft:custom_data".item_id run scoreboard players set @s posX -999
execute if score @s posZ matches 100 as @s at @s unless score @s posX = @e[tag=CustomHold,limit=1] posX run scoreboard players set @s posZ 0

execute if score @s posZ matches 100 run summon item ~ ~1 ~ {Item:{id:command_block,count:1,components:{custom_name:[{"text":"Perfect Diamond","italic":false,"color":"gold"}],lore:[[{"text":"Only through endless modification has it reached perfection...","italic":false,"color":"gray"}],[{"text":"Perhaps that says more about us than it does about it.","italic":false,"color":"gray"}]],rarity:uncommon,item_model:"minecraft:diamond_nautilus_armor",custom_data:{item_id:2b}}}}