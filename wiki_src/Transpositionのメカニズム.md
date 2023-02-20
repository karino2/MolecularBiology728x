- progenitor 祖先
- deleterious 有害な

## Genetic Recombination

DNAは一般には様々な機構により保護されて不変に保たれる。

だがそのDNAを分裂させて並び替えたりしなくてはいけない場合というのがいくつかある。
それらのプロセスを一般にGenetic Recombinationと呼ぶ。
以下ではGenetic Recombinationのいくつかの種類を見ていく。

大きく３つの種類のRecombinationがある。

- Homologous Recombination
- Conservative Site-Specific Recombination
- DNA transposition

このUnitでは三番目のDNA transpositionを主に扱う。

これら３つは、DNAを壊して再結合したり、DNAの異なる場所間の結合を変更したり染色体内のgeneの順番を変えたりする、
という共通の作業があると同時に、いくつかの重要な違いもある。

### Homologous Recombinationの復習

Homologous RecombinationはPart 1の[[RecombinationalRepair]]で詳しく扱ったが、これ少し角度を変えてもう一度見直したい。

Homologousとはほとんど同じ配列、という意味。いくつか少し異なる部分はありそれが異なるallelesとなる訳だが、
ほとんどは同じものと考えられるペア。

Homologous Recombinationは、[[RecombinationalRepair]]ではdsDNAの損傷の修復機構として見たが、
その他にも減数分裂（meiosis）でも行われる。

Homologous RecombinationではDouble Holiday Junctionの解決というのがあって、これにはpatch（ABとabは保たれる）とcross over（aB, Abの組み合わせになる）の２つがあったが、
減数分裂の遺伝という観点ではこの２つは大きな違いとなる。（cross overの方がgeneのreassortmentが良く起こると表現されていた、reassortment of genesで遺伝子の混ぜ合わせ、とか）

[[細胞分裂の復習]]も参照のこと。

減数分裂（Meiosis）では、まず通常の細胞分裂と同様にDNAの複製が行われて、
そのあとInterphaseでHomologous Recombinationが起き、そのあとMetaphaseとAnaphase（合わせてMeiosis I）が起きて、Recombinationが起きたsister chromosomesが分離される。

次にMeiosis IIでさらにHomologousな染色体が分離されて、DNA ContentがNとなる。

## Transposable Element

Transposable ElementはDNAの要素で、Homologous Recombinationとは全然別のメカニズムで移動するもの。

geneを壊したり、gene expressionを変更したりする。

細胞にとってはDNA損傷とみなされて、それらに対する反応を引き起こす。

遺伝学の実験のツールとしてとても良く使われる。変異を作ったり、変異の位置のmappingを行うのに使われている。

また、DNA transpositionのpathwayはレトロウィルスのpathwayと本質的には同じものとなっている。

また、immune systemが多様性を獲得した仕組みであるVDJ recombinationと呼ばれるものは、
transpositionと似た仕組みなのでtranspositionが元になって作られた仕組みと考えられている。

抗生物質に耐性のあるバクテリアは、プラスミドのTransposable Elementが他のバクテリアに移動する事で起こる。

また、X染色体のgeneがtranspositionで壊れると、病気を引き起こす場合がある。
これは1つしかX染色体を持たない男性に良く見られる遺伝病で、いわゆるX-linked diseaseに見られる。

- blood clotting factorsのVIIIとIXをダメにするtranspositionによりhemophilias（血友病）が起こる
- large dystrophin locusもtranspositionが起こってmuscular dystrophiesやcardiomyopathiesを引き起こす

## Transpositionの研究の歴史

Barbara McClintockがとうもろこしの色の遺伝の研究で見つけた。

人間のゲノムでは50%以上がtransposon-likeなrepeatsとなっていて、coding regionはちょっとしか無い。


## Transpositionが引き起こす事

- geneやregulationの領域に挿入されて壊す
- dsブレイク（DSB）を引き起こすー＞DNA damage responseが開始される（genomeを不安定にする事も）
- horizontal gene transferが起こる（抗生物質への耐性が複数の生物に移動する）
- 遺伝学の実験ツール
- 進化

## Transposable Elementの３つの種類

1. classical DNA elements
2. retrovirus-like
3. non-viral

あとでは以下のように言われているが同じものか？

1. classical DNA elements
2. LTR retrotransposons
3. non-LTR (polyA) retrotransposons

この三種類のrecombination reactionsはどれも、共通の生化学的なメカニズムで実現されている。
retrovirusesやLTRではretrotransposasesを含む反応。

### classical DNA elements

classical DNA elementsには二種類ある。

 - replicative（移動のたびに複製するもの）
 - non-replicative（移動するだけで複製しないもの）

とうもろこしの色のAc/Ds、ショウジョウバエのP elements、抗生物質耐性のTn familyなどがこのカテゴリ。

### LTR retrotransposons

LTRはlong terminal repeat。viral-likeな要素。

### non-LTR retrotransposons

polyA retrotransposon。higher eukaryotesで一番アクティブ。

## Transposonの構造

[28ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=27)

forHostというのは何かしらホストの生物に有益な何かのgeneで例えば抗生物質耐性などのgene。

transposonは移動している時の短い期間以外では、何かの生物のcellular DNAと結合していないと単独では長くは存在出来ない。

## Transpositionのメカニズムその1、カットアンドペースト

DNAの一部をカットして他の場所にペーストする。

inverted repeatsはtransposaseと呼ばれる特別なrecombinaseの結合場所となる。

[29ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=28)

transposase同士が固く結合したあとに起こる過程。

1. transposonの両端をcleave。両端は3'はOH、5'はpになるように
2. 3'-OHがターゲットDNAのホスホジエステル結合を攻撃。これは1-step transesterification reactionとして起こる（後述）。なお、両者のアタックの場所は数bp程度ずれた場所で起こる。
3. 残った5'側とターゲットの3'側との間の隙間をDNAポリメラーゼ（non-processiveなDNAポリメラーゼで良い）で伸長したあとにリガーゼでつなげる。伸長する部分の配列はdirect repeatの所の対となる配列になる。

1-step transesterification reactionの化学的な反応については以下の図も参照。

[30ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=29)

なお、最初にtransposonがあった所は両端をcleaveしたまま残っているので、これはDSBとして通常の修復機構が働く。

## Transposon Excision Mechanisms

transposonが最初にDNAから切り離されるメカニズムをいくつか見ていく。

1. transposaseとは別に5'側を切り離す酵素もencodeされているケース（後者は切り離された後についてはこない）
2. transposonの3'側のOHが対になる5'側のホスホジエステル結合を攻撃してtransesterificationする（3'と5'が結合して輪っかになる）＞そのあと結合してる部分をcleaveして二本鎖に戻す
3. transposonが切り離された時に残される側でループを作るケース（2と類似だがtransesterificationされるのが残された側という違いがある）

## Transpositionのメカニズムその2、Replicative

- [31ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=30)
- [32ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=31)

途中まではカットアンドペーストと似ているが、3'側しかcleaveされずに、そのままターゲットDNAとつなぎ直される。
Transposonのあった元のDNAもそのまま結果に組み込まれて、Transposonの2本鎖は離れた領域に行き、対となるDNA鎖はDNAポリメラーゼで合成される。

DNAの伸長はreplication forkとして片方をleading strand、片方をlagging strandとして合成される。

結果うまれるDNAの構造はcointegrateと呼ばれる。