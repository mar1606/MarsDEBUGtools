#実行元>>m.debug:useful_tools/check

##Your noob!

#雪玉kill
kill @e[type=snowball,nbt={Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:'{"text":"recovery health","color":"green"}',Lore:['{"text":"右クリック","color":"dark_red"}','{"text":"体力をたくさん回復","color":"gray"}','{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"無敵になる","color":"gray"}']}}}},distance=..3]
#右クリックのみ
execute unless predicate m.debug:m.sneak run effect give @s[tag=m.idiot] instant_health 3 250 true

#シフト＋右クリック
execute if predicate m.debug:m.sneak run tag @s[tag=m.idiot] add m.invincible_effect

#デバフ削除
    #不吉な予感
    effect clear @s[tag=m.idiot] bad_omen
    #盲目
    effect clear @s[tag=m.idiot] blindness
    #空腹
    effect clear @s[tag=m.idiot] hunger
    #即時ダメージ(いらないだろこれ)
    effect clear @s[tag=m.idiot] instant_damage
    #採掘速度低下
    effect clear @s[tag=m.idiot] mining_fatigue
    #オェーーー！
    effect clear @s[tag=m.idiot] nausea
    #毒
    effect clear @s[tag=m.idiot] poison
    #速度低下
    effect clear @s[tag=m.idiot] slowness
    #不運
    effect clear @s[tag=m.idiot] unluck
    #弱体化
    effect clear @s[tag=m.idiot] weakness
    #ウィザー
    effect clear @s[tag=m.idiot] wither
    #template
    #effect clear @s[tag=m.idiot] 

#最後に雪玉を返却
item replace entity @s[tag=m.idiot] weapon with snowball{display:{Name:'{"text":"recovery health","color":"green"}',Lore:['{"text":"シフト＋右クリック","color":"dark_red"}','{"text":"無敵状態を消す","color":"gray"}']}} 1


#タグ消去
tag @s remove m.idiot