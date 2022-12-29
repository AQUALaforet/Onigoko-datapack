clear @a[team=!ice] packed_ice
effect give @a[tag=ice3,scores={health=..10}] instant_health 1 5 true
tag @a[tag=ice3,team=ice,scores={health=11..16}] add ice2
effect give @a[tag=ice2] instant_health 1 5 true
effect give @a[tag=ice2] invisibility 10 1 true
execute if entity @a[tag=ice2] run tellraw @a ["",{"selector":"@a[tag=ice2]","color":"dark_aqua"},{"text":"\u304c\u6eb6\u3051\u305f","color":"aqua"}]
tag @a[tag=ice2] remove ice3
team join nge @a[tag=ice2]
scoreboard players set @a[tag=ice2] ic4 100
effect clear @a[tag=ice2] blindness
effect clear @a[tag=ice2] slowness
effect clear @a[tag=ice2] jump_boost
tag @a[tag=ice2] remove ice2
execute positioned as @a[team=ice] run attribute @p[team=ice] generic.knockback_resistance base set 10
execute positioned as @a[team=!ice] run attribute @p[team=!ice] generic.knockback_resistance base set 0
execute positioned as @a[team=ice] run attribute @p[team=ice] generic.knockback_resistance base set 10

tag @a[team=nge,scores={health=..10}] add ice
effect give @a[tag=ice] instant_health 1 5 true
team join ice @a[tag=ice]
execute if entity @a[tag=ice] run tellraw @a ["",{"selector":"@a[tag=ice]","color":"dark_aqua"},{"text":"\u304c\u51cd\u3063\u3066\u3057\u307e\u3063\u305f","color":"aqua"}]
tag @a[tag=ice] add ice3
tag @a[tag=ice] remove ice

effect give @a[team=nge] strength 1 1 true
effect give @a[team=oni] resistance 1 255 true
effect give @a[team=ice] blindness 10 0 true
effect give @a[team=ice] slowness 10 50 true
effect give @a[team=ice] jump_boost 10 230 true
item replace entity @a[team=ice] armor.head with packed_ice{display:{Name:'{"text":" "}'},HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]}