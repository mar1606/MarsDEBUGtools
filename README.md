# MarsDEBUGtools
 
**僕専用**のツールです。
なので責任は一切負いません。


# 使い方

他人が使うことを想定していないので簡単な説明だけ。

## TUSBMOBのステータス表示

1. データパックをダウンロードして解凍し、functionフォルダに突っ込む。
2. ワールド開いたらチャット欄で **/function m.debug:tusb_mobs_status/tags/add_view_hp** を実行。HPが表示されます。
4. **/function m.debug:tusb_mobs_status/tags/add_view_mp** を実行するとMPがボスバーに表示されます。

execute as @p run等でコマブロで入力もあり

これでステータス表示の準備完了。

なお、どちらを実行しようが、HP,MPは両方表示されます。ただし、ボスバーには片方しか反映されません。

TUSBのMOBの半径20マスに入るとステータスがボスバーとして見ることができます。

ただし、友好MOBには対応していません。(対応予定)

# 注意点

使う上での注意点を少し。

以下のタグ、ボスバーIDを使用しています。

* m.view_HP
* m.view_MP
* m.bossbar_view
* mars:tusb_status_hp
* mars:tusb_status_mp
