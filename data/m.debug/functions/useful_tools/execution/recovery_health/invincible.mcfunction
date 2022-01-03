#実行元>>m.debug:useful_tools/check

##PRO

#雪玉kill
kill @e[type=snowball,nbt={Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"recovery health","color":"green"}',Lore:['{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"無敵状態を消す","color":"gray"}']}}}},distance=..3]

#シフト＋右クリック
execute if predicate m.debug:m.sneak run tag @s[tag=m.invincible] remove m.invincible_effect

#最後に雪玉を返却
item replace entity @s[tag=m.invincible] weapon with snowball{display:{Name:'{"text":"recovery health","color":"green"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"体力をたくさん回復","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"無敵になる","color":"gray"}']}} 1


#タグ消去
tag @s remove m.invincible