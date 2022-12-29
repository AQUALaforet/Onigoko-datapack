execute positioned as @e[type=armor_stand,tag=keidorospawn] run tp @a[team=nge,scores={health=..10}] ~ ~ ~
execute if entity @a[team=nge,scores={health=..10}] run tellraw @a ["",{"selector":"@a[team=nge,scores={health=..10}]","color":"gray"},{"text":"\u304c\u9b3c\u306b\u6355\u307e\u3063\u305f","color":"red"}]
team join ice @a[team=nge,scores={health=..10}]
effect give @a[team=ice] instant_health 1 5 true
effect give @a[team=ice] resistance 1 5 true
execute positioned as @e[type=armor_stand,tag=keidoroexit] if entity @p[team=ice,distance=..0.5] run tag @p[team=ice,distance=..1] add exit
execute if entity @a[team=ice,tag=exit] run tellraw @a ["",{"selector":"@a[team=ice,tag=exit]","color":"gray"},{"text":"\u304c\u8131\u8d70\u3057\u305f!","color":"aqua"}]
team join nge @a[tag=exit]
tag @a[tag=exit] remove exit