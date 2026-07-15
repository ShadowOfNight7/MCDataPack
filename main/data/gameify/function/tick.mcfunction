scoreboard players add @e time 1

execute as @a at @s if score @s shifting matches 1.. run scoreboard players set @s shiftingCheck 1
execute as @a at @s if score @s shifting matches 0 run scoreboard players set @s shiftingCheck 0
execute as @a at @s if score @s shifting matches 1.. run scoreboard players set @s shifting 0

execute as @a unless score @s lives = @s lives run scoreboard players set @s lives 4

execute as @a at @s if score @s deaths matches 1.. run scoreboard players remove @s lives 1
execute as @a at @s if score @s deaths matches 1.. run scoreboard players remove @s deaths 1

execute as @a at @s if score @s lives matches ..0 run gamemode adventure @s

execute as @e[scores={time=1},tag=!NoID] at @s run function gameify:id with entity @s


execute as @e[type=#skeletons,scores={time=1}] at @s run tag @s add Enhanced
execute as @e[type=#skeletons,scores={time=1}] at @s run team join skeletons
#Enemies
execute as @e[type=arrow] at @s run function gameify:enhanced_skeleton/arrow with entity @s

execute as @e[type=#skeletons,tag=Enhanced] at @s run function gameify:enhanced_skeleton/enhanced_skeleton with entity @s
execute as @e[tag=TeleportationSkeleton] at @s run function gameify:teleportskeleton with entity @s


execute as @e[scores={cooldown=1..}] at @s run scoreboard players remove @s cooldown 1



#High Priest
execute as @a[scores={highPriestAbility1=1..},team=Golden] at @s unless entity @a[tag=HighPriest,distance=..25,scores={highPriestAbility1=1..},team=Royal] run function gameify:abilities/high_priest_2 with entity @s
execute as @a[scores={highPriestAbility1=1..},team=Royal] at @s unless entity @a[tag=HighPriest,distance=..25,scores={highPriestAbility1=1..},team=Golden] run function gameify:abilities/high_priest_2 with entity @s

execute as @a[scores={highPriestAbility1=1..}] at @s run scoreboard players remove @s highPriestAbility1 1

scoreboard players set @a[tag=HighPriest] highPriestTraitorNum 0
execute as @a[tag=HighPriest,team=Golden] at @s as @a[distance=..50,tag=!HighPriest,team=Golden] at @s run scoreboard players add @a[tag=HighPriest,team=Golden,limit=1] highPriestTraitorNum 1
execute as @a[tag=HighPriest,team=Royal] at @s as @a[distance=..50,tag=!HighPriest,team=Royal] at @s run scoreboard players add @a[tag=HighPriest,team=Royal,limit=1] highPriestTraitorNum 1
execute as @a[tag=HighPriest,team=Golden] at @s as @e[type=mannequin,distance=..50,tag=!HighPriest,team=Golden] at @s run scoreboard players add @a[tag=HighPriest,team=Golden,limit=1] highPriestTraitorNum 1
execute as @a[tag=HighPriest,team=Royal] at @s as @e[type=mannequin,distance=..50,tag=!HighPriest,team=Royal] at @s run scoreboard players add @a[tag=HighPriest,team=Royal,limit=1] highPriestTraitorNum 1

execute as @a[tag=HighPriest,team=Golden] at @s if score @s highPriestTraitorNum matches 4.. run scoreboard players add @s highPriestTraitor 1
execute as @a[tag=HighPriest,team=Royal] at @s if score @s highPriestTraitorNum matches 4.. run scoreboard players add @s highPriestTraitor 1

execute as @a[tag=HighPriest,team=Golden,scores={highPriestTraitor=..12000}] at @s if score @s highPriestTraitorNum matches ..3 run scoreboard players set @s highPriestTraitor 0
execute as @a[tag=HighPriest,team=Royal,scores={highPriestTraitor=..12000}] at @s if score @s highPriestTraitorNum matches ..3 run scoreboard players set @s highPriestTraitor 0

execute as @a[tag=HighPriest,scores={highPriestTraitor=12000}] store result score @s random run random value 1..100
execute as @a[tag=HighPriest,scores={highPriestTraitor=12000,random=0..85},team=Golden] if entity @e[tag=Solace,distance=..50,team=Golden] run tellraw @s ["You feel a ", {"italic":true,"text":"traitorous presence","color":white,"bold":true}, " nearby..."]
execute as @a[tag=HighPriest,scores={highPriestTraitor=12000,random=86..100},team=Golden] unless entity @e[tag=Solace,distance=..50,team=Golden] run tellraw @s ["You feel a ", {"italic":true,"text":"traitorous presence","color":white,"bold":true}, " nearby..."]
execute as @a[tag=HighPriest,scores={highPriestTraitor=12000,random=0..85},team=Royal] if entity @e[tag=Solace,distance=..50,team=Royal] run tellraw @s ["You feel a ", {"italic":true,"text":"traitorous presence","color":white,"bold":true}, " nearby..."]
execute as @a[tag=HighPriest,scores={highPriestTraitor=12000,random=86..100},team=Royal] unless entity @e[tag=Solace,distance=..50,team=Royal] run tellraw @s ["You feel a ", {"italic":true,"text":"traitorous presence","color":white,"bold":true}, " nearby..."]
execute as @a[tag=HighPriest,scores={highPriestTraitor=102000..}] run scoreboard players set @s highPriestTraitor 0



#1x Emperor - Aboslute Power, /exile command, places banners, players will have to obey him, wears the the crown of absolute control which grants protection and strength, weilds the strongest of the three royal heirlooms, gains the powers of the elder sages if they die, 20 hearts
# 1x High Priest - Sense traitors nearby grants healing and negative effect cleansing, gains the power of Occultist if he dies
# 1x Occultist - Only people who can create revives, has an ability to keep an enemy alive and after a long period of time in their ability radius harvest their soul. the souls are used to break banners
# 2x Elder Sage - Sacred weilders of the royal heirlooms, their power crystals are replaced with amgic sowrds
# 1x The Crusader - 15 hearts, Can spawn a rain of arrows or highlight nearby enemies
# 2x False Prophet - Spy for the RN, will take on any role that isnt high emporer or high preist
# Nx Knight - for each ally nearby gain some absorption
# Mx Worker - Inate fortune on ores and crops and gets to unclock some craftin recipies
# Ox Chaplain - Either throw a mix of regeneration, saturation, and swiftness potions or spawn cobwebs around nearby enemies.
execute as @a[tag=Emperor] at @s run scoreboard players enable @s exile
execute as @a[tag=Emperor,team=Golden,tag=!Exiler] at @s unless score @s exile matches 0 as @a[tag=!Emperor,team=Golden] at @s run tellraw @a[tag=Emperor,team=Golden] ["Input ",{"score":{"name":"@s","objective":"id"}}," To Exile/Unexile ",{"selector":"@s"},"."]
execute as @a[tag=Emperor,team=Royal,tag=!Exiler] at @s unless score @s exile matches 0 as @a[tag=!Emperor,team=Royal] at @s run tellraw @a[tag=Emperor,team=Royal] ["Input ",{"score":{"name":"@s","objective":"id"}}," To Exile/Unexile ",{"selector":"@s"},"."]
execute as @a[tag=Emperor,tag=!Exiler] at @s unless score @s exile matches 0 run tellraw @s ["Input Any Other Value To Cancel"]

execute as @a[tag=Emperor,team=Golden,tag=Exiler] at @s unless score @s exile matches 0 as @a[tag=!Emperor,team=Golden] at @s if score @a[tag=Emperor,team=Golden,tag=Exiler,limit=1] exile = @s id run tag @s add Exiled
execute as @a[tag=Emperor,team=Royal,tag=Exiler] at @s unless score @s exile matches 0 as @a[tag=!Emperor,team=Royal] at @s if score @a[tag=Emperor,team=Royal,tag=Exiler,limit=1] exile = @s id run tag @s add Exiled
execute as @a[tag=Emperor,team=Golden,tag=Exiler] at @s unless score @s exile matches 0 as @a[tag=!Emperor,team=Golden] at @s if score @a[tag=Emperor,team=Golden,tag=Exiler,limit=1] exile = @s id run tag @s add ExiledUnprevent
execute as @a[tag=Emperor,team=Royal,tag=Exiler] at @s unless score @s exile matches 0 as @a[tag=!Emperor,team=Royal] at @s if score @a[tag=Emperor,team=Royal,tag=Exiler,limit=1] exile = @s id run tag @s add ExiledUnprevent

execute as @a[tag=Emperor,tag=Exiler] at @s unless score @s exile matches 0 run tag @s add ExileTag
execute as @a[tag=Emperor,team=Golden,tag=Exiler] at @s unless score @s exile matches 0 as @a[tag=!Emperor,team=Golden] at @s if score @a[tag=Emperor,team=Golden,tag=Exiler,limit=1] exile = @s id run tag @a[tag=Emperor,team=Golden,tag=Exiler] remove ExileTag
execute as @a[tag=Emperor,team=Royal,tag=Exiler] at @s unless score @s exile matches 0 as @a[tag=!Emperor,team=Royal] at @s if score @a[tag=Emperor,team=Royal,tag=Exiler,limit=1] exile = @s id run tag @a[tag=Emperor,team=Royal,tag=Exiler] remove ExileTag

execute as @a[tag=Emperor,tag=ExileTag] at @s unless score @s exile matches 0 run tag @s remove Exiler
execute as @a[tag=Emperor,tag=ExileTag] at @s unless score @s exile matches 0 run scoreboard players set @s exile 0

execute as @a[tag=Emperor,team=Golden,tag=Exiler] at @s unless score @s exile matches 0 as @a[tag=!Emperor,team=Golden,tag=Exiled,tag=!ExiledUnprevent] at @s if score @a[tag=Emperor,team=Golden,tag=Exiler,limit=1] exile = @s id run tag @s remove Exiled
execute as @a[tag=Emperor,team=Royal,tag=Exiler] at @s unless score @s exile matches 0 as @a[tag=!Emperor,team=Royal,tag=Exiled,tag=!ExiledUnprevent] at @s if score @a[tag=Emperor,team=Royal,tag=Exiler,limit=1] exile = @s id run tag @s remove Exiled


execute as @a[tag=Emperor,tag=Exiler] at @s unless score @s exile matches 0 as @a[tag=!Emperor] at @s run tag @s remove Exiler

execute as @a[tag=Emperor,tag=!Exiler] at @s unless score @s exile matches 0 run tag @s add Exiler

execute as @a[tag=Emperor] at @s unless score @s exile matches 0 run scoreboard players set @s exile 0
execute as @a[tag=ExileTag] at @s run tag @s remove ExileTag
execute as @a[tag=ExiledUnprevent] at @s run tag @s remove ExiledUnprevent

execute as @e[tag=Exiled] at @s run tp @s @s

# execute as @a[tag=!Emperor] at @s run scoreboard players  @s exile
say a