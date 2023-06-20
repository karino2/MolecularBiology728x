前: [SelfSplicingIntrons](SelfSplicingIntrons.md)

## pre-mRNA splicingのメカニズム

ここまではself splicing intronsのメカニズムを見てきたが、ここからはより一般的なsplicing、pre-mRNA splicingを見ていく。

splicing自体のステップはgroup IIのself splicingと同様で、以下のステップとなる。

1. Aの2' OHが5'側のexon1の3'側ホスホジエステル結合をアタック
2. exon1が切断され、ラリアット（投げ縄）が形成される
3. exon1の3'-OHがexon2の5'側ホスホジエステル結合をアタック
4. exon1-exon2が形成される

両者を比較すると以下のようになる。

|  | group II self-splicing | pre-mRNA splicing |
| ---- | ---- | ---- |
| 何に触媒されるか？ | intron RNA | RNAsとタンパク質 |
| intron structure | long, highly structured | less information, less structure |
| splicing reaction | 一つのintronで一つのsplicingしか起きない | たくさんのexonを含むpre-mRNAがsplicingされてmature mRNAになる |

### pre-mRNAの配列の特徴

配列としては以下のような特徴が見られる。
なお、Yはピリミジン（CかT）、Nは4つのうちのどれか（A, G, C, U）。

[20ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=19)

exonの3'側はほぼ必ずG、intronの5'側はほぼGU。intronの3'側はGで、exonの5'側はG。
この辺はhighly conservative。

図中でY11と書かれている所がpolypryimidine trackと呼ばれる所で、intronnの3'のsplice siteのそばにpyrimidinesが連続で並ぶ（11個とか）領域がある。

## in vitroでのpre-mRNAのsplicing assay

pre-mRNAのsplicingを調べる手順を考える。
まず、pre-mRNAと、splicingに必要な要素を入れて反応を見る訳だが、
splicingに必要なものの中にもRNAは入っているので、これと対象となるpre-mRNAを区別する為に、ラベル付けをする必要がある。

1. ラベルづけされたpre-mRNAを合成（アルファ-32P UTPを使うのが一般的）
2. nuclear extractに含まれるsplicing componentを加える（これは実験の目的によっては他の生物のextractの場合もある）
3. denaturing gelで生成物をより分ける

ステップ1ではbody label（端だけじゃなくてRNAの全体にまばらにラベルづけする、ラリアットとかも見れるように）。

splicingは核で起こるので、splicing componentはnuclear extractに含まれる。

ニワトリとか人間とかワニとかは、だいたい違うもの同士でsplicingを起こせる。イースト菌と人間とかでは起こせない。
人間のnuclear extractとしてはHeLa cellが使われる。

アルファ-32P UTPについては以下。

[20ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=19)

### 結果の解釈

結果は図の下の方のようになる。

[20ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=19)

時間1で一番下に見えるのは5'側のexonがfree formで分離しているものと思われる。一番小さいので一番はやく動く。
時間1の一番上はラリアットと3'側のexonがついたもの。
ラリアット（投げ縄）の輪っかがあるとgelの移動が遅くなる。
これに3'側のexonもついているのが一番動きが遅いので一番上に来る。

時間2では一番下が薄くなっているのは、free exonが２つ目のexonと繋がって消費されるから。
その一つ上のシマはexonが２つつながったRNAと思われる。

上から二番目はラリアットから２つ目のexonが分離されて分子量が減ったからと考えられる。

### conservedな配列を変えると何が起こるか？

pre-mRNAのintronやexonの端のconservedな配列を変更してこのassayを行って結果を見てみる。

**intronの3'側のGをUに変えると何が起こるか？**

splicingの最初のステップではこちらがわは影響が無いので、時間1の結果は変わらないと予想される。
一方、ステップ2のfree exonが3'側のexonのsplicing siteをアタックする反応は、このシーケンスが必要と予想されるので起こらない。

つまり時間2のバンドは現れずに時間1のバンドで止まると予想される。

### Trans Componentsを調べるための亜種

初めてsplicesomeが発見された実験では、生成物のRNA単体を調べたのでは無く、生成RNAとタンパク質の複合体についての同種の実験からだった。

手順を見ておくと以下のようになる。

1. body labelしたRNAを合成
2. nuclear extractを追加
3. splicing complexをnative gelで分離

1と2は先に述べたin vitroでのpre mRNA splicingのassayと同様。ステップ3だけ違う。

native gelではRNAとタンパク質が結合した状態でgelを移動していく。（mobility shift assayと類似）

この結果を見ると、時間とともにバンドが何種類か形成されたり消えていったりしていくのが分かる。
それを観測された順番にA-complex, B-complex, C-complexなどと呼んで研究している。

ちなみにこの結合しているタンパク質を動画ではtransacting factorsと呼んでいるが、Trans-acting factorの事だろうか。

そしてより詳しくTrans acting factorsを調べたい場合は、上の実験をさらに変更して以下のようにする場合もある。

1. body labelしたRNAを合成
2. nuclear extractを追加
3. time pointごとに取得した生成物をultracentrifugeとgradient（glycerolやsucroseの濃度gradient）で分離
4. 各fractionをdenaturing gelで分離

このgradientでultracentrifugeするのはもっともやさしくサイズごとに分離する方法である。
しかも大きなcomplexに対しても使える方法なので、この場合には適している。

## Spliceosome Cycle

Spliceosomeによって起こるsplicingの反応のステップを以下で見ていくが、まずは構成要素を見る事から始める。

### Spliceosomeの構成要素の種類

Splicesomeを構成する、RNAと結合するTrans acting factorsには、大きく以下の2つの種類がある。

- snRNPs ... 比較的長いRNA(100ntとか）にタンパク質が結合したもの
- free proteins

Splicingの反応はsnRNPsが主体となっている。
snRNPsはRNAを含んでいて、対象のRNAな事からも予想されるように、base paringで結合する部分がある。

### E complex

SpliceosomeのCycleの最初はE complexの形成から始まる。EはearlyのE。

[21ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=20)

以下の3つのsnRNPsがターゲットとなるRNAと結合する。

- U1 ... 5'側のsplice siteと結合
- BBP ...  Branch point Binding Proteinの略。branch pointのAの所に結合。
- U2AF ... U2 association factor。２つのsubunitを持ち、branch pointから3'のsplicing siteにまたがって結合する。

U1とRNAの結合を見ると、conservativeなregionの配列とbase paringしている事が分かる。

Ψ（Psi）はpseudouridine residueで、アデニンとペアリングしやすいとか。
pseudouridineはpost transcriptional modificationで修飾されて出てくる。
tRNAなどそのほかのRNAでも良く見られるpost transcriptional modification＞[Translationの基本と登場人物](Translationの基本と登場人物.md)

U1とpre-mRNAのcomplementarityがsplicingにとって必要かどうかなどは幾つかの実験で試す事が出来る

- 対象となるRNA側の配列を変異させるmutagenを使ってcomplementarityがなくなるとspliceしなくなるか？
   - U1側の配列を変更するmutagenを使ってcomplementarityがなくなるとspliceしなくなるか？
- extractから抗体を使ってU1を取り除いてもsplicing反応が起こるか？
- 同じ抗体を使って、単にU1とターゲットのRNAが本当にくっついているかどうかをnative gelを使ったwestern blotで比較する

E complex形成の時点ではまだ対象となるRNAには何も起きていない。

