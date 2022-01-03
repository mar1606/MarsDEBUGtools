##雪玉を投げた奴らを検知
execute as @a[scores={m.use_snowball=1..}] at @s run function m.debug:useful_tools/check

##GamemodeSwich

#アイテム置換

#クリエイティブ
    execute as @a[gamemode=creative,nbt={SelectedItem:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"クリエイティブに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"3秒間スペクテイターに変更","color":"gray"}']}}}}] run item replace entity @s weapon with snowball{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"サバイバルに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"アドベンチャーに変更","color":"gray"}']}} 1

#スペクテイター
    execute as @a[gamemode=spectator,nbt={SelectedItem:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"クリエイティブに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"3秒間スペクテイターに変更","color":"gray"}']}}}}] run item replace entity @s weapon with snowball{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"サバイバルに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"アドベンチャーに変更","color":"gray"}']}} 1


#アドベンチャー
    execute as @a[gamemode=adventure,nbt={SelectedItem:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"サバイバルに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"アドベンチャーに変更","color":"gray"}']}}}}] run item replace entity @s weapon with snowball{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"クリエイティブに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"3秒間スペクテイターに変更","color":"gray"}']}} 1

#サバイバル
    execute as @a[gamemode=survival,nbt={SelectedItem:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"サバイバルに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"アドベンチャーに変更","color":"gray"}']}}}}] run item replace entity @s weapon with snowball{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"クリエイティブに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"3秒間スペクテイターに変更","color":"gray"}']}} 1

#スペクテイターモード
    scoreboard players remove @a[scores={m.spectator_time=0..}] m.spectator_time 1

    execute as @a[scores={m.spectator_time=40}] run title @s title {"text": "2"}
    execute as @a[scores={m.spectator_time=40}] at @s run playsound ui.button.click master @s ~ ~ ~ 10 1.5
    execute as @a[scores={m.spectator_time=20}] run title @s title {"text": "1"}
    execute as @a[scores={m.spectator_time=20}] at @s run playsound ui.button.click master @s ~ ~ ~ 10 2
    execute as @a[scores={m.spectator_time=..0}] run gamemode creative @s
    execute as @a[scores={m.spectator_time=..0}] run title @s title {"text": " "}
    execute as @a[scores={m.spectator_time=..0}] run scoreboard players reset @s m.spectator_time


##recovery health

#無敵！！！！！！！！！！！！！
    execute as @a[tag=m.invincible_effect] at @s run function m.debug:useful_tools/execution/recovery_health/invincible_effect

#置き換え
    #無敵状態の人以外
    execute as @a[tag=!m.invincible_effect,nbt={SelectedItem:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"recovery health","color":"green"}',Lore:['{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"無敵状態を消す","color":"gray"}']}}}}] run item replace entity @s weapon with snowball{display:{Name:'{"text":"recovery health","color":"green"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"体力をたくさん回復","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"無敵になる","color":"gray"}']}} 1
    #無敵状態の人
    execute as @a[tag=m.invincible_effect,nbt={SelectedItem:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"recovery health","color":"green"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"体力をたくさん回復","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"無敵になる","color":"gray"}']}}}}] run item replace entity @s weapon with snowball{display:{Name:'{"text":"recovery health","color":"green"}',Lore:['{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"無敵状態を消す","color":"gray"}']}} 1

