#透明化処理
execute if score inv settings matches 0 run execute positioned as @a run execute if entity @p[team=!ice,nbt={SelectedItem:{id:"minecraft:glass_pane",Count:1b,tag:{Enchantments:[{}]}}}] run tag @p[team=!ice,nbt={SelectedItem:{id:"minecraft:glass_pane",Count:1b,tag:{Enchantments:[{}]}}}] add inv
execute if score inv settings matches 0 run tag @a[team=!ice,scores={inv3=..0,inv2=..0}] remove inv
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv] run item replace entity @p[team=!ice] inventory.0 from entity @p[team=!ice] hotbar.0
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv] run item replace entity @p[team=!ice] inventory.1 from entity @p[team=!ice] hotbar.1
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv] run item replace entity @p[team=!ice] inventory.2 from entity @p[team=!ice] hotbar.2
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv] run item replace entity @p[team=!ice] inventory.3 from entity @p[team=!ice] hotbar.3
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv] run item replace entity @p[team=!ice] inventory.4 from entity @p[team=!ice] hotbar.4
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv] run item replace entity @p[team=!ice] inventory.5 from entity @p[team=!ice] hotbar.5
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv] run item replace entity @p[team=!ice] inventory.6 from entity @p[team=!ice] hotbar.6
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv] run item replace entity @p[team=!ice] inventory.7 from entity @p[team=!ice] hotbar.7
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv] run item replace entity @p[team=!ice] inventory.8 from entity @p[team=!ice] hotbar.8
execute if score inv settings matches 0 run tag @p[team=!ice,tag=inv2,scores={inv2=..0,inv3=..0}] add inv3
execute if score inv settings matches 0 run tag @a[team=!ice,tag=inv] add inv2
execute if score inv settings matches 0 run clear @a[team=!ice,tag=inv2] glass_pane
execute if score inv settings matches 0 run tag @a[team=!ice,tag=inv] remove inv
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv2] run execute if entity @p[nbt={SelectedItem:{id:"minecraft:barrier"}}] run tag @p[team=!ice,tag=inv2] add inv3
execute if score inv settings matches 0 run item replace entity @a[team=!ice,tag=inv] weapon.mainhand with air
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv3] run execute unless data entity @p Inventory[{Slot:0b}] run item replace entity @p[team=!ice] inventory.0 with glass_pane{display:{Name:'{"text":"透明化","color":"aqua","italic":false}',Lore:['{"text":"所持している間、透明になることができる","color":"white","italic":false}','{"text":"スロットを移動すると透明化は解除される","color":"white","italic":false}']},Enchantments:[{}]} 1
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv3] run execute unless data entity @p Inventory[{Slot:1b}] run item replace entity @p[team=!ice] inventory.1 with glass_pane{display:{Name:'{"text":"透明化","color":"aqua","italic":false}',Lore:['{"text":"所持している間、透明になることができる","color":"white","italic":false}','{"text":"スロットを移動すると透明化は解除される","color":"white","italic":false}']},Enchantments:[{}]} 1
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv3] run execute unless data entity @p Inventory[{Slot:2b}] run item replace entity @p[team=!ice] inventory.2 with glass_pane{display:{Name:'{"text":"透明化","color":"aqua","italic":false}',Lore:['{"text":"所持している間、透明になることができる","color":"white","italic":false}','{"text":"スロットを移動すると透明化は解除される","color":"white","italic":false}']},Enchantments:[{}]} 1
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv3] run execute unless data entity @p Inventory[{Slot:3b}] run item replace entity @p[team=!ice] inventory.3 with glass_pane{display:{Name:'{"text":"透明化","color":"aqua","italic":false}',Lore:['{"text":"所持している間、透明になることができる","color":"white","italic":false}','{"text":"スロットを移動すると透明化は解除される","color":"white","italic":false}']},Enchantments:[{}]} 1
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv3] run execute unless data entity @p Inventory[{Slot:4b}] run item replace entity @p[team=!ice] inventory.4 with glass_pane{display:{Name:'{"text":"透明化","color":"aqua","italic":false}',Lore:['{"text":"所持している間、透明になることができる","color":"white","italic":false}','{"text":"スロットを移動すると透明化は解除される","color":"white","italic":false}']},Enchantments:[{}]} 1
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv3] run execute unless data entity @p Inventory[{Slot:5b}] run item replace entity @p[team=!ice] inventory.5 with glass_pane{display:{Name:'{"text":"透明化","color":"aqua","italic":false}',Lore:['{"text":"所持している間、透明になることができる","color":"white","italic":false}','{"text":"スロットを移動すると透明化は解除される","color":"white","italic":false}']},Enchantments:[{}]} 1
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv3] run execute unless data entity @p Inventory[{Slot:6b}] run item replace entity @p[team=!ice] inventory.6 with glass_pane{display:{Name:'{"text":"透明化","color":"aqua","italic":false}',Lore:['{"text":"所持している間、透明になることができる","color":"white","italic":false}','{"text":"スロットを移動すると透明化は解除される","color":"white","italic":false}']},Enchantments:[{}]} 1
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv3] run execute unless data entity @p Inventory[{Slot:7b}] run item replace entity @p[team=!ice] inventory.7 with glass_pane{display:{Name:'{"text":"透明化","color":"aqua","italic":false}',Lore:['{"text":"所持している間、透明になることができる","color":"white","italic":false}','{"text":"スロットを移動すると透明化は解除される","color":"white","italic":false}']},Enchantments:[{}]} 1
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv3] run execute unless data entity @p Inventory[{Slot:8b}] run item replace entity @p[team=!ice] inventory.8 with glass_pane{display:{Name:'{"text":"透明化","color":"aqua","italic":false}',Lore:['{"text":"所持している間、透明になることができる","color":"white","italic":false}','{"text":"スロットを移動すると透明化は解除される","color":"white","italic":false}']},Enchantments:[{}]} 1
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv2] run execute unless entity @p[nbt={SelectedItemSlot:0}] run item replace entity @p[team=!ice,tag=inv2] hotbar.0 with barrier
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv2] run execute unless entity @p[nbt={SelectedItemSlot:1}] run item replace entity @p[team=!ice,tag=inv2] hotbar.1 with barrier
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv2] run execute unless entity @p[nbt={SelectedItemSlot:2}] run item replace entity @p[team=!ice,tag=inv2] hotbar.2 with barrier
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv2] run execute unless entity @p[nbt={SelectedItemSlot:3}] run item replace entity @p[team=!ice,tag=inv2] hotbar.3 with barrier
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv2] run execute unless entity @p[nbt={SelectedItemSlot:4}] run item replace entity @p[team=!ice,tag=inv2] hotbar.4 with barrier
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv2] run execute unless entity @p[nbt={SelectedItemSlot:5}] run item replace entity @p[team=!ice,tag=inv2] hotbar.5 with barrier
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv2] run execute unless entity @p[nbt={SelectedItemSlot:6}] run item replace entity @p[team=!ice,tag=inv2] hotbar.6 with barrier
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv2] run execute unless entity @p[nbt={SelectedItemSlot:7}] run item replace entity @p[team=!ice,tag=inv2] hotbar.7 with barrier
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv2] run execute unless entity @p[nbt={SelectedItemSlot:8}] run item replace entity @p[team=!ice,tag=inv2] hotbar.8 with barrier
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv2] run scoreboard players remove @p[tag=inv2] inv 1
execute if score inv settings matches 0 run effect give @a[team=!ice,tag=inv2] invisibility 1 0 true
execute if score inv settings matches 0 run effect clear @a[team=!ice,tag=!inv2,scores={ice4=0}] invisibility
execute if score inv settings matches 0 run effect clear @a[team=!ice,tag=inv2] strength
execute if score inv settings matches 0 run effect give @a[team=!ice,team=oni,tag=inv2] weakness 1 10 true
execute if score inv settings matches 0 run clear @a[team=!ice,tag=inv3] barrier
execute if score inv settings matches 0 run tag @a[team=!ice,tag=inv3] remove inv2
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv3] run item replace entity @p[team=!ice,tag=inv3] hotbar.0 from entity @p[team=!ice,tag=inv3] inventory.0
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv3] run item replace entity @p[team=!ice,tag=inv3] hotbar.1 from entity @p[team=!ice,tag=inv3] inventory.1
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv3] run item replace entity @p[team=!ice,tag=inv3] hotbar.2 from entity @p[team=!ice,tag=inv3] inventory.2
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv3] run item replace entity @p[team=!ice,tag=inv3] hotbar.3 from entity @p[team=!ice,tag=inv3] inventory.3
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv3] run item replace entity @p[team=!ice,tag=inv3] hotbar.4 from entity @p[team=!ice,tag=inv3] inventory.4
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv3] run item replace entity @p[team=!ice,tag=inv3] hotbar.5 from entity @p[team=!ice,tag=inv3] inventory.5
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv3] run item replace entity @p[team=!ice,tag=inv3] hotbar.6 from entity @p[team=!ice,tag=inv3] inventory.6
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv3] run item replace entity @p[team=!ice,tag=inv3] hotbar.7 from entity @p[team=!ice,tag=inv3] inventory.7
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv3] run item replace entity @p[team=!ice,tag=inv3] hotbar.8 from entity @p[team=!ice,tag=inv3] inventory.8
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv3] run item replace entity @p[team=!ice,tag=inv3] inventory.0 with air
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv3] run item replace entity @p[team=!ice,tag=inv3] inventory.1 with air
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv3] run item replace entity @p[team=!ice,tag=inv3] inventory.2 with air
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv3] run item replace entity @p[team=!ice,tag=inv3] inventory.3 with air
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv3] run item replace entity @p[team=!ice,tag=inv3] inventory.4 with air
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv3] run item replace entity @p[team=!ice,tag=inv3] inventory.5 with air
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv3] run item replace entity @p[team=!ice,tag=inv3] inventory.6 with air
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv3] run item replace entity @p[team=!ice,tag=inv3] inventory.7 with air
execute if score inv settings matches 0 run execute positioned as @a[team=!ice,tag=inv3] run item replace entity @p[team=!ice,tag=inv3] inventory.8 with air
execute if score inv settings matches 0 run tag @a[team=!ice,tag=inv3] remove inv3
