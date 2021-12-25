##Swich gamemode

#アドベンチャーかサバイバルの時
    #タグ付け
    execute if entity @e[type=snowball,nbt={Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"クリエイティブに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"2秒間スペクテイターに変更","color":"gray"}']}}}}] run tag @s add m.in_adventure
    #処理開始
    execute if entity @e[type=snowball,nbt={Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"クリエイティブに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"2秒間スペクテイターに変更","color":"gray"}']}}}}] run function m.debug:useful_tools/execution/gamemode_switch/in_adventure

#クリエイティブの時
    #タグ付け
    execute if entity @e[type=snowball,nbt={Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"サバイバルに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"アドベンチャーに変更","color":"gray"}']}}}}] run tag @s add m.in_creative
    #処理開始
    execute if entity @e[type=snowball,nbt={Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"サバイバルに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"アドベンチャーに変更","color":"gray"}']}}}}] run function m.debug:useful_tools/execution/gamemode_switch/in_creative

##スコアリセット
    scoreboard players reset @s m.use_snowball
