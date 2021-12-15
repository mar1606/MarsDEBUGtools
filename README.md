# MarsDEBUGtools
 
**僕専用**のツールです。
なので責任は一切負いません。

# 使い方

他人が使うことを想定していないので簡単な説明だけ。

## TUSBMOBのステータス表示

1. データパックをダウンロードしてfunctionフォルダに突っ込む。
2. ワールド開いたらチャット欄で **/function m.debug_items:tusb_mobs_status/tags/add_view_hp** を実行。HPが表示されます。
3. **/function m.debug_items:tusb_mobs_status/tags/add_view_mp** を実行するとMPがボスバーに表示されます。

これでステータス表示の準備完了。



TUSBのMOBの半径20マスに入るとステータスがボスバーとして見ることができます。

ただし、友好モブには対応していません。

# 注意点

使う上での注意点を少し。

以下のタグ、ボスバーIDを使用しています。

* m.view_HP
* m.view_MP
* mars:tusb_status_hp
* mars:tusb_status_mp
