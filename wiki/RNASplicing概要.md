
## RNA Splicing とは

pre-mRNAsからintronを取り除いてmature mRNAを作り出す過程。核内で起こる反応らしい。

一つのgeneから複数の異なる種類のmature mRNAを作り出したり、gene expressionの制御に使われたりする。

## RNA Splicingの発見とR-Loop Mapping

adenovirusのRNAへの転写の研究でRNA Splicingは発見された。

アデノウィルスはDNAウィルスの一種で、転写の仕組み全体を乗っ取ってRNAを転写しまくる。
だから細胞から転写されたRNAを取り出すのは非常に簡単。
この取り出したRNAを使ってR loop mappingと呼ばれる実験を行った。

### R loop mappingの概要と結果

取り出したRNA(hexon coated proteinをエンコードしているmRNA、hexon mRNAと呼ぶ）とアデノウィルスのゲノムから作ったDNA片とをhybridizeして、
電子顕微鏡で観察する、という実験。

結果としては、hybridizeしない部分があり、しかも両端にsingle strandedなtailが見られる。
3'側はpoly-A tailだろうと予想されるが、5'側のtailはなんなのだろうか？

また、より大きなDNA片との領域で同じ実験をすると、何箇所かsingle strandedなループが形成される。
これはintronの領域と思われる。
exonがhybridizeする。

## RNA Splicingの種類

Splicingには幾つもの種類がある。幾つか重要なものを以下に見る。

- self-splicing
    - group I
    - group II
- splicesome-mediated
    - U2 splicesome ... 講義で詳しく扱う、gene expressionの主流となるsplicing
    - U12 splicesome .... 詳しく扱わないがU2を理解すると理解出来る部分も多い
- more specialized (mature tRNAsの形成など。上記とは別のメカニズムが使われる）

self splicing intronsのうち、group I とgroup IIは、この研究を通してRNAがどのようにsplicingという過程に参加するかを理解するようになったという点でも重要である。

## Self-Splicing Intronsのメカニズムの概要

Self splicing intronsはgroup I, IIともに生物の中ではそれほど多いsplicingでは無いが、
歴史的にこのメカニズムの研究を通してRNAの触媒的な機能や構造の理解を深めるという点で重要な役割を果たした。

RNAは触媒的な機能を果たすものがある。これはribozymesと呼ばれて、splicingに関わるものもある。
このsplicingに関わるものがribozymesの中でもっとも研究されているもの。

基本的には2価の金属イオン、マグネシウムやマンガンがあるなどの条件が満たされていると起こる反応。

どちらもIntronが触媒としての機能を果たしている。

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

