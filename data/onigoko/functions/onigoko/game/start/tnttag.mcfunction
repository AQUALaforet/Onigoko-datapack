effect give @a[team=oni] speed 1 3 true
effect give @a[team=nge] speed 1 2 true
effect clear @a[team=nge] strength
effect give @a resistance 1 0 true
effect give @a regeneration 1 10 true
team join nge @a[scores={a_damage=7..}]
tag @a[team=nge,scores={health=..16}] add tnt
effect give @a[scores={health=..10}] instant_health 1 5 true
team join oni @a[tag=tnt]
effect clear @a[scores={a_damage=7..}] speed
execute if entity @a[tag=tnt] run tellraw @a ["",{"selector":"@a[tag=tnt]","color":"red"},{"text":"\u304c\u7206\u5f3e\u3092\u6240\u6301\u3057\u3066\u3044\u307e\u3059!","color":"yellow"}]
tag @a[tag=tnt] remove tnt
tag @a[scores={health=..4}] add tnt2
gamemode spectator @a[tag=tnt2]
team leave @a[tag=tnt2]
tag @a[tag=tnt2] remove tnt2
scoreboard players set @a[scores={a_damage=1..}] a_damage 0
effect give @a[scores={health=..16}] instant_health 1 5 true
item replace entity @a[team=oni] hotbar.0 with tnt
item replace entity @a[team=oni] hotbar.1 with tnt
item replace entity @a[team=oni] hotbar.2 with tnt
item replace entity @a[team=oni] hotbar.3 with tnt
item replace entity @a[team=oni] hotbar.4 with tnt
item replace entity @a[team=oni] hotbar.5 with tnt
item replace entity @a[team=oni] hotbar.6 with tnt
item replace entity @a[team=oni] hotbar.7 with tnt
item replace entity @a[team=oni] hotbar.8 with tnt
execute if score game settings matches 1 if score mode settings matches 5 if score nge settings matches 20.. run scoreboard players set min time 1
execute if score game settings matches 1 if score mode settings matches 5 if score nge settings matches 20.. run scoreboard players set sec time 30
execute if score game settings matches 1 if score mode settings matches 5 if score nge settings matches 16..19 run scoreboard players set min time 1
execute if score game settings matches 1 if score mode settings matches 5 if score nge settings matches 16..19 run scoreboard players set sec time 0
execute if score game settings matches 1 if score mode settings matches 5 if score nge settings matches 12..15 run scoreboard players set min time 1
execute if score game settings matches 1 if score mode settings matches 5 if score nge settings matches 12..15 run scoreboard players set sec time 0
execute if score game settings matches 1 if score mode settings matches 5 if score nge settings matches 8..11 run scoreboard players set min time 0
execute if score game settings matches 1 if score mode settings matches 5 if score nge settings matches 8..11 run scoreboard players set sec time 45
execute if score game settings matches 1 if score mode settings matches 5 if score nge settings matches 4..7 run scoreboard players set min time 0
execute if score game settings matches 1 if score mode settings matches 5 if score nge settings matches 4..7 run scoreboard players set sec time 45
execute if score game settings matches 1 if score mode settings matches 5 if score nge settings matches 1..3 run scoreboard players set min time 0
execute if score game settings matches 1 if score mode settings matches 5 if score nge settings matches 1..3 run scoreboard players set sec time 30
execute if score mode settings matches 5 if score game settings matches 1 run title @a actionbar ["",{"text":"\u9003","color":"aqua"},{"text":":","color":"yellow"},{"score":{"name":"nge","objective":"settings"},"color":"aqua"},{"text":"\u4eba","color":"yellow"},{"text":" \u30e9\u30a6\u30f3\u30c9\u958b\u59cb\u307e\u3067:","color":"yellow"},{"score":{"name":"countdown","objective":"time"},"color":"green"},{"text":"\u79d2","color":"yellow"},{"text":" \u9b3c","color":"red"},{"text":":","color":"yellow"},{"score":{"name":"oni","objective":"settings"},"color":"red"},{"text":"\u4eba","color":"yellow"}]
execute if score mode settings matches 5 if score game settings matches 2 if score min time matches 1.. if score sec time matches 10.. run title @a actionbar ["",{"text":"\u9003","color":"aqua"},{"text":":","color":"yellow"},{"score":{"name":"nge","objective":"settings"},"color":"aqua"},{"text":"\u4eba \u30e9\u30a6\u30f3\u30c9\u7d42\u4e86\u307e\u3067:","color":"yellow"},{"score":{"name":"min","objective":"time"},"color":"red"},{"text":":","color":"red"},{"score":{"name":"sec","objective":"time"},"color":"red"},{"text":"\u79d2","color":"yellow"},{"text":" \u9b3c","color":"red"},{"text":":","color":"yellow"},{"score":{"name":"oni","objective":"settings"},"color":"red"},{"text":"\u4eba","color":"yellow"}] 
execute if score mode settings matches 5 if score game settings matches 2 if score min time matches 1.. if score sec time matches ..9 run title @a actionbar ["",{"text":"\u9003","color":"aqua"},{"text":":","color":"yellow"},{"score":{"name":"nge","objective":"settings"},"color":"aqua"},{"text":"\u4eba \u30e9\u30a6\u30f3\u30c9\u7d42\u4e86\u307e\u3067:","color":"yellow"},{"score":{"name":"min","objective":"time"},"color":"red"},{"text":":0","color":"red"},{"score":{"name":"sec","objective":"time"},"color":"red"},{"text":"\u79d2","color":"yellow"},{"text":" \u9b3c","color":"red"},{"text":":","color":"yellow"},{"score":{"name":"oni","objective":"settings"},"color":"red"},{"text":"\u4eba","color":"yellow"}] 
execute if score mode settings matches 5 if score game settings matches 2 if score min time matches ..0 run title @a actionbar ["",{"text":"\u9003","color":"aqua"},{"text":":","color":"yellow"},{"score":{"name":"nge","objective":"settings"},"color":"aqua"},{"text":"\u4eba \u30e9\u30a6\u30f3\u30c9\u7d42\u4e86\u307e\u3067:","color":"yellow"},{"score":{"name":"sec","objective":"time"},"color":"red"},{"text":"\u79d2","color":"yellow"},{"text":" \u9b3c","color":"red"},{"text":":","color":"yellow"},{"score":{"name":"oni","objective":"settings"},"color":"red"},{"text":"\u4eba","color":"yellow"}]
execute if score mode settings matches 5 if score game settings matches 2 if score min time matches ..0 if score sec time matches ..0 run scoreboard players set countdown time 14
execute if score mode settings matches 5 if score game settings matches 2 if score min time matches ..0 if score sec time matches ..0 run scoreboard players set countdown2 time 19
execute if score mode settings matches 5 if score game settings matches 2 if score min time matches ..0 if score sec time matches ..0 run tellraw @a ["",{"selector":"@a[team=oni]","color":"red"},{"text":"\u306f\u7206\u767a\u3057\u3066\u3057\u307e\u3063\u305f","color":"red"}]
execute if score mode settings matches 5 if score game settings matches 2 if score min time matches ..0 if score sec time matches ..0 run effect give @a[team=nge] resistance 5 100 true
execute if score mode settings matches 5 if score game settings matches 2 if score min time matches ..0 if score sec time matches ..0 run execute positioned as @a[team=oni] run summon creeper ~ ~ ~ {Fuse:0}
execute if score mode settings matches 5 if score game settings matches 2 if score min time matches ..0 if score sec time matches ..0 run scoreboard players set game settings 1
execute if score game settings matches 1 if score countdown time matches ..0 if score countdown2 time matches ..0 if score mode settings matches 5 if score nge settings matches 20.. run team join oni @r[limit=5,team=nge]
execute if score game settings matches 1 if score countdown time matches ..0 if score countdown2 time matches ..0 if score mode settings matches 5 if score nge settings matches 16..19 run team join oni @r[limit=4,team=nge]
execute if score game settings matches 1 if score countdown time matches ..0 if score countdown2 time matches ..0 if score mode settings matches 5 if score nge settings matches 12..15 run team join oni @r[limit=3,team=nge]
execute if score game settings matches 1 if score countdown time matches ..0 if score countdown2 time matches ..0 if score mode settings matches 5 if score nge settings matches 7..11 run team join oni @r[limit=2,team=nge]
execute if score game settings matches 1 if score countdown time matches ..0 if score countdown2 time matches ..0 if score mode settings matches 5 if score nge settings matches 2..6 run team join oni @r[limit=1,team=nge]
execute if score mode settings matches 5 if score game settings matches 1 if score countdown time matches ..0 if score countdown2 time matches ..0 if score nge settings matches ..3 run execute positioned as @a run playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 1 1
execute if score mode settings matches 5 if score game settings matches 1 if score countdown time matches ..0 if score countdown2 time matches ..0 if score nge settings matches ..3 run tellraw @a ["",{"text":"\u4eca\u56de\u7206\u5f3e\u3092\u6240\u6301\u3057\u3066\u3044\u308b\u306e\u306f","color":"yellow"},{"selector":"@a[team=oni]","color":"red"},{"text":"\u3055\u3093\u3067\u3059\u3002","color":"yellow"}]
execute if score mode settings matches 5 if score game settings matches 1 if score countdown time matches ..0 if score countdown2 time matches ..0 if score nge settings matches ..3 run execute positioned as @e[type=armor_stand,tag=spawn,limit=1] run tp @a[team=nge] ~ ~ ~
execute if score mode settings matches 5 if score game settings matches 1 if score countdown time matches ..0 if score countdown2 time matches ..0 if score nge settings matches ..3 run execute positioned as @e[type=armor_stand,tag=spawn,limit=1] run tp @a[team=oni] ~ ~ ~
execute if score mode settings matches 5 if score game settings matches 1 if score countdown time matches ..0 if score countdown2 time matches ..0 if score nge settings matches ..3 run scoreboard players set game settings 2
execute if score mode settings matches 5 if score nge settings matches 1 if score oni settings matches ..0 run tellraw @a ["",{"text":"\u30b2\u30fc\u30e0\u7d42\u4e86","color":"yellow"},{"text":" "},{"selector":"@a[team=nge]","color":"aqua"},{"text":"\u306e\u52dd\u5229!","color":"yellow"}]
execute if score mode settings matches 5 if score nge settings matches 1 if score oni settings matches ..0 run team leave @a
execute if score mode settings matches 5 if score nge settings matches 1 if score oni settings matches ..0 run gamemode adventure @a
execute if score mode settings matches 5 if score nge settings matches 1 if score oni settings matches ..0 run execute positioned as @a run playsound entity.player.levelup player @a ~ ~ ~ 1 0.5 1
execute if score mode settings matches 5 if score nge settings matches 1 if score oni settings matches ..0 run scoreboard players set game settings 0