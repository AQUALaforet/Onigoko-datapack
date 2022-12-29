team join oni @a[scores={health=..10}]
tag @a[scores={health=..10}] add live
execute positioned as @e[type=armor_stand,tag=onispawn,limit=1,sort=random] run tp @a[scores={health=..10}] ~ ~1 ~
execute if entity @a[team=oni,scores={health=..10}] run tellraw @a ["",{"selector":"@a[team=oni,scores={health=..10}]","color":"red"},{"text":"\u304c\u9b3c\u306b\u6355\u307e\u3063\u305f","color":"red"}]
effect give @a[team=!oni] weakness 1 10 true
effect give @a[scores={health=..10}] instant_health 1 5 true