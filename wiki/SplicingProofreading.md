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

### ATPを使ってfidelityを高める仕組み

ATPの加水分解の過程を用いてどのようにfidelityを高めるのかを、化学反応式の観点から考えてみる。

[24ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=23)

図の反応式1から考えてみる。

これはEnzymeとSubstrateからProductが生成される反応。
最初のE+SがESになる反応はk1で進み、kの-1で戻り、affinityであるkd、つまり解離定数は kの-1/kの1 となる。

ESが形成されると、そのあとはE+Sに戻るかE+Pに進むかになる。
このケースではESからE+Sに分かれる反応は二通りありえて、kの-1かkの-3でのパスがあり、逆にE+SからESになるのもこの２つの経路がある。

次にこの反応を少し複雑にして、2のケースを考えてみよう。
ESからE'Sに移るk2の反応でエネルギーを消費するとする。

ATPを消費する反応の例は以下の３つをこれまで見てきた

1.  RNAのconformational change
2. RNA-RNA helicase反応でbase paringの水素結合を引き離す
3. splicing factorを引き離す（protein-protein complexから特定のproteinを引き離す）

そしてE'SからE'+Sに分かれる反応k4はエネルギー的により安定し、逆の反応があまり起こらないようなものを考えている。
もう一度E'Sを形成するには、k4の逆反応ではなくE+Sからやり直さなくてはいけない。

この式をPrp16の例に当てはめると式3のようになる。ここでLIはlariat intermediate、LI*はlariat intermediateがconformational rearrangementされたもの。

k2からk3に進むのが、２つのexonがつながる正常なケース。

一方でPrp16はまだexon1が切り離されていないsplicing intermediateに結合する場合もある（C1 complexの一つ前の段階と結合）。
この場合はconformational changeが起きずにATPの加水分解が行われるが、これがk3'のケース。
LIのままADPになっている事に着目。

つまり、この反応は以下の２つのパスがある。

- k3 ... ２つのexonが近接するように配置され、spliceが次の段階に進む事ができる
- k3' ... conformationはそのままで２つのexonは離れたまま（やがて別のタンパク質の助けを借りてsplicing componentsは離されて最初からやり直す）

k3はATPを消費するので逆に戻る事は無い。これはk2とk-2を行ったり来たりして反応が次に進まないという事を防ぐ。


