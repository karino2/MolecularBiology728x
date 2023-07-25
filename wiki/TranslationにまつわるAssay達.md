
## Toeprinting Assay

Small SubunitがmRNAのAUGの場所に配置されるかどうかを調べるassayに、Toeprinting Assayがある。

[11ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=10)


これは、AUGが正しく配置されると、そこからSmall Subunitに覆われている範囲が3'末端側にAUGから16ntだ、という事を利用したassay。
Small Subunitに覆われている所はreverse transcriptaseがreverse transcript出来ないので、
3'末端からreverse transcriptionしていけば、どこまでreverse transcriptされたかでSmall Subunitの位置を測る事が出来る。

1. 実験したいInitiation Complexを形成
2. labelled DNA primerをmRNAの3'末端とアニールする
3. reverse transcriptaseでreverse transcriptする（基本的にはSmall Subunitまで）
4. denaturing acrylamide gelで分離して電気泳動
5. AUGまでの同じ配列になるような相補的なDNAから作ったマーカーと比較してそこからの相対的な短さを調べる（期待値はマーカーのAから16ntだけ短い所にlabelが出ること）

長さからSmall Subunitの壁がどこかが分かり、そこから16ntの位置にPサイトの端が位置すると思われるので、Small Subunitがどこに配置されたかを調べる事が出来る。

## Hydroxyl Radical Footprinting

リボソームのbinding siteを調べるassay。

従来のfootprintingとの違いを以下に並べる。

|  | 通常のfootprinting | hydroxyl radical footprinting |
| ---- | ---- | ---- |
| nucleic acidを切断する方法 | nuclease | OHラディカル |
| 切断を識別する方法 | nucleic acidのend labeling | nucleic acid templateのprimer extension |

リボソームの中は通常のRNaseではアクセス出来ないので、これは使えない。

Fe2+とH2O2が反応して、OHラディカルとOH-が出来るという反応、
Fenton reactionを使う。

このOHラディカルがRNAのリボース（やDNAも）を切断する。
OHラディカルはとても小さい粒子なのでリボソームの中も入れる。

rRNAは3000 baseもあるので、end labelingして検出するのは難しい。
そこでprimerをアニールしてReverse Transcriptaseで逆転写して検出する。

primerをアニールする場所はbinding siteからあまり離れていると逆転写は難しいので、ある程度はこの辺、というあたりは付いている必要がある。

また、結果のfootprintはそこまでくっきりとは出ない。
OHラディカルはとても小さいのでよっぽどちゃんと結合していないと切断を防ぎきれないから。

例えば塩基と相互作用しているようなケースだとリボースは保護されないので、そういう結合はこれでは調べられない。

### Protein Dependent Hydroxy Radical Cleavage

OHラディカルを結合する場所のそばにだけ作る事で、結合する付近を特定する、という亜種がある。
その手法を以下に見る。

1. 調べたい結合対象のタンパク質をFe+ binding chemicalで一箇所だけFe+を保持するように処置する
    - Cysteineが一つだけならそれを変更する事で行える
       - 対象とするタンパク質にCysteineが無ければ、適当な場所にCysteineを持たす変異を作れば良い。
     - Fe+は結合する場所のそばであって欲しい（けれど近すぎると結合する能力を失う変異となってしまう可能性がある）
2. indirect end-labelingで検出（primerを候補のそばにannealしてextend）

上手く行けばこの手法の方が、はっきりしたfootprintを見ることが出来る。

## Translationに関わるAntibiotics

抗生物質はリボソームをターゲットにするものが多く、Assayにも使える場合があるのでここで見ておく。

| 抗生物質 | ターゲット | 効果 |
| ---- | ---- | ---- |
| puromycin | peptidyl transferase center | terminates chain |
| chloramphenicol | large subunit A-site | tRNAがA-siteに結合するのを防ぐ |
| erythromycin | peptide exit tunnel | タンパク質合成をストールさせる |
| edeine | small subunit E-site | IF3の結合を妨げ、initiationを抑制する |
| tetracyclin | small subunit A-site | tRNAのaccomodationを防ぐ |

これらはバクテリアをターゲットとした抗生物質。

### puromycinの例

puromycinはLarge SubunitのA-siteに結合する。
puromycinはA-siteのtRNAっぽく振る舞い、
peptidyl transferase reactionが起こるが、
puromycinはmRNAとは結合していないので、
ペプチドがくっついた後にそのままリボソームの外に流れ出してしまう。

こうしてTranslationが途中で終わる事になる。

puromycinはこのため、peptidyl transferaseの活動量を計測するのにも使われる。
この目的にはbiotinylated puromycinが使われる。

## Translationに関わるAnalogs

Translationでは様々なステップでGTPの加水分解が挟まっているので、
GTP-analogで加水分解しなかったりしづらかったりするものをつかうことで、途中の段階で止める事が出来る。

例えば[TranslationのInitiation](Translation%E3%81%AEInitiation)を調べようと思ったとすると、IF2のリリースの手前で止める為にGTP-analogが使える。

GTP-γ-SとGMP-PCPがよく使われる。

GTP-γ-Sはγのリン酸基の酸素の代わりにSがついたもの。
これは対象とする酵素によって加水分解を完全に抑制したり、すごく少なくしたりする。

GMP-PCPは三リン酸の真ん中をリンじゃなくて炭素に置き換えたもの。
これは全く加水分解されない。
ただし構造的にも結構変わってしまうので、
ものによってはGTPの代わりに結合してくれない。
その場合はGTP-γ-Sを使ったりする。