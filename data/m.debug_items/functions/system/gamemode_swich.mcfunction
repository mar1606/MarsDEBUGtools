##################
# Gamemode_swichのシステム
##################

#演出はmakeupに任せる。
function m.debug_items:makeup/gamemode_swich

#実行した時
    #スニーク検知(クリエイティブモードの時のみ)
        #実行者がスニークをしていない
        execute as @s[gamemode=creative,predicate=!m.debug_items:sneak] run function m.debug_items:items/use/gamemode_swich/swich_suvival
        #実行者がスニークをしている
        execute as @s[gamemode=creative,predicate=m.debug_items:sneak] run function m.debug_items:items/use/gamemode_swich/swich_adventure
    #実行者をクリエイティブに変更(クリエイティブモード以外の時のみ)
    execute as @s[gamemode=!creative] run function m.debug_items:items/use/gamemode_swich/swich_creative