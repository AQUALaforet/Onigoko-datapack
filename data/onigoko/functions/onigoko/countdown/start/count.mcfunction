schedule function onigoko:onigoko/countdown/start/19 1t
schedule function onigoko:onigoko/countdown/start/18 2t
schedule function onigoko:onigoko/countdown/start/17 3t
schedule function onigoko:onigoko/countdown/start/16 4t
schedule function onigoko:onigoko/countdown/start/15 5t
schedule function onigoko:onigoko/countdown/start/14 6t
schedule function onigoko:onigoko/countdown/start/13 7t
schedule function onigoko:onigoko/countdown/start/12 8t
schedule function onigoko:onigoko/countdown/start/11 9t
schedule function onigoko:onigoko/countdown/start/10 10t
schedule function onigoko:onigoko/countdown/start/9 11t
schedule function onigoko:onigoko/countdown/start/8 12t
schedule function onigoko:onigoko/countdown/start/7 13t
schedule function onigoko:onigoko/countdown/start/6 14t
schedule function onigoko:onigoko/countdown/start/5 15t
schedule function onigoko:onigoko/countdown/start/4 16t
schedule function onigoko:onigoko/countdown/start/3 17t
schedule function onigoko:onigoko/countdown/start/2 18t
schedule function onigoko:onigoko/countdown/start/1 19t
schedule function onigoko:onigoko/countdown/start/0 20t
schedule function onigoko:onigoko/countdown/start/-1 26t
schedule function onigoko:onigoko/countdown/start/-2 28t
schedule function onigoko:onigoko/countdown/start/-3 30t
schedule function onigoko:onigoko/countdown/start/-4 32t
schedule function onigoko:onigoko/countdown/start/-5 34t
schedule function onigoko:onigoko/countdown/start/-7 36t
schedule function onigoko:onigoko/countdown/start/-6 40t
scoreboard players set game settings 1
execute if score mode settings matches 0..4 run scoreboard players operation min time = min min
execute if score mode settings matches 0..4 run scoreboard players operation sec time = sec sec
execute if score mode settings matches 5 if score nge settings matches 20.. run scoreboard players set min time 1
execute if score mode settings matches 5 if score nge settings matches 20.. run scoreboard players set sec time 30
execute if score mode settings matches 5 if score nge settings matches 16..19 run scoreboard players set min time 1
execute if score mode settings matches 5 if score nge settings matches 16..19 run scoreboard players set sec time 0
execute if score mode settings matches 5 if score nge settings matches 12..15 run scoreboard players set min time 1
execute if score mode settings matches 5 if score nge settings matches 12..15 run scoreboard players set sec time 0
execute if score mode settings matches 5 if score nge settings matches 7..11 run scoreboard players set min time 0
execute if score mode settings matches 5 if score nge settings matches 7..11 run scoreboard players set sec time 45
execute if score mode settings matches 5 if score nge settings matches 2..6 run scoreboard players set min time 0
execute if score mode settings matches 5 if score nge settings matches 2..6 run scoreboard players set sec time 45
execute if score mode settings matches 0 run function onigoko:onigoko/game/hueoni/hueoni
execute if score mode settings matches 1 run function onigoko:onigoko/game/ice/ice
execute if score mode settings matches 4 run function onigoko:onigoko/game/kawari/kawari
execute if score mode settings matches 3 run function onigoko:onigoko/game/keidoro/keidoro
execute if score mode settings matches 2 run function onigoko:onigoko/game/normal/normal
execute if score mode settings matches 5 run function onigoko:onigoko/game/tnttag/tnttag
execute positioned as @a run playsound entity.ender_dragon.ambient player @a ~ ~ ~ 1 1 1