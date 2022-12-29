execute if score game settings matches 2 if score oni settings matches 1.. run tellraw @a ["",{"text":"\n"},{"text":"\u30b2\u30fc\u30e0\u7d42\u4e86 ","color":"yellow"},{"text":"\u9b3c","color":"red"},{"text":"\u306e\u52dd\u5229!","color":"yellow"}]
execute if score game settings matches 2 if score oni settings matches 1.. run execute positioned as @a run playsound entity.player.levelup player @a ~ ~ ~ 1 0.5 1
team leave @a
scoreboard players set min time 0
scoreboard players set sec time 0
scoreboard players set sec2 time 1
scoreboard players set game settings 0
tag @a remove live
#特殊アイテム削除
clear @a feather
clear @a glass_pane
effect clear @a poison
gamemode adventure @a[gamemode=spectator]
team modify nge friendlyFire false
team modify nge nametagVisibility hideForOtherTeams
team modify oni nametagVisibility hideForOtherTeams