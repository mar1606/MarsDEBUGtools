#実行元>>m.debug:useful_tools/check

##バニラの攻撃では死なないエフェクトを！

#無敵にしてやんよ！(とりあえずつけとけ)
    effect give @s resistance 3 5 true
    effect give @s fire_resistance 3 3 true
#デバフ削除
    #不吉な予感
    effect clear @s bad_omen
    #盲目
    effect clear @s blindness
    #空腹
    effect clear @s hunger
    #即時ダメージ(いらないだろこれ)
    effect clear @s instant_damage
    #採掘速度低下
    effect clear @s mining_fatigue
    #オェーーー！
    effect clear @s nausea
    #毒
    effect clear @s poison
    #速度低下
    effect clear @s slowness
    #不運
    effect clear @s unluck
    #弱体化
    effect clear @s weakness
    #ウィザー
    effect clear @s wither
#回復
    effect give @s instant_health 3 100 true
    effect give @s saturation 3 100 true