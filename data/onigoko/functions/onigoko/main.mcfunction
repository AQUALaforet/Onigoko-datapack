#減算
execute if score game settings matches 2 run execute if score min time matches 0 if score sec time matches 0 if score sec2 time matches 0 run scoreboard players set sec2 time 1
execute if score game settings matches 2 run execute if score min time matches ..-1 run scoreboard players set min time 0
execute if score game settings matches 2 run scoreboard players remove sec2 time 1
execute if score game settings matches 2 run execute if score sec2 time matches ..-1 run scoreboard players remove sec time 1
execute if score game settings matches 2 run execute if score sec2 time matches ..-1 run scoreboard players set sec2 time 19
execute if score game settings matches 2 run execute if score sec time matches ..-1 run scoreboard players remove min time 1
execute if score game settings matches 2 run execute if score sec time matches ..-1 run scoreboard players set sec time 59
execute if score game settings matches 1 run scoreboard players remove countdown2 time 1
execute if score game settings matches 1 run execute if score countdown2 time matches ..-1 run scoreboard players remove countdown time 1
execute if score game settings matches 1 run execute if score countdown2 time matches ..-1 run scoreboard players set countdown2 time 19

#ゲーム設定
execute if entity @e[type=minecraft:vex,tag=oniremove] run kill @e[type=minecraft:armor_stand,tag=onikime]
kill @e[type=vex,tag=oniremove]
execute if entity @e[type=minecraft:vex,tag=onispawnremove] run kill @e[type=minecraft:armor_stand,tag=onispawn]
kill @e[type=vex,tag=onispawnremove]
execute if entity @e[type=minecraft:vex,tag=lobbyremove] run kill @e[type=minecraft:armor_stand,tag=lobbyspawn]
kill @e[type=vex,tag=lobbyremove]
execute if entity @e[type=minecraft:vex,tag=spawnremove] run kill @e[type=minecraft:armor_stand,tag=spawn]
kill @e[type=vex,tag=spawnremove]
execute if entity @e[type=minecraft:vex,tag=keidorospawnremove] run kill @e[type=minecraft:armor_stand,tag=keidorospawn]
kill @e[type=vex,tag=keidorospawnremove]
execute if entity @e[type=minecraft:vex,tag=keidoroexitremove] run kill @e[type=minecraft:armor_stand,tag=keidoroexit]
kill @e[type=vex,tag=keidoroexitremove]
execute positioned as @a run attribute @p generic.attack_speed base set 100

#エフェクト
effect give @a[scores={food=..19}] saturation 1 127 true
execute if score mode settings matches 0..4 run effect give @a[team=oni] strength 1 3 true
execute if score mode settings matches 5 run effect give @a[team=oni] strength 1 2 true
effect give @a[team=!oni,team=!nge] weakness 1 10 true
execute if score game settings matches 0 run effect give @a[team=oni] weakness 1 10 true

#ゲーム設定検知
execute store result score onikime settings if entity @e[type=armor_stand,tag=onikime]
execute store result score onispawn settings if entity @e[type=armor_stand,tag=onispawn]
execute store result score lobbyspawn settings if entity @e[type=armor_stand,tag=lobbyspawn]
execute store result score spawn settings if entity @e[type=armor_stand,tag=spawn]
execute store result score oni settings if entity @a[team=oni]
execute store result score nge settings if entity @a[team=nge]
execute store result score count settings if entity @a
execute store result score ice settings if entity @a[team=ice]

#ゲーム終了検知
execute if score mode settings matches 0..4 if score game settings matches 2 run execute if score nge settings matches ..0 run function onigoko:onigoko/game/oniend
execute if score mode settings matches 0..4 if score game settings matches 2 if score min time matches ..0 if score sec time matches ..0 run function onigoko:onigoko/game/end

#帽子
clear @a[tag=inv] leather_helmet
clear @a[tag=inv2] leather_helmet
clear @a[team=!oni] leather_helmet
execute if score mode settings matches 0..4 run item replace entity @a[tag=!inv,tag=!inv2,team=oni,nbt=!{Inventory:[{id:"minecraft:leather_helmet",Slot:103b,tag:{HideFlags:127,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]}}]}] armor.head with leather_helmet{display:{color:16711680},HideFlags:127,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;517504221,-1642311951,-1410880346,-410950675]}]} 1
execute if score mode settings matches 5 run item replace entity @a[tag=!inv,tag=!inv2,team=oni] armor.head with tnt{HideFlags:127,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]} 1


#チェーン
execute if score game settings matches 1..2 if score mode settings matches 0 run function onigoko:onigoko/game/start/hueoni
execute if score game settings matches 1..2 if score mode settings matches 1 run function onigoko:onigoko/game/start/ice
execute if score game settings matches 1..2 if score mode settings matches 2 run function onigoko:onigoko/game/start/normal
execute if score game settings matches 1..2 if score mode settings matches 3 run function onigoko:onigoko/game/start/keidoro
execute if score game settings matches 1..2 if score mode settings matches 4 run function onigoko:onigoko/game/start/kawari
execute if score game settings matches 1..2 if score mode settings matches 5 run function onigoko:onigoko/game/start/tnttag

#鬼決め
execute positioned as @a run execute if entity @e[type=armor_stand,tag=onikime,dy=2] run tag @p add onik
execute positioned as @a run execute unless entity @e[type=armor_stand,tag=onikime,dy=2] run tag @p remove onik

#タイトルバー
function onigoko:onigoko/main/titlebar

#透明化減算・停止
scoreboard players remove @a[scores={inv=..-1}] inv2 1
execute positioned as @a if score @p inv matches ..-1 run function onigoko:onigoko/chain/inv1

scoreboard players remove @a[scores={inv2=..-1}] inv3 1
execute positioned as @a if score @p inv2 matches ..-1 run function onigoko:onigoko/chain/inv2

scoreboard players set @a[scores={inv3=..0,inv2=..0}] inv3 0
execute positioned as @a if score @p inv2 matches ..0 if score @p inv3 matches ..0 run function onigoko:onigoko/chain/inv3

#氷鬼
clear @a[team=!ice] packed_ice
kill @e[type=item,nbt={Item:{id:"minecraft:tnt"}}]
scoreboard players remove @a[scores={ice4=1..}] ice4 1
scoreboard players set @a[scores={ice4=..-1}] ice4 0
effect give @a[scores={ice4=1..}] invisibility 1 0 true
clear @a[team=!oni] tnt
#残り時間イベント
##時間追加
execute if score game settings matches 2 run function onigoko:onigoko/main/timeadd

##花火
execute if score mode settings matches 0..4 if score firework settings matches 0 run execute if score min time matches 5 if score sec time matches 0 if score sec2 time matches 0 run tellraw @a ["",{"text":"\u307e\u305f\u3001","color":"yellow"},{"text":"1","color":"green"},{"text":"\u5206\u6bce\u306b\u9003\u8d70\u8005\u306e\u4e0a\u306b\u82b1\u706b\u304c\u3042\u304c\u308b\u3088\u3046\u306b\u306a\u308a\u307e\u3057\u305f\u3002","color":"yellow"}]
execute if score mode settings matches 0..4 if score firework settings matches 0 run execute if score min time matches 5 if score sec time matches 0 if score sec2 time matches 0 run execute positioned as @a[team=nge] run summon firework_rocket ~ ~ ~ {Life:40,LifeTime:60,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Trail:1b,Colors:[I;65527]}]}}}}
execute if score mode settings matches 0..4 if score firework settings matches 0 run execute if score min time matches 4 if score sec time matches 0 if score sec2 time matches 0 run execute positioned as @a[team=nge] run summon firework_rocket ~ ~ ~ {Life:40,LifeTime:60,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Trail:1b,Colors:[I;65527]}]}}}}
execute if score mode settings matches 0..4 if score firework settings matches 0 run execute if score min time matches 3 if score sec time matches 0 if score sec2 time matches 0 run execute positioned as @a[team=nge] run summon firework_rocket ~ ~ ~ {Life:40,LifeTime:60,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;65527]}]}}}}
execute if score mode settings matches 0..4 if score firework settings matches 0 run execute if score min time matches 2 if score sec time matches 0 if score sec2 time matches 0 run execute positioned as @a[team=nge] run summon firework_rocket ~ ~ ~ {Life:40,LifeTime:60,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;65527]}]}}}}
execute if score mode settings matches 0..4 if score firework settings matches 0 run execute if score min time matches 1 if score sec time matches 0 if score sec2 time matches 0 run execute positioned as @a[team=nge] run summon firework_rocket ~ ~ ~ {Life:40,LifeTime:60,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;65527]}]}}}}
execute if score mode settings matches 0..4 if score firework settings matches 0 run execute if score min time matches 0 if score sec time matches 30 if score sec2 time matches 0 run execute positioned as @a[team=nge] run summon firework_rocket ~ ~ ~ {Life:40,LifeTime:60,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;65527]}]}}}}

##残り時間
execute if score mode settings matches 0..4 if score min time matches 1 if score sec time matches 0 if score sec2 time matches 0 run tellraw @a ["",{"text":"\u6b8b\u308a","color":"yellow"},{"text":"1","color":"green"},{"text":"\u5206","color":"yellow"}]
execute if score mode settings matches 0..4 if score min time matches 2 if score sec time matches 0 if score sec2 time matches 0 run tellraw @a ["",{"text":"\u6b8b\u308a","color":"yellow"},{"text":"2","color":"green"},{"text":"\u5206","color":"yellow"}]
execute if score mode settings matches 0..4 if score min time matches 3 if score sec time matches 0 if score sec2 time matches 0 run tellraw @a ["",{"text":"\u6b8b\u308a","color":"yellow"},{"text":"3","color":"green"},{"text":"\u5206","color":"yellow"}]
execute if score mode settings matches 0..4 if score min time matches 0 if score sec time matches 30 if score sec2 time matches 0 run tellraw @a ["",{"text":"\u6b8b\u308a","color":"yellow"},{"text":"30","color":"green"},{"text":"\u79d2","color":"yellow"}]
execute if score mode settings matches 0..4 if score poison settings matches 0 run execute if score min time matches 0 if score sec time matches 30 if score sec2 time matches 0 run tellraw @a ["",{"text":"\u9003\u8d70\u8005","color":"aqua"},{"text":"\u306b\u6bd2\u304c\u4ed8\u4e0e\u3055\u308c\u307e\u3059\u3002","color":"yellow"}]
execute if score mode settings matches 0..4 if score poison settings matches 0 run execute if score min time matches 0 if score sec time matches 30 if score sec2 time matches 0 run effect give @a[team=nge] poison 30 0 true

#透明化処理
function onigoko:onigoko/main/invisible

#俊敏処理
execute if score speed settings matches 0 run execute positioned as @a[team=!ice] run execute if entity @p[team=!ice,nbt={SelectedItem:{id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"text":"俊敏","color":"aqua","italic":false}'}}}}] run effect give @p[team=!ice,team=nge,tag=speed,nbt={SelectedItem:{id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"text":"俊敏","color":"aqua","italic":false}'}}}}] speed 1 3 true
execute if score speed settings matches 0 run execute positioned as @a[team=!ice] run execute if entity @p[team=!ice,nbt={SelectedItem:{id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"text":"俊敏","color":"aqua","italic":false}'}}}}] run effect give @p[team=!ice,team=oni,tag=speed,nbt={SelectedItem:{id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"text":"俊敏","color":"aqua","italic":false}'}}}}] speed 1 5 true
execute if score speed settings matches 0 run execute positioned as @a[team=!ice] run execute unless entity @p[team=!ice,nbt={SelectedItem:{id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"text":"俊敏","color":"aqua","italic":false}'}}}}] run effect clear @p[team=!ice,team=nge,tag=speed,nbt=!{SelectedItem:{id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"text":"俊敏","color":"aqua","italic":false}'}}}}] speed
execute if score speed settings matches 0 run execute positioned as @a[team=!ice] run execute unless entity @p[team=!ice,nbt={SelectedItem:{id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"text":"俊敏","color":"aqua","italic":false}'}}}}] run effect clear @p[team=!ice,team=oni,tag=speed,nbt=!{SelectedItem:{id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"text":"俊敏","color":"aqua","italic":false}'}}}}] speed
execute if score speed settings matches 0 run scoreboard players remove @a[team=!ice,nbt={SelectedItem:{id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"text":"俊敏","color":"aqua","italic":false}'}}}}] speed 1
execute if score speed settings matches 0 run execute positioned as @a[team=!ice] run execute if entity @p[team=!ice,nbt={SelectedItem:{id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"text":"俊敏","color":"aqua","italic":false}'}}}}] run tag @p[team=!ice,nbt={SelectedItem:{id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"text":"俊敏","color":"aqua","italic":false}'}}}}] add speed
execute if score speed settings matches 0 run execute positioned as @a[team=!ice] run execute unless entity @p[team=!ice,nbt={SelectedItem:{id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"text":"俊敏","color":"aqua","italic":false}'}}}}] run tag @p[team=!ice] remove speed
execute if score speed settings matches 0 run tag @p[tag=speed,scores={speed2=..0,speed3=..0}] remove speed

execute if score speed settings matches 0 run scoreboard players remove @a[team=!ice,scores={speed=..-1}] speed2 1
execute if score speed settings matches 0 run execute positioned as @a[team=!ice] if score @p[team=!ice] speed matches ..-1 run function onigoko:onigoko/chain/sp1

execute if score speed settings matches 0 run scoreboard players remove @a[team=!ice,scores={speed2=..-1}] speed3 1
execute if score speed settings matches 0 run execute positioned as @a[team=!ice] if score @p[team=!ice] speed2 matches ..-1 run function onigoko:onigoko/chain/sp2

execute if score speed settings matches 0 run scoreboard players set @a[team=!ice,scores={speed3=..0,speed2=..0}] speed3 0
execute if score speed settings matches 0 run execute positioned as @a[team=!ice] if score @p[team=!ice] speed3 matches ..0 if score @p[team=!ice] speed matches ..0 run function onigoko:onigoko/chain/sp3