team join nge @a[scores={a_damage=1..}]
tag @a[scores={health=..10}] add kawari
team join oni @a[tag=kawari]
effect give @a[tag=kawari] blindness 10 0 true
effect give @a[tag=kawari] slowness 10 50 true
effect give @a[tag=kawari] weakness 10 200 true
execute if entity @a[tag=kawari] run tellraw @a ["",{"selector":"@a[tag=kawari]","color":"red"},{"text":"\u304c\u9b3c\u306b\u306a\u308a\u307e\u3057\u305f","color":"yellow"}]
tag @a[tag=kawari] remove kawari
scoreboard players set @a[scores={a_damage=1..}] a_damage 0

effect give @a[team=!oni] weakness 1 10 true
effect give @a[scores={health=..10}] instant_health 1 5 true