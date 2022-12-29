execute positioned as @a run playsound entity.experience_orb.pickup player @a ~ ~ ~ 1 1 1
execute if score mode settings matches 0..4 run tellraw @a {"text":"\u9b3c\u304c\u958b\u653e\u3055\u308c\u307e\u3057\u305f\u3002","color":"yellow"}
execute if score mode settings matches 2 if score random settings matches 1 run tellraw @a {"text":"\u9b3c\u304c\u958b\u653e\u3055\u308c\u307e\u3057\u305f\u3002","color":"yellow"}
execute if score mode settings matches 0..4 run execute positioned as @e[type=armor_stand,tag=onispawn,limit=1,sort=random] run tp @a[team=oni] ~ ~ ~
scoreboard players set game settings 2
execute if score inv settings matches 0 if score mode settings matches 0..3 run scoreboard players set @a[team=nge] inv 0
execute if score inv settings matches 0 if score mode settings matches 0..3 run scoreboard players operation @a[team=nge] inv2 = ninv2 settings
execute if score inv settings matches 0 if score mode settings matches 0..3 run scoreboard players operation @a[team=nge] inv3 = ninv3 settings
execute if score inv settings matches 0 if score mode settings matches 0..3 run scoreboard players set @a[team=oni] inv 0
execute if score inv settings matches 0 if score mode settings matches 0..3 run scoreboard players operation @a[team=oni] inv2 = oinv2 settings
execute if score inv settings matches 0 if score mode settings matches 0..3 run scoreboard players operation @a[team=oni] inv3 = oinv3 settings
execute if score speed settings matches 0 if score mode settings matches 0..3 run scoreboard players set @a[team=nge] speed 0
execute if score speed settings matches 0 if score mode settings matches 0..3 run scoreboard players operation @a[team=nge] speed2 = nsp2 settings
execute if score speed settings matches 0 if score mode settings matches 0..3 run scoreboard players operation @a[team=nge] speed3 = nsp3 settings
execute if score speed settings matches 0 if score mode settings matches 0..3 run scoreboard players set @a[team=oni] speed 0
execute if score speed settings matches 0 if score mode settings matches 0..3 run scoreboard players operation @a[team=oni] speed2 = osp2 settings
execute if score speed settings matches 0 if score mode settings matches 0..3 run scoreboard players operation @a[team=oni] speed3 = osp3 settings
execute if score inv settings matches 0 if score mode settings matches 4 run scoreboard players set @a[team=nge] inv 0
execute if score inv settings matches 0 if score mode settings matches 4 run scoreboard players operation @a[team=nge] inv2 = kinv2 settings
execute if score inv settings matches 0 if score mode settings matches 4 run scoreboard players operation @a[team=nge] inv3 = kinv3 settings
execute if score inv settings matches 0 if score mode settings matches 4 run scoreboard players set @a[team=oni] inv 0
execute if score inv settings matches 0 if score mode settings matches 4 run scoreboard players operation @a[team=oni] inv2 = kinv2 settings
execute if score inv settings matches 0 if score mode settings matches 4 run scoreboard players operation @a[team=oni] inv3 = kinv3 settings
execute if score speed settings matches 0 if score mode settings matches 4 run scoreboard players set @a[team=nge] speed 0
execute if score speed settings matches 0 if score mode settings matches 4 run scoreboard players operation @a[team=nge] speed2 = ksp2 settings
execute if score speed settings matches 0 if score mode settings matches 4 run scoreboard players operation @a[team=nge] speed3 = ksp3 settings
execute if score speed settings matches 0 if score mode settings matches 4 run scoreboard players set @a[team=oni] speed 0
execute if score speed settings matches 0 if score mode settings matches 4 run scoreboard players operation @a[team=oni] speed2 = ksp2 settings
execute if score speed settings matches 0 if score mode settings matches 4 run scoreboard players operation @a[team=oni] speed3 = ksp3 settings
execute if score mode settings matches 0..4 if score inv settings matches 0 run item replace entity @a hotbar.1 with feather{display:{Name:'{"text":"俊敏","color":"aqua","italic":false}',Lore:['{"text":"持っている間加速することができる","color":"white","italic":false}','{"text":"ただし時間が切れると使うことはできない","color":"white","italic":false}']}} 1
execute if score mode settings matches 0..4 if score speed settings matches 0 run item replace entity @a hotbar.7 with glass_pane{display:{Name:'{"text":"透明化","color":"aqua","italic":false}',Lore:['{"text":"所持している間、透明になることができる","color":"white","italic":false}','{"text":"スロットを移動すると透明化は解除される","color":"white","italic":false}']},Enchantments:[{}]} 1
execute if score mode settings matches 4 if score random settings matches 0 if score onik settings matches 1 run team join oni @r[limit=1,team=nge]
execute if score mode settings matches 4 if score random settings matches 0 if score onik settings matches 2 run team join oni @r[limit=2,team=nge]
execute if score mode settings matches 4 if score random settings matches 0 if score onik settings matches 3 run team join oni @r[limit=3,team=nge]
execute if score mode settings matches 4 if score random settings matches 0 if score onik settings matches 4 run team join oni @r[limit=4,team=nge]
execute if score mode settings matches 4 if score random settings matches 0 if score onik settings matches 5 run team join oni @r[limit=5,team=nge]
execute if score mode settings matches 4 if score random settings matches 0 if score onik settings matches 6 run team join oni @r[limit=6,team=nge]
execute if score mode settings matches 4 if score random settings matches 0 if score onik settings matches 7 run team join oni @r[limit=7,team=nge]
execute if score mode settings matches 4 if score random settings matches 0 if score onik settings matches 8 run team join oni @r[limit=8,team=nge]
execute if score mode settings matches 4 if score random settings matches 0 if score onik settings matches 9 run team join oni @r[limit=9,team=nge]
execute if score mode settings matches 4 if score random settings matches 0 if score onik settings matches 10 run team join oni @r[limit=10,team=nge]
execute if score mode settings matches 4 if score random settings matches 0 run tellraw @a ["",{"text":"\u4eca\u56de\u306e\u9b3c\u306f","color":"yellow"},{"selector":"@a[team=oni]","color":"red"},{"text":"\u3055\u3093\u3067\u3059\u3002","color":"yellow"}]
execute if score mode settings matches 5 run tellraw @a ["",{"text":"\u4eca\u56de\u7206\u5f3e\u3092\u6240\u6301\u3057\u3066\u3044\u308b\u306e\u306f","color":"yellow"},{"selector":"@a[team=oni]","color":"red"},{"text":"\u3055\u3093\u3067\u3059\u3002","color":"yellow"}]