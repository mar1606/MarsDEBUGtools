#実行元>>m.debug:useful_tools/check

##adventure or survival→creative or spectator

#雪玉kill
kill @e[type=snowball,nbt={Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"サバイバルに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"アドベンチャーに変更","color":"gray"}']}}}},distance=..3]
#右クリックのみ
execute unless predicate m.debug:m.sneak run gamemode survival @s[tag=m.in_creative]

#シフト＋右クリック
execute if predicate m.debug:m.sneak run gamemode adventure @s[tag=m.in_creative]

#最後に雪玉を返却
item replace entity @s[tag=m.in_creative] weapon with snowball{display:{Name:'{"text":"Switch gamemode","color":"aqua"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"クリエイティブに変更","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"3秒間スペクテイターに変更","color":"gray"}']}} 1


#タグ消去
tag @s remove m.in_creative