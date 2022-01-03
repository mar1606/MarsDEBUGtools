#実行元>>m.debug:useful_tools/repeat

##Swich gamemode

#アドベンチャーかサバイバルの時
    #タグ付け
    execute if entity @e[type=snowball,nbt={Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"クリエイティブに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"3秒間スペクテイターに変更","color":"gray"}']}}}}] run tag @s add m.in_adventure
    #処理開始
    execute if entity @e[type=snowball,nbt={Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"クリエイティブに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"3秒間スペクテイターに変更","color":"gray"}']}}}}] run function m.debug:useful_tools/execution/gamemode_switch/in_adventure

#クリエイティブの時
    #タグ付け
    execute if entity @e[type=snowball,nbt={Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"サバイバルに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"アドベンチャーに変更","color":"gray"}']}}}}] run tag @s add m.in_creative
    #処理開始
    execute if entity @e[type=snowball,nbt={Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"サバイバルに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"アドベンチャーに変更","color":"gray"}']}}}}] run function m.debug:useful_tools/execution/gamemode_switch/in_creative

##recovery health

#貧弱な時
    #タグ付け
    execute if entity @e[type=snowball,nbt={Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"recovery health","color":"green"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"体力をたくさん回復","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"無敵になる","color":"gray"}']}}}}] run tag @s add m.idiot
    #処理開始
    execute if entity @e[type=snowball,nbt={Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"recovery health","color":"green"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"体力をたくさん回復","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"無敵になる","color":"gray"}']}}}}] run function m.debug:useful_tools/execution/recovery_health/idiot

#無敵の人 (https://ja.wikipedia.org/wiki/%E7%84%A1%E6%95%B5%E3%81%AE%E4%BA%BA#:~:text=%E7%84%A1%E6%95%B5%E3%81%AE%E4%BA%BA%20(%E3%82%A4%E3%83%B3%E3%82%BF%E3%83%BC%E3%83%8D%E3%83%83%E3%83%88%E3%82%B9%E3%83%A9%E3%83%B3%E3%82%B0,%E3%81%A8%E3%81%84%E3%81%86%E6%84%8F%E5%91%B3%E3%81%AE%E3%82%A4%E3%83%B3%E3%82%BF%E3%83%BC%E3%83%8D%E3%83%83%E3%83%88%E3%82%B9%E3%83%A9%E3%83%B3%E3%82%B0%E3%80%82) の時
    #タグ付け
    execute if entity @e[type=snowball,nbt={Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"recovery health","color":"green"}',Lore:['{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"無敵状態を消す","color":"gray"}']}}}}] run tag @s add m.invincible
    #処理開始
    execute if entity @e[type=snowball,nbt={Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"recovery health","color":"green"}',Lore:['{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"無敵状態を消す","color":"gray"}']}}}}] run function m.debug:useful_tools/execution/recovery_health/invincible

##スコアリセット
    scoreboard players reset @s m.use_snowball
