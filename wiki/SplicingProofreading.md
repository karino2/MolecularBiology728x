Splicingの基礎となる化学的な反応、cleavageとjoiningは基本的にはisoenergeticでATPを必要としない。

だが、Splicingのサイクルの中ではATPを必要とする部分が何箇所かある。

サイクルの中ではRNAのbase paringが起きたりそれが離れたりする場所があり、
それらにはエネルギーを必要とするのは[premRNAのsplicing](premRNAのsplicing.md)で見た。

ここではそのほかにATPを使ってfidelityを高める、proofreadingの役割を果たすケースを見ていく。

Splice反応で、intronとexonの境界にある配列情報は非常に少なく、highly conservedなものはintronの5'側ではGUの２つだけで、
比較的conservedに範囲を広げても周辺の4〜5塩基程度だった。
3'側のsplice siteも似たようなレベルで、さらにbranch siteも生物種によるがそれほど複雑な決まりは無い。

だからspliceosomeがpre mRNA内のいろいろな場所をsplice siteと誤解しうる。
そこでspliceのサイクルでは一つのsplice siteに幾つもの物質が反応して繰り返しチェックしたり、
ATPを用いてサイクルが一方向になるようになっている。

## Proofreadingの具体例、Prp5とPrp16

Proofreadingの具体例として、Prp5とPrp16というタンパク質の役割を見ていく。

### Prp5とU2のbranch siteへのリクルート

Prp5はA complexの形成の所でU2がやってくるのを助けるタンパク質。A complexについては[22ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=21)あたりや[premRNAのsplicing](premRNAのsplicing.md)を参照。

Prp5はU2とともにやってきて、U2がbranch siteとどのくらいよく相互作用しているかをチェックする。
よく相互作用していたら真実のbranch site、いまいちな相互作用だったら誤解したニセのbranch siteと思われる。

- よく相互作用しているようだったら、さらにU2とRNAの結合を強めて、さらにRNAのconformational changeを促して結合を強固にする。
    - この過程でPrp5はATPを加水分解してそのエネルギーを使ってconformational changeなどを起こす
- いまいちな相互作用だったら何もしない。放っておくとU2がbranch siteから離れると思われる。

このようにbranch siteかどうかのチェックはU2だけではなく、Prp5でも行われて、このように複数回チェックされる。

### Prp16とC2 Complexの形成

Prp16は、ラリアットが形成されている所（C1 complex）にやってきて、exon1とexon2が相互作用しやすいようにさらなるconfromational changeを促す。
このconformational changeの過程でPrp16はATPを消費する。
ここは前掲の以下の図を見ながらの方がわかりやすい。

[23ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=22)

Prp16は実際にexon1のcleavageが起きているかどうかを判断し、cleavageが起きているときだけ上記のconformational changeを起こす。
exon1がcleaveされていないときは、何もしない。

この状態のまま反応が進まないと別のタンパク質の助けを借りて結合しているspliceosome factorが剥がされて振り出しに戻る。