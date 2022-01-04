# MarsDEBUGtools
 
**僕専用**のツールです。
なので責任は一切負いません。


# 使い方

他人が使うことを想定していないので簡単な説明だけ。

## TUSBMOBのステータス表示

1. データパックをダウンロードして解凍し、functionフォルダに突っ込む。
2. ワールド開いたらチャット欄で **function m.debug:tusb_mobs_status/tags/add_view_hp** を実行。HPが表示されます。
3. **function m.debug:tusb_mobs_status/tags/add_view_mp** でMPが表示されます。

execute as @p run等でコマブロで入力もあり。

どちらを実行しようが、HP,MPの表示はできますが、ボスバーでわかりやすくできるのはどちらか一方のみです。

これでステータス表示の準備完了。

TUSBのMOBの半径20マスに入るとステータスがボスバーとして見ることができます。

ただし、友好MOBには対応していません。(対応予定)

## SwitchGamemode

ゲームモード変更が容易になります。...F3+F4なんて知りませんね。

### クリエイティブの時の使い方

* アイテムを持って右クリックでサバイバルに。

* アイテムを持ってshift+右クリックでアドベンチャーに。

### アドベンチャーかサバイバルの時の使い方

* アイテムを持って右クリックでクリエイティブに。

* アイテムを持ってshift+右クリックで約3秒間スペクテイターに。


## Recovery health

回復したり...自身を無敵にしたり...

### 使い方

* アイテムを持って右クリックで回復

* アイテムを持ってshift+右クリックで無敵状態になる。

* 無敵状態のときにアイテムを持ってshift+右クリックで無敵状態を解除。

# 注意点

使う上での注意点を少し。

複数MOBを出したときは、一番目に出したMOBのステータスが表示されます(多分)

複数MOBを出した場合、Turn表記がバグります。(許して)

以下のタグ、ボスバーIDを使用しています。


* m.view_HP
* m.view_MP
* m.bossbar_view
* mars:tusb_status_hp
* mars:tusb_status_mp
* m.in_adventure
* m.in_creative
* m.invincible_effect
* m.idiot
* m.invincible