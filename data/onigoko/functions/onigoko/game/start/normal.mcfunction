gamemode spectator @a[team=nge,scores={health=..10}]
tag @a[team=nge,scores={health=..10}] add sp
execute if entity @a[tag=sp,scores={health=..10}] run tellraw @a ["",{"selector":"@a[tag=sp,scores={health=..10}]","color":"red"},{"text":"\u304c\u9b3c\u306b\u6355\u307e\u3063\u305f","color":"red"}]
team leave @a[team=nge,scores={health=..10}]
effect give @a[tag=sp] instant_health 1 5 true
tag @a[tag=sp] remove sp