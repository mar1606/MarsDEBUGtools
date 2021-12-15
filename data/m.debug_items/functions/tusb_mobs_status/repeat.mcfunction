##TUSBのmobステータス表示

#表示モード：HP
    #bossbar作成/削除
    execute as @a[tag=m.view_HP] at @s if entity @e[tag=Mob,distance=..20] run bossbar add mars:tusb_status_hp {"text":"error"}
    execute as @a[tag=m.view_HP] at @s if entity @e[tag=Mob,distance=..20] run bossbar set mars:tusb_status_hp color white
    execute as @a[tag=m.view_HP] at @s unless entity @e[tag=Mob,distance=..20] run bossbar remove mars:tusb_status_hp
    #だれが見るか
    bossbar set mars:tusb_status_hp players @a[tag=m.view_HP]
    #上のテキスト表示
    execute as @a[tag=m.view_HP] at @s run bossbar set mars:tusb_status_hp name [{"text":"[","color":"red","bold":true},{"selector":"@e[tag=Mob,sort=nearest,limit=1]","separator":"//","color":"red"},{"text":"]"},{"text":"   HP","color":"dark_gray","bold":false},{"text":"：","color":"white"},{"score":{"name":"@e[tag=Mob,sort=nearest,limit=1]","objective":"HP"},"color":"green","bold":false},{"text":"   MP:","color":"gray","bold":false},{"score":{"name":"@e[tag=Mob,sort=nearest,limit=1]","objective":"MP"},"color":"gray","bold":false}]
    #バー関連の設定
    execute as @a[tag=m.view_HP] at @s store result bossbar mars:tusb_status_hp max run scoreboard players get @e[tag=Mob,sort=nearest,limit=1] HPMax
    execute as @a[tag=m.view_HP] at @s store result bossbar mars:tusb_status_hp value run scoreboard players get @e[tag=Mob,sort=nearest,limit=1] HP

#表示モード：MP
    #bossbar作成/削除
    execute as @a[tag=m.view_MP] at @s if entity @e[tag=Mob,distance=..20] run bossbar add mars:tusb_status_mp {"text":"error"}
    execute as @a[tag=m.view_MP] at @s if entity @e[tag=Mob,distance=..20] run bossbar set mars:tusb_status_mp color purple
    execute as @a[tag=m.view_MP] at @s unless entity @e[tag=Mob,distance=..20] run bossbar remove mars:tusb_status_mp
    #だれが見るか
    bossbar set mars:tusb_status_mp players @a[tag=m.view_MP]
    #上のテキスト表示
    execute as @a[tag=m.view_MP] at @s run bossbar set mars:tusb_status_mp name [{"text":"[","color":"red","bold":true},{"selector":"@e[tag=Mob,sort=nearest,limit=1]","separator":"//","color":"red"},{"text":"]"},{"text":"   MP","color":"dark_gray","bold":false},{"text":"：","color":"white"},{"score":{"name":"@e[tag=Mob,sort=nearest,limit=1]","objective":"MP"},"color":"green","bold":false},{"text":"   HP:","color":"gray","bold":false},{"score":{"name":"@e[tag=Mob,sort=nearest,limit=1]","objective":"HP"},"color":"gray","bold":false}]
    #バー関連の設定
    execute as @a[tag=m.view_MP] at @s store result bossbar mars:tusb_status_mp max run scoreboard players get @e[tag=Mob,sort=nearest,limit=1] MPMax
    execute as @a[tag=m.view_MP] at @s store result bossbar mars:tusb_status_mp value run scoreboard players get @e[tag=Mob,sort=nearest,limit=1] MP