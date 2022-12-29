execute if score game settings matches 2 if score oni settings matches 1.. run tellraw @a ["",{"text":"\u30b2\u30fc\u30e0\u7d42\u4e86 ","color":"yellow"},{"text":"\u9003\u8d70\u8005","color":"aqua"},{"text":"\u306e\u52dd\u5229!\n-----\u751f\u5b58\u3057\u3066\u3044\u305f\u30d7\u30ec\u30a4\u30e4\u30fc-----","color":"yellow"},{"text":"\n"},{"selector":"@a[team=nge]","color":"aqua"},{"text":"\n "}]
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