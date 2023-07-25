前: [RNASplicing概要](RNASplicing%E6%A6%82%E8%A6%81)

## Self-Splicing Intronsのメカニズムの概要

Self splicing intronsはgroup I, IIともに生物の中ではそれほど多いsplicingでは無いが、
歴史的にこのメカニズムの研究を通してRNAの触媒的な機能や構造の理解を深めるという点で重要な役割を果たした。

RNAは触媒的な機能を果たすものがある。これはribozymesと呼ばれて、splicingに関わるものもある。
このsplicingに関わるものがribozymesの中でもっとも研究されているもの。

基本的には2価の金属イオン、マグネシウムやマンガンがあるなどの条件が満たされていると起こる反応。

どちらもIntronが触媒としての機能を果たしている。

ATPを必要としない、isoenergeticな反応。

### group I

[15ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=14)

group Iはguanosineかguanosine nucleotide（つまりグアニンのヌクレオチドか、G-OHと表記）がintronの特定のbinding pocketに入ってくることから始まる。

1. G-OHがintronのbinding pocketに入る
2. G-OHのOH基がexon1とintronの間のホスホジエステル結合をアタック
3. フリーなexon1が分離し、intronの末端にはGがつく。exon1の3'末端にはOH基がある状態になる。
4. exon1のOH基がexon2とintronの間のホスホジエステル結合をアタック（ワンステップ transesterification mechanismを使うとか）

transesterificationは一つの結合が壊されると新しい結合が生まれるような、そういう反応か。
エネルギー的にはほとんど同じなので外部のエネルギー源を消費しない（ATPなど）。

### group II

[16ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=15)

group IIのメカニズムは本質的にはsplicesomeを使ったものと同様。

1. intronの内部にあるアデノシンが、特殊な二次構造によって外に膨れ出る（bulge out）
2. アデノシンの2' OHがexon1とintronの間のホスホジエステル結合をアタック
3. イントロンは投げ縄のような構造（lariat）を形成し、exon1は3' OHを持つフリーの状態になる
    - 投げ縄を構成するのは2'-5' ホスホジエステル結合
4. フリーのexon1の3' OHがexon2とintronの間のホスホジエステル結合をアタックし、grou Iと同様directにtransesterificationする

## Self-Splicing Intronsの構造の詳細

[17ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=16)

図では円がうまく書けなかったのでssRNAが大きく見えるが、dsRNAの領域がとても多い。

右上のループはORFでself splicingを助けるsmall proteinのcoding regionとなっている。self splicingの反応自体には必要では無い。
このsmall proteinはintronが適切な二次構造、三次構造を形成するのを助けるらしい。

EBS1(Exon Binding Site1)とEBS2がexon1と結合する事で形成される。（EBSは図のループ）

ドメインVとドメインVIは反応に必要で、ドメインVIにはexon1をアタックするアデニンが存在している。

三次構造でこのアデニンとexon1の端が近接するようになっていて、反応しやすくなっている。

## RNAの2次構造を調べるassayその1、RNase Digestion

ribozymeの機能を理解するためには、RNAの形成する2次構造、3次構造を理解する必要がある。
以下ではそれらを調べるためのassayを見ていく。

RNAの二次構造を調べるためのassayとして、RNase digestionがある。

まず、対象のRNAの末端をラベルづけする。
そしていろいろな種類のRNaseを使ってこれを切断する。

| RNaseの種類 | カット対象 |
| ---- | ---- |
| V1 | dsRNA |
| A | ssRNAのCかUの3' |
| T1 | ssRNAのGの3' |

[18ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=17)

高温の時のV1は切断出来る場所が無いのでシマが出ないように書いてあったが、
一番上に一つシマが出るのでは？と思った。

## RNAの2次構造を調べるassayその2、DMS-Seq（とその亜種SHAPE-Seq）

RNAをメチル化するreagent、DMSを使う方法がある。

DMSはアデニンとシトシンのうち、ssRNAの部分だけをメチル化する。
そしてシーケンシングしてDMSシグナルがどこで見られるかをカウントする。

なお、コントロールとしてdenaturingしたRNAにもDMSしてみて、RNAのヘンテコな性質でメチル化されてないだけという事が無い事を確認する。

in-vivo, in-vitroの両方で出来るという利点がある。

in-vivoとin-vitroの結果が同じ場合もあるが違う場合もある。
違う場合、in-vitroの環境では正しくRNAがfoldされていないと思われるので、何かRNAのfoldに必要な要素があると推測される。

### 実験の手順

[19ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=18)

1. DMSを加えてメチル化する（RNA片一つにつき1〜2箇所くらいメチル化されるようにする）
2. RNAを分割して60〜70bpくらいの長さのものだけを集める
3. adapterをligateする（このアダプターが最初にプライマーとhybridizeする場所となる）
4. primerをhybridizeしてReverse Transcriptaseで逆転写（この逆転写はメチル化されているbaseがあるとそこで止まる）
5. cDNAのうち、ステップ2より短い適当なサイズ（25〜45bpの間とか）の長さのものだけを集める
6. これをテンプレートとして用いてseqして、メチル化されたと思われるbaseのreadoutsをカウントする

ステップ5は逆転写がメチル化で止まったものが集められると期待出来る。

### DMS-Seqの改善である、SHAPE-seq

SHAPE-SeqもDMS-Seqと似ているが、SHAPE reagentを使う所が違う。

SHAPE reagentはDMSと違って、ssRNAの全baseの2'-OHを修飾する。
だからbaseの種類によらずにssRNAをすべて修飾させられる。

2'-OHの修飾でもDMS-Seqと同様にReverse Transcriptaseがそこで止まるので、DMS-Seqと同様の手順でssRNAの場所を調べる事が出来る。

このreadoutsのカウントを比較する事で、修飾がある所と無い所だけじゃなくて、修飾が多い所と少ない所も見る事が出来て、
ssRNAではあるが3次構造などで守られている場所などを推測する事が出来る。

## RNAの2次構造を調べるassayその3、energy minimization algorithmとcovariationを組み合わせる

base pairが結合しているとエネルギーが小さい。
ループは小さすぎたり大きすぎたりするとエネルギーが大きく、中くらいのサイズが小さい。

これらの要素でエネルギー最小になる組み合わせをプログラムで探す事が出来る。

この結果を、covariationの結果と比較する。

covariationとは、種の違いによって同じような役割のRNAにどのような配列の違いがあるかを調べて、
dsRNAになっている事が重要ならbpが両方変異して変異後もペアリングするようになっているはず。
この２つ同時に変異するのをcovariationと呼ぶらしい。
種の違いによる変異を調べて、bpするように変異しているならその２つはbpする可能性が高い、と予想される。

これらの２つの推測を組み合わせた結果の予想を、試薬を用いた実際の実験結果と比較する事で、
どこが正しく予想出来てどこが予想出来ていないかを調べる事も出来る。
調べてみると、正しく予想されている所も多いが、この予想とは違う結果になっている場所もそれなりに確認されている。

## 次: pre mRNAのsplicing

[premRNAのsplicing](premRNA%E3%81%AEsplicing)