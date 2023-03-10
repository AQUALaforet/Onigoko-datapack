#読み込み成功メッセージ
tellraw @a ["",{"text":"----------onigoko datapack v1.0.0a----------\n\n\u30c7\u30fc\u30bf\u30d1\u30c3\u30af\u306e\u8aad\u307f\u8fbc\u307f\u306b\u6210\u529f\u3057\u307e\u3057\u305f\u3002\n\nCreate by Forest_AQUA","color":"yellow"},{"text":"\n\n"},{"text":"[\u30b2\u30fc\u30e0\u30d6\u30c3\u30af\u3092\u5165\u624b] ","color":"gold","clickEvent":{"action":"run_command","value":"/function onigoko:onigoko/book/book"}},{"text":"[\u30c1\u30e3\u30c3\u30c8\u7248\u30b2\u30fc\u30e0\u30d6\u30c3\u30af\u3092\u958b\u304f]","color":"gold","clickEvent":{"action":"run_command","value":"/function onigoko:onigoko/book/chat"}},{"text":"\n\n"},{"text":"----------onigoko datapack v1.0.0a----------","color":"yellow"}]
execute positioned as @a run playsound entity.player.levelup player @a ~ ~ ~ 1 2 1

#特殊アイテム削除
clear @a feather
clear @a glass_pane

#スコアボードを削除
scoreboard objectives remove time

#gamerule
gamerule fallDamage false
gamerule fireDamage false
gamerule drowningDamage false
gamerule maxEntityCramming 0

#Scoreboardを作成
scoreboard objectives add min dummy
scoreboard objectives add sec dummy
scoreboard objectives add time dummy
scoreboard objectives add settings dummy
scoreboard objectives add health health
scoreboard objectives add food food
scoreboard objectives add inv dummy
scoreboard objectives add inv2 dummy
scoreboard objectives add inv3 dummy
scoreboard objectives add speed dummy
scoreboard objectives add speed2 dummy
scoreboard objectives add speed3 dummy
scoreboard objectives add ice4 dummy
scoreboard objectives add a_damage minecraft.custom:minecraft.damage_dealt

#scorebaardをリセット
scoreboard players set min time 0
scoreboard players set sec time 0
scoreboard players set sec2 time 1
scoreboard players set game settings 0
execute unless score inv settings matches 1 run scoreboard players set inv settings 0
execute unless score speed settings matches 1 run scoreboard players set speed settings 0
execute unless score timeadd settings matches 1 run scoreboard players set timeadd settings 0
execute unless score firework settings matches 1 run scoreboard players set firework settings 0
execute unless score poison settings matches 1 run scoreboard players set poison settings 0
execute unless score random settings matches 0 run scoreboard players set random settings 1
execute unless score onik settings matches 2.. run scoreboard players set onik settings 1
execute unless score ninv3 settings matches 0..14 unless score ninv3 settings matches 16.. run scoreboard players set ninv3 settings 15
execute unless score ninv2 settings matches 1.. run scoreboard players set ninv2 settings 0
execute unless score oinv3 settings matches 0..4 unless score oinv3 settings matches 6.. run scoreboard players set oinv3 settings 5
execute unless score oinv2 settings matches 1.. run scoreboard players set oinv2 settings 0
execute unless score kinv3 settings matches 0..14 unless score kinv3 settings matches 16.. run scoreboard players set kinv3 settings 15
execute unless score kinv2 settings matches 1.. run scoreboard players set kinv2 settings 0
execute unless score nsp3 settings matches 0..19 unless score nsp3 settings matches 21.. run scoreboard players set nsp3 settings 20
execute unless score nsp2 settings matches 1.. run scoreboard players set nsp2 settings 0
execute unless score osp3 settings matches 0..24 unless score osp3 settings matches 26.. run scoreboard players set osp3 settings 25
execute unless score osp2 settings matches 1.. run scoreboard players set osp2 settings 0
execute unless score ksp3 settings matches 0..14 unless score ksp3 settings matches 16.. run scoreboard players set ksp3 settings 15
execute unless score ksp2 settings matches 1.. run scoreboard players set ksp2 settings 0

##30分前
execute unless score 30oinv3 settings matches 0..2 unless score 30oinv3 settings matches 4.. run scoreboard players set 30oinv3 settings 3
execute unless score 30oinv2 settings matches 1.. run scoreboard players set 30oinv2 settings 0
execute unless score 30ninv3 settings matches 0..4 unless score 30ninv3 settings matches 6.. run scoreboard players set 30ninv3 settings 5
execute unless score 30ninv2 settings matches 1.. run scoreboard players set 30ninv2 settings 0
execute unless score 30kinv3 settings matches 0..4 unless score 30kinv3 settings matches 6.. run scoreboard players set 30kinv3 settings 5
execute unless score 30kinv2 settings matches 1.. run scoreboard players set 30kinv2 settings 0
execute unless score 30osp3 settings matches 0..9 unless score 30osp3 settings matches 11.. run scoreboard players set 30osp3 settings 10
execute unless score 30osp2 settings matches 1.. run scoreboard players set 30osp2 settings 0
execute unless score 30nsp3 settings matches 0..4 unless score 30nsp3 settings matches 6.. run scoreboard players set 30nsp3 settings 5
execute unless score 30nsp2 settings matches 1.. run scoreboard players set 30nsp2 settings 0
execute unless score 30ksp3 settings matches 0..4 unless score 30ksp3 settings matches 6.. run scoreboard players set 30ksp3 settings 5
execute unless score 30ksp2 settings matches 1.. run scoreboard players set 10ksp2 settings 0
##25分前
execute unless score 25oinv3 settings matches 0..2 unless score 25oinv3 settings matches 4.. run scoreboard players set 25oinv3 settings 3
execute unless score 25oinv2 settings matches 1.. run scoreboard players set 25oinv2 settings 0
execute unless score 25ninv3 settings matches 0..4 unless score 25ninv3 settings matches 6.. run scoreboard players set 25ninv3 settings 5
execute unless score 25ninv2 settings matches 1.. run scoreboard players set 25ninv2 settings 0
execute unless score 25kinv3 settings matches 0.. unless score 25kinv3 settings matches 4.. run scoreboard players set 25kinv3 settings 3
execute unless score 25kinv2 settings matches 1.. run scoreboard players set 25kinv2 settings 0
execute unless score 25osp3 settings matches 0..9 unless score 25osp3 settings matches 11.. run scoreboard players set 25osp3 settings 10
execute unless score 25osp2 settings matches 1.. run scoreboard players set 25osp2 settings 0
execute unless score 25nsp3 settings matches 0..4 unless score 25nsp3 settings matches 6.. run scoreboard players set 25nsp3 settings 5
execute unless score 25nsp2 settings matches 1.. run scoreboard players set 25nsp2 settings 0
execute unless score 25ksp3 settings matches 0..4 unless score 25ksp3 settings matches 6.. run scoreboard players set 25ksp3 settings 5
execute unless score 25ksp2 settings matches 1.. run scoreboard players set 10ksp2 settings 0
##20分前
execute unless score 20oinv3 settings matches 0..2 unless score 20oinv3 settings matches 4.. run scoreboard players set 20oinv3 settings 3
execute unless score 20oinv2 settings matches 1.. run scoreboard players set 20oinv2 settings 0
execute unless score 20ninv3 settings matches 0..4 unless score 20ninv3 settings matches 6.. run scoreboard players set 20ninv3 settings 5
execute unless score 20ninv2 settings matches 1.. run scoreboard players set 20ninv2 settings 0
execute unless score 20kinv3 settings matches 0..4 unless score 20kinv3 settings matches 6.. run scoreboard players set 20kinv3 settings 5
execute unless score 20kinv2 settings matches 1.. run scoreboard players set 20kinv2 settings 0
execute unless score 20osp3 settings matches 0..9 unless score 20osp3 settings matches 11.. run scoreboard players set 20osp3 settings 10
execute unless score 20osp2 settings matches 1.. run scoreboard players set 20osp2 settings 0
execute unless score 20nsp3 settings matches 0..4 unless score 20nsp3 settings matches 6.. run scoreboard players set 20nsp3 settings 5
execute unless score 20nsp2 settings matches 1.. run scoreboard players set 20nsp2 settings 0
execute unless score 20ksp3 settings matches 0..4 unless score 20ksp3 settings matches 6.. run scoreboard players set 20ksp3 settings 5
execute unless score 20ksp2 settings matches 1.. run scoreboard players set 10ksp2 settings 0
##15分前
execute unless score 15oinv3 settings matches 0..2 unless score 15oinv3 settings matches 4.. run scoreboard players set 15oinv3 settings 3
execute unless score 15oinv2 settings matches 1.. run scoreboard players set 15oinv2 settings 0
execute unless score 15ninv3 settings matches 0..4 unless score 15ninv3 settings matches 6.. run scoreboard players set 15ninv3 settings 5
execute unless score 15ninv2 settings matches 1.. run scoreboard players set 15ninv2 settings 0
execute unless score 15kinv3 settings matches 0..2 unless score 15kinv3 settings matches 4.. run scoreboard players set 15kinv3 settings 3
execute unless score 15kinv2 settings matches 1.. run scoreboard players set 15kinv2 settings 0
execute unless score 15osp3 settings matches 0..9 unless score 15osp3 settings matches 11.. run scoreboard players set 15osp3 settings 10
execute unless score 15osp2 settings matches 1.. run scoreboard players set 15osp2 settings 0
execute unless score 15nsp3 settings matches 0..4 unless score 15nsp3 settings matches 6.. run scoreboard players set 15nsp3 settings 5
execute unless score 15nsp2 settings matches 1.. run scoreboard players set 15nsp2 settings 0
execute unless score 15ksp3 settings matches 0..4 unless score 15ksp3 settings matches 6.. run scoreboard players set 15ksp3 settings 5
execute unless score 15ksp2 settings matches 1.. run scoreboard players set 10ksp2 settings 0
##10分前
execute unless score 10oinv3 settings matches 0..2 unless score 10oinv3 settings matches 4.. run scoreboard players set 10oinv3 settings 3
execute unless score 10oinv2 settings matches 1.. run scoreboard players set 10oinv2 settings 0
execute unless score 10ninv3 settings matches 0..4 unless score 10ninv3 settings matches 6.. run scoreboard players set 10ninv3 settings 5
execute unless score 10ninv2 settings matches 1.. run scoreboard players set 10ninv2 settings 0
execute unless score 10kinv3 settings matches 0..4 unless score 10kinv3 settings matches 6.. run scoreboard players set 10kinv3 settings 5
execute unless score 10kinv2 settings matches 1.. run scoreboard players set 10kinv2 settings 0
execute unless score 10osp3 settings matches 0..9 unless score 10osp3 settings matches 11.. run scoreboard players set 10osp3 settings 10
execute unless score 10osp2 settings matches 1.. run scoreboard players set 10osp2 settings 0
execute unless score 10nsp3 settings matches 0..4 unless score 10nsp3 settings matches 6.. run scoreboard players set 10nsp3 settings 5
execute unless score 10nsp2 settings matches 1.. run scoreboard players set 10nsp2 settings 0
execute unless score 10ksp3 settings matches 0..4 unless score 10ksp3 settings matches 6.. run scoreboard players set 10ksp3 settings 5
execute unless score 10ksp2 settings matches 1.. run scoreboard players set 10ksp2 settings 0
##5分前
execute unless score 5oinv3 settings matches 0..2 unless score 5oinv3 settings matches 4.. run scoreboard players set 5oinv3 settings 3
execute unless score 5oinv2 settings matches 1.. run scoreboard players set 5oinv2 settings 0
execute unless score 5ninv3 settings matches 0..4 unless score 5ninv3 settings matches 6.. run scoreboard players set 5ninv3 settings 5
execute unless score 5ninv2 settings matches 1.. run scoreboard players set 5ninv2 settings 0
execute unless score 5kinv3 settings matches 0..4 unless score 5kinv3 settings matches 6.. run scoreboard players set 5kinv3 settings 5
execute unless score 5kinv2 settings matches 1.. run scoreboard players set 5kinv2 settings 0
execute unless score 5osp3 settings matches 0..9 unless score 5osp3 settings matches 11.. run scoreboard players set 5osp3 settings 5
execute unless score 5osp2 settings matches 1.. run scoreboard players set 5osp2 settings 0
execute unless score 5nsp3 settings matches 0..4 unless score 5nsp3 settings matches 6.. run scoreboard players set 5nsp3 settings 5
execute unless score 5nsp2 settings matches 1.. run scoreboard players set 5nsp2 settings 0
execute unless score 5ksp3 settings matches 0..4 unless score 5ksp3 settings matches 6.. run scoreboard players set 5ksp3 settings 5
execute unless score 5ksp2 settings matches 1.. run scoreboard players set 5ksp2 settings 0
##4分前
execute unless score 4oinv3 settings matches 0..1 unless score 4oinv3 settings matches 3.. run scoreboard players set 4oinv3 settings 2
execute unless score 4oinv2 settings matches 1.. run scoreboard players set 4oinv2 settings 0
execute unless score 4ninv3 settings matches 0..1 unless score 4ninv3 settings matches 3.. run scoreboard players set 4ninv3 settings 2
execute unless score 4ninv2 settings matches 1.. run scoreboard players set 4ninv2 settings 0
execute unless score 4kinv3 settings matches 0..1 unless score 4kinv3 settings matches 3.. run scoreboard players set 4kinv3 settings 2
execute unless score 4kinv2 settings matches 1.. run scoreboard players set 4kinv2 settings 0
execute unless score 4osp3 settings matches 0..2 unless score 4osp3 settings matches 4.. run scoreboard players set 4osp3 settings 3
execute unless score 4osp2 settings matches 1.. run scoreboard players set 4osp2 settings 0
execute unless score 4nsp3 settings matches 0..2 unless score 4nsp3 settings matches 4.. run scoreboard players set 4nsp3 settings 3
execute unless score 4nsp2 settings matches 1.. run scoreboard players set 4nsp2 settings 0
execute unless score 4ksp3 settings matches 0..2 unless score 4ksp3 settings matches 4.. run scoreboard players set 4ksp3 settings 3
execute unless score 4ksp2 settings matches 1.. run scoreboard players set 4ksp2 settings 0
##3分前
execute unless score 3oinv3 settings matches 0..1 unless score 3oinv3 settings matches 3.. run scoreboard players set 3oinv3 settings 2
execute unless score 3oinv2 settings matches 1.. run scoreboard players set 3oinv2 settings 0
execute unless score 3ninv3 settings matches 0..1 unless score 3ninv3 settings matches 3.. run scoreboard players set 3ninv3 settings 2
execute unless score 3ninv2 settings matches 1.. run scoreboard players set 3ninv2 settings 0
execute unless score 3kinv3 settings matches 0..1 unless score 3kinv3 settings matches 3.. run scoreboard players set 3kinv3 settings 2
execute unless score 3kinv2 settings matches 1.. run scoreboard players set 3kinv2 settings 0
execute unless score 3osp3 settings matches 0..2 unless score 3osp3 settings matches 4.. run scoreboard players set 3osp3 settings 3
execute unless score 3osp2 settings matches 1.. run scoreboard players set 3osp2 settings 0
execute unless score 3nsp3 settings matches 0..2 unless score 3nsp3 settings matches 4.. run scoreboard players set 3nsp3 settings 3
execute unless score 3nsp2 settings matches 1.. run scoreboard players set 3nsp2 settings 0
execute unless score 3ksp3 settings matches 0..2 unless score 3ksp3 settings matches 4.. run scoreboard players set 3ksp3 settings 3
execute unless score 3ksp2 settings matches 1.. run scoreboard players set 3ksp2 settings 0
##2分前
execute unless score 2oinv3 settings matches 0..1 unless score 2oinv3 settings matches 3.. run scoreboard players set 2oinv3 settings 2
execute unless score 2oinv2 settings matches 1.. run scoreboard players set 2oinv2 settings 0
execute unless score 2ninv3 settings matches 0..1 unless score 2ninv3 settings matches 3.. run scoreboard players set 2ninv3 settings 2
execute unless score 2ninv2 settings matches 1.. run scoreboard players set 2ninv2 settings 0
execute unless score 2kinv3 settings matches 0..1 unless score 2kinv3 settings matches 3.. run scoreboard players set 2kinv3 settings 2
execute unless score 2kinv2 settings matches 1.. run scoreboard players set 2kinv2 settings 0
execute unless score 2osp3 settings matches 0..2 unless score 2osp3 settings matches 4.. run scoreboard players set 2osp3 settings 3
execute unless score 2osp2 settings matches 1.. run scoreboard players set 2osp2 settings 0
execute unless score 2nsp3 settings matches 0..2 unless score 2nsp3 settings matches 4.. run scoreboard players set 2nsp3 settings 3
execute unless score 2nsp2 settings matches 1.. run scoreboard players set 2nsp2 settings 0
execute unless score 2ksp3 settings matches 0..2 unless score 2ksp3 settings matches 4.. run scoreboard players set 2ksp3 settings 3
execute unless score 2ksp2 settings matches 1.. run scoreboard players set 2ksp2 settings 0
##1分前
execute unless score 1oinv3 settings matches 0..1 unless score 1oinv3 settings matches 3.. run scoreboard players set 1oinv3 settings 2
execute unless score 1oinv2 settings matches 1.. run scoreboard players set 1oinv2 settings 0
execute unless score 1ninv3 settings matches 0..1 unless score 1ninv3 settings matches 3.. run scoreboard players set 1ninv3 settings 2
execute unless score 1ninv2 settings matches 1.. run scoreboard players set 1ninv2 settings 0
execute unless score 1kinv3 settings matches 0..1 unless score 1kinv3 settings matches 3.. run scoreboard players set 1kinv3 settings 2
execute unless score 1kinv2 settings matches 1.. run scoreboard players set 1kinv2 settings 0
execute unless score 1osp3 settings matches 0..2 unless score 1osp3 settings matches 4.. run scoreboard players set 1osp3 settings 3
execute unless score 1osp2 settings matches 1.. run scoreboard players set 1osp2 settings 0
execute unless score 1nsp3 settings matches 0..2 unless score 1nsp3 settings matches 4.. run scoreboard players set 1nsp3 settings 3
execute unless score 1nsp2 settings matches 1.. run scoreboard players set 1nsp2 settings 0
execute unless score 1ksp3 settings matches 0..2 unless score 1ksp3 settings matches 4.. run scoreboard players set 1ksp3 settings 3
execute unless score 1ksp2 settings matches 1.. run scoreboard players set 1ksp2 settings 0

#時間追加有効無効
execute unless score 30timeadd settings matches 1 run scoreboard players set 30timeadd settings 0
execute unless score 25timeadd settings matches 1 run scoreboard players set 25timeadd settings 0
execute unless score 20timeadd settings matches 1 run scoreboard players set 20timeadd settings 0
execute unless score 15timeadd settings matches 1 run scoreboard players set 15timeadd settings 0
execute unless score 10timeadd settings matches 1 run scoreboard players set 10timeadd settings 0
execute unless score 5timeadd settings matches 1 run scoreboard players set 5timeadd settings 0
execute unless score 4timeadd settings matches 0 run scoreboard players set 4timeadd settings 1
execute unless score 3timeadd settings matches 0 run scoreboard players set 3timeadd settings 1
execute unless score 2timeadd settings matches 0 run scoreboard players set 2timeadd settings 1
execute unless score 1timeadd settings matches 0 run scoreboard players set 1timeadd settings 1
#その他
xp set @a 0 levels
xp set @a 0 points
effect clear @a
gamerule sendCommandFeedback false
gamemode adventure @a[gamemode=spectator]
gamerule mobGriefing false
gamerule showDeathMessages false
clear @a tnt
#チーム作成
team leave @a
team add nge
team add oni
team add ice
team modify nge color aqua
team modify oni color red
team modify ice color dark_aqua
team modify nge nametagVisibility hideForOtherTeams
team modify oni nametagVisibility hideForOtherTeams
team modify ice nametagVisibility hideForOwnTeam
team modify nge collisionRule never
team modify oni collisionRule never
team modify ice collisionRule never
team modify oni friendlyFire false
team modify nge friendlyFire false
team modify ice friendlyFire false
title @a times 0 25 0

schedule clear onigoko:onigoko/game/30s
execute positioned as @a run attribute @p minecraft:generic.knockback_resistance base set 0