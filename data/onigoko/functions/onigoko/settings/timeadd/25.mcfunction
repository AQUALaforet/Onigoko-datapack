tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n"},{"text":"\u6570\u5024\u3092\u5909\u66f4\u3059\u308b\u306b\u306f\u3001\u8a72\u5f53\u306e\u5834\u6240\u3092\u9078\u629e\u5f8c\u4e0b\u7dda\u90e8\u306e\u6570\u5024\u3092\u5909\u66f4\u3057\u307e\u3059\u3002","color":"gray"},{"text":"\n"},{"text":"/scoreboard players set test test","color":"dark_gray"},{"text":" ","color":"gray"},{"text":"0","underlined":true,"color":"green"},{"text":"\n "}]
tellraw @s ["",{"text":"\u9b3c\u3054\u3063\u3053 v1.0.0a \u8a2d\u5b9a>\u6642\u9593\u8ffd\u52a0>25\u5206\u524d","color":"yellow"},{"text":"\n"},{"text":"------------------------------","color":"yellow"},{"text":"\n"},{"text":"[\u25c0\u623b\u308b]","color":"yellow","clickEvent":{"action":"run_command","value":"/function onigoko:onigoko/settings/detail/timeadd"}},{"text":"\n "}]
execute if score 25timeadd settings matches 0 run tellraw @s ["",{"text":"\u72b6\u614b: ","color":"yellow"},{"text":"\u6709\u52b9","color":"green"},{"text":" ","color":"yellow"},{"text":"[\u7121\u52b9\u5316]","color":"gold","clickEvent":{"action":"run_command","value":"/function onigoko:onigoko/settings/disable/25"}}]
execute if score 25timeadd settings matches 1 run tellraw @s ["",{"text":"\u72b6\u614b: ","color":"yellow"},{"text":"\u7121\u52b9","color":"red"},{"text":" ","color":"yellow"},{"text":"[\u6709\u52b9\u5316]","color":"gold","clickEvent":{"action":"run_command","value":"/function onigoko:onigoko/settings/enable/25"}}]
tellraw @s ["",{"text":"\u900f\u660e","color":"yellow"},{"text":"\n"},{"text":"\u9003","color":"aqua"},{"text":":","color":"yellow"},{"text":" "},{"score":{"name":"25ninv3","objective":"settings"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"25ninv2","objective":"settings"},"color":"green"},{"text":"\u79d2","color":"yellow"},{"text":" \u9b3c","color":"red"},{"text":":","color":"yellow"},{"text":" "},{"score":{"name":"25oinv3","objective":"settings"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"25oinv2","objective":"settings"},"color":"green"},{"text":"\u79d2","color":"yellow"},{"text":" \u4ee3:","color":"yellow"},{"text":" "},{"score":{"name":"25kinv3","objective":"settings"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"25kinv2","objective":"settings"},"color":"green"},{"text":"\u79d2","color":"yellow"},{"text":"\n"},{"text":"\u9003","color":"aqua"},{"text":" "},{"text":"[\u79d2\u5909\u66f4]","color":"gold","clickEvent":{"action":"suggest_command","value":"/scoreboard players set 25ninv3 settings 0"}},{"text":" ","color":"gold"},{"text":"[\u5c11\u6570\u5909\u66f4]","color":"gold","clickEvent":{"action":"suggest_command","value":"/scoreboard players set 25ninv2 settings 0"}},{"text":" \u9b3c","color":"red"},{"text":" "},{"text":"[\u79d2\u5909\u66f4]","color":"gold","clickEvent":{"action":"suggest_command","value":"/scoreboard players set 25oinv3 settings 0"}},{"text":" ","color":"gold"},{"text":"[\u5c11\u6570\u5909\u66f4]","color":"gold","clickEvent":{"action":"suggest_command","value":"/scoreboard players set 25oinv2 settings 0"}},{"text":" \u4ee3","color":"yellow"},{"text":" "},{"text":"[\u79d2\u5909\u66f4]","color":"gold","clickEvent":{"action":"suggest_command","value":"/scoreboard players set 25kinv3 settings 0"}},{"text":" ","color":"gold"},{"text":"[\u5c11\u6570\u5909\u66f4]","color":"gold","clickEvent":{"action":"suggest_command","value":"/scoreboard players set 25kinv2 settings 0"}},{"text":"\n\n"},{"text":"\u4fca\u654f","color":"yellow"},{"text":"\n"},{"text":"\u9003","color":"aqua"},{"text":":","color":"yellow"},{"text":" "},{"score":{"name":"25nsp3","objective":"settings"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"25nsp2","objective":"settings"},"color":"green"},{"text":"\u79d2","color":"yellow"},{"text":" \u9b3c","color":"red"},{"text":":","color":"yellow"},{"text":" "},{"score":{"name":"25osp3","objective":"settings"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"25osp2","objective":"settings"},"color":"green"},{"text":"\u79d2 \u4ee3:","color":"yellow"},{"text":" "},{"score":{"name":"25osp3","objective":"settings"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"25osp2","objective":"settings"},"color":"green"},{"text":"\u79d2","color":"yellow"},{"text":"\n\n"},{"text":"\u9003","color":"aqua"},{"text":" "},{"text":"[\u79d2\u5909\u66f4]","color":"gold","clickEvent":{"action":"suggest_command","value":"/scoreboard players set 25nsp3 settings 0"}},{"text":" ","color":"gold"},{"text":"[\u5c11\u6570\u5909\u66f4]","color":"gold","clickEvent":{"action":"suggest_command","value":"/scoreboard players set 25nsp2 settings 0"}},{"text":" \u9b3c","color":"red"},{"text":" "},{"text":"[\u79d2\u5909\u66f4]","color":"gold","clickEvent":{"action":"suggest_command","value":"/scoreboard players set 25osp3 settings 0"}},{"text":" ","color":"gold"},{"text":"[\u5c11\u6570\u5909\u66f4]","color":"gold","clickEvent":{"action":"suggest_command","value":"/scoreboard players set 25osp2 settings 0"}},{"text":" \u4ee3","color":"yellow"},{"text":" "},{"text":"[\u79d2\u5909\u66f4]","color":"gold","clickEvent":{"action":"suggest_command","value":"/scoreboard players set 25ksp3 settings 0"}},{"text":" ","color":"gold"},{"text":"[\u5c11\u6570\u5909\u66f4]","color":"gold","clickEvent":{"action":"suggest_command","value":"/scoreboard players set 25ksp2 settings 0"}},{"text":"\n\n"},{"text":"------------------------------","color":"yellow"}]