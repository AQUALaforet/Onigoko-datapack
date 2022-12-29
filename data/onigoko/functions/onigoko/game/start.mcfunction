title @a times 0 25 0
#ランダム鬼指定
execute if score random settings matches 0 if score mode settings matches 0..3 if score onik settings matches 1 run team join oni @r[limit=1]
execute if score random settings matches 0 if score mode settings matches 0..3 if score onik settings matches 2 run team join oni @r[limit=2]
execute if score random settings matches 0 if score mode settings matches 0..3 if score onik settings matches 3 run team join oni @r[limit=3]
execute if score random settings matches 0 if score mode settings matches 0..3 if score onik settings matches 4 run team join oni @r[limit=4]
execute if score random settings matches 0 if score mode settings matches 0..3 if score onik settings matches 5 run team join oni @r[limit=5]
execute if score random settings matches 0 if score mode settings matches 0..3 if score onik settings matches 6 run team join oni @r[limit=6]
execute if score random settings matches 0 if score mode settings matches 0..3 if score onik settings matches 7 run team join oni @r[limit=7]
execute if score random settings matches 0 if score mode settings matches 0..3 if score onik settings matches 8 run team join oni @r[limit=8]
execute if score random settings matches 0 if score mode settings matches 0..3 if score onik settings matches 9 run team join oni @r[limit=9]
execute if score random settings matches 0 if score mode settings matches 0..3 if score onik settings matches 10 run team join oni @r[limit=10]
execute if score mode settings matches 0..3 if score random settings matches 0 run tellraw @a ["",{"text":"\u4eca\u56de\u306e\u9b3c\u306f","color":"yellow"},{"selector":"@a[team=oni]","color":"red"},{"text":"\u3055\u3093\u3067\u3059\u3002","color":"yellow"}]
#鬼以外または全員を逃指定
execute if score mode settings matches 0..3 run team join nge @a[team=!oni]
execute if score mode settings matches 4 if score random settings matches 0 run team join nge @a
execute if score mode settings matches 5 run team join nge @a
execute if score mode settings matches 4 if score random settings matches 1 run team join nge @a[team=!oni]
#カウントダウン開始
execute if score mode settings matches 0..3 if entity @a[team=nge] unless score oni settings matches ..0 if score random settings matches 1 run function onigoko:onigoko/countdown/count
execute if entity @a[team=nge] if score random settings matches 0 run function onigoko:onigoko/countdown/count
execute if score mode settings matches 4 if entity @a[team=nge] unless score oni settings matches ..0 if score random settings matches 1 run function onigoko:onigoko/countdown/count
#ゲームモード変更
execute if entity @a[team=nge] unless score oni settings matches ..0 run gamemode adventure @a
#ゲーム開始メッセージ
execute if entity @a[team=nge] unless score oni settings matches ..0 if score random settings matches 1 run tellraw @a {"text":"\u30b2\u30fc\u30e0\u3092\u958b\u59cb\u3057\u307e\u3059...","color":"yellow"}
execute if entity @a[team=nge] if score random settings matches 0 run tellraw @a {"text":"\u30b2\u30fc\u30e0\u3092\u958b\u59cb\u3057\u307e\u3059...","color":"yellow"}
#エラーメッセージ
execute if score mode settings matches 0..3 if score random settings matches 1 if score oni settings matches ..0 run tellraw @s {"text":"\u30a8\u30e9\u30fc:\u9b3c\u304c\u8a2d\u5b9a\u3055\u308c\u3066\u3044\u307e\u305b\u3093\u3002","color":"red"}
execute if score mode settings matches 4 if score random settings matches 1 if score oni settings matches ..0 run tellraw @s {"text":"\u30a8\u30e9\u30fc:\u9b3c\u304c\u8a2d\u5b9a\u3055\u308c\u3066\u3044\u307e\u305b\u3093\u3002","color":"red"}
execute unless entity @a[team=nge] run tellraw @s ["",{"text":"\u30a8\u30e9\u30fc:\u9003\u8d70\u8005\u304c\u3044\u307e\u305b\u3093\u3002","color":"red"},{"text":" "}]