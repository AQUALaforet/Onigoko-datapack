scoreboard players set round settings 1
scoreboard players set countdown time 29
scoreboard players set countdown2 time 19
execute positioned as @e[type=armor_stand,tag=spawn,limit=1] run tp @a[team=nge] ~ ~ ~
effect give @a[team=nge] speed 30 6 true
schedule function onigoko:onigoko/game/30s 30s
scoreboard players set @a[scores={a_damage=1..}] a_damage 0
team modify nge friendlyFire true
team modify nge nametagVisibility always
team modify oni nametagVisibility always