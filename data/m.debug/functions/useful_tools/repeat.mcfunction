##雪玉を投げた奴らを検知
execute as @a[scores={m.use_snowball=1..}] at @s run function m.debug:useful_tools/check

##GamemodeSwich

#アイテム置換

#クリエイティブ
    execute as @a[gamemode=creative,nbt={Inventory:[{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"クリエイティブに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"2秒間スペクテイターに変更","color":"gray"}']}}}]}] run give @s snowball{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"サバイバルに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"アドベンチャーに変更","color":"gray"}']}} 1
    execute as @a[gamemode=creative,nbt={Inventory:[{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"クリエイティブに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"2秒間スペクテイターに変更","color":"gray"}']}}}]}] run clear @s snowball{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"クリエイティブに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"2秒間スペクテイターに変更","color":"gray"}']}} 1

#スペクテイター
    execute as @a[gamemode=spectator,nbt={Inventory:[{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"クリエイティブに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"2秒間スペクテイターに変更","color":"gray"}']}}}]}] run give @s snowball{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"サバイバルに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"アドベンチャーに変更","color":"gray"}']}} 1
    execute as @a[gamemode=spectator,nbt={Inventory:[{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"クリエイティブに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"2秒間スペクテイターに変更","color":"gray"}']}}}]}] run clear @s snowball{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"クリエイティブに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"2秒間スペクテイターに変更","color":"gray"}']}} 1


#アドベンチャー
    execute as @a[gamemode=adventure,nbt={Inventory:[{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"サバイバルに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"アドベンチャーに変更","color":"gray"}']}}}]}] run give @s snowball{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"クリエイティブに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"2秒間スペクテイターに変更","color":"gray"}']}} 1
    execute as @a[gamemode=adventure,nbt={Inventory:[{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"サバイバルに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"アドベンチャーに変更","color":"gray"}']}}}]}] run clear @s snowball{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"サバイバルに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"アドベンチャーに変更","color":"gray"}']}} 1

#サバイバル
    execute as @a[gamemode=survival,nbt={Inventory:[{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"サバイバルに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"アドベンチャーに変更","color":"gray"}']}}}]}] run give @s snowball{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"クリエイティブに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"2秒間スペクテイターに変更","color":"gray"}']}} 1
    execute as @a[gamemode=survival,nbt={Inventory:[{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"サバイバルに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"アドベンチャーに変更","color":"gray"}']}}}]}] run clear @s snowball{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"サバイバルに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"アドベンチャーに変更","color":"gray"}']}} 1

#スペクテイターモード
    scoreboard players remove @a[scores={m.spectator_time=0..}] m.spectator_time 1

    execute as @a[scores={m.spectator_time=40}] run title @s title {"text": "2"}
    execute as @a[scores={m.spectator_time=40}] at @s run playsound ui.button.click master @s ~ ~ ~ 10 1.5
    execute as @a[scores={m.spectator_time=20}] run title @s title {"text": "1"}
    execute as @a[scores={m.spectator_time=20}] at @s run playsound ui.button.click master @s ~ ~ ~ 10 2
    execute as @a[scores={m.spectator_time=..0}] run gamemode creative @s
    execute as @a[scores={m.spectator_time=..0}] run title @s title {"text": " "}
    execute as @a[scores={m.spectator_time=..0}] run scoreboard players reset @s m.spectator_time