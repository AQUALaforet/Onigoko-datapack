tag @r[tag=onik] add onir
team join oni @a[tag=onir]
execute if entity @a[tag=onir] run tellraw @a ["",{"text":"\u4eca\u56de\u306e\u9b3c\u306f","color":"yellow"},{"selector":"@a[tag=onir]","color":"red"},{"text":"\u3055\u3093\u3067\u3059\u3002","color":"yellow"}]
tag @a[tag=onir] remove onir
execute unless entity @a[tag=onik] run tellraw @s {"text":"\u30a8\u30e9\u30fc:\u9b3c\u3092\u9078\u629e\u3067\u304d\u307e\u305b\u3093\u3067\u3057\u305f\u3002","color":"red"}