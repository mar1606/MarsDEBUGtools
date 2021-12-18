##TUSBのmobステータス表示

#表示モード：HP
    #bossbar作成/削除
    execute as @a[tag=m.view_HP] at @s if entity @e[tag=Mob,distance=..200,tag=m.mob_view] run function m.debug:tusb_mobs_status/bossbar_hp_add
    execute as @a[tag=m.view_HP] at @s unless entity @e[tag=Mob,distance=..200,tag=m.mob_view] run bossbar remove mars:tusb_status_hp
    execute as @a[tag=m.view_HP] at @s unless entity @e[tag=Mob,distance=..200,tag=m.mob_view] run tag @a remove m.bossbar_view_hp
    #だれが見るか
    bossbar set mars:tusb_status_hp players @a[tag=m.view_HP]
    #上のテキスト表示
    execute as @a[tag=m.view_HP] at @s run bossbar set mars:tusb_status_hp name [{"text":"[","color":"red","bold":true},{"selector":"@e[tag=Mob,sort=nearest,limit=1,tag=m.mob_view]","separator":"//","color":"red"},{"text":"]"},{"text":"   HP","color":"white","bold":false},{"text":"：","color":"white","bold": false},{"score":{"name":"@e[tag=Mob,sort=nearest,limit=1,tag=m.mob_view]","objective":"HP"},"color":"green","bold":false},{"text":"   MP:","color":"gray","bold":false},{"score":{"name":"@e[tag=Mob,sort=nearest,limit=1,tag=m.mob_view]","objective":"MP"},"color":"gray","bold":false},{"text":"    Turn :","color":"white","bold":false},{"nbt":"AI.Turn[0].Index","storage":"mob_data:","color":"green","bold":false}]
    

#表示モード：MP
    #bossbar作成/削除
    execute as @a[tag=m.view_MP] at @s if entity @e[tag=Mob,distance=..200,tag=m.mob_view] run function m.debug:tusb_mobs_status/bossbar_mp_add
    execute as @a[tag=m.view_MP] at @s unless entity @e[tag=Mob,distance=..200,tag=m.mob_view] run bossbar remove mars:tusb_status_mp
    execute as @a[tag=m.view_MP] at @s unless entity @e[tag=Mob,distance=..200,tag=m.mob_view] run tag @a remove m.bossbar_view_mp
    #だれが見るか
    bossbar set mars:tusb_status_mp players @a[tag=m.view_MP]
    #上のテキスト表示
    execute as @a[tag=m.view_MP] at @s if entity @e[tag=Mob,sort=nearest,distance=..200,scores={MP=0..}] run bossbar set mars:tusb_status_mp name [{"text":"[","color":"red","bold":true},{"selector":"@e[tag=Mob,sort=nearest,limit=1,tag=m.mob_view]","separator":"//","color":"red"},{"text":"]"},{"text":"   MP","color":"white","bold":false},{"text":"：","color":"white","bold": false},{"score":{"name":"@e[tag=Mob,sort=nearest,limit=1,tag=m.mob_view]","objective":"MP"},"color":"green","bold":false},{"text":"   HP:","color":"gray","bold":false},{"score":{"name":"@e[tag=Mob,sort=nearest,limit=1,tag=m.mob_view]","objective":"HP"},"color":"gray","bold":false},{"text":"    Turn :","color":"white","bold":false},{"nbt":"AI.Turn[0].Index","storage":"mob_data:","color":"green","bold":false}]
    execute as @a[tag=m.view_MP] at @s if entity @e[tag=Mob,sort=nearest,distance=..200,scores={MP=..0}] run bossbar set mars:tusb_status_mp name [{"text":"[","color":"red","bold":true},{"selector":"@e[tag=Mob,sort=nearest,limit=1,tag=m.mob_view]","separator":"//","color":"red"},{"text":"]"},{"text":"   MP","color":"white","bold":false},{"text":"：","color":"white","bold": false},{"text":"0","color":"red","bold":false},{"text":"   HP:","color":"gray","bold":false},{"score":{"name":"@e[tag=Mob,sort=nearest,limit=1,tag=m.mob_view]","objective":"HP"},"color":"gray","bold":false},{"text":"    Turn :","color":"white","bold":false},{"nbt":"AI.Turn[0].Index","storage":"mob_data:","color":"green","bold":false}]

#対象モブを設定
    #Add
    execute as @a at @s unless entity @e[tag=Mob,distance=..200,sort=nearest,tag=m.mob_view] run tag @e[tag=Mob,distance=..200,sort=nearest,tag=!m.mob_view,limit=1] add m.mob_view
    #Remove
    execute as @a at @s if entity @e[tag=Mob,distance=200..,tag=m.mob_view] run tag @e[tag=Mob,distance=..200,tag=m.mob_view] remove m.mob_view

###消去
#tellraw @a {"nbt":"AI.Turn[0].Index","storage":"mob_data:","color":"green","bold":false}
