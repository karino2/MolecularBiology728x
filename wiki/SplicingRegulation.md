前: [AlternativeSplicing](AlternativeSplicing.md)

## ExonとIntronのゲノム的なスケールの話

Exonは小さく、Intronはとても大きい事が多い。
だが通常のSplicingの図解ではそのスケールが表されていないので、難しさが分かりにくい所がある。

そこでここではゲノム的な視点でそれぞれのスケールなどを見ていこう。

| 項目 | 人間 | D.melanogaster（ハエ） |
| ---- | ---- | ---- |
| mean exon length | 320nt | 494nt |
| median exon length | 145nt | 272nt |
| mean intron length | 7563nt | 2068nt |
| median intron length | 1964nt | 642nt |

exonはタンパク質の1ドメインや、時には異なるspecifityの為の14AAという場合もあるように、とても短くなりうる。
平均では50〜250 ntくらいの長さ。せいぜい500nt程度に収まる。

intronは数千とかのオーダーでさらにもっと長い事もある。

この大量のintronの中からexonを探す、というのは、なかなか難しいタスクといえる。

## Splice Sitesの決定

[premRNAのsplicing](premRNAのsplicing.md)などでも見たメカニズムから考えると、spliceすることになるintronの両端にタンパク質がくっついてどこをSpliceするかが決まりそうに見えるが、
実際は少なくとも哺乳類に関しては、最初にexonがタンパク質に認識されている証拠がある。

つまり、A complexの形成で最初に結合するU1とU2は、Spliceする相手同士では無く、exonの両脇同士の二人となる。

[27ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=26)

だからSpliceの反応の進み方としては、

1. exonを見つけてその両脇にU1とU2がくっつく
2. intronを挟んだU1とU2同士をペアとして認識していく

ではこのexonをどうやって見つけていくのだろうか？以下に見ていく。

### RNAポリメラーゼによる補助

RNAポリメラーゼIIは[EukaryoticTranscriptionのInitiationとElongation](EukaryoticTranscriptionのInitiationとElongation.md)や[EukaryoticTranscriptionTermination](EukaryoticTranscriptionTermination.md)で見たように、C-terminal domainにリン酸化されてる尻尾を持つ。
このC-terminal側の尻尾のリン酸化は、複数のリン酸化される場所があって、
どこがリン酸化されているかで役割が変わる。

[EukaryoticTranscriptionTermination](EukaryoticTranscriptionTermination.md)でも見たように、大きくSer5-PiとSer2-Piがある。

Ser5-Piが多い時は合成されるRNAの5'側をcappingする酵素をリクルートし、
Ser5-Piが減ってSer2-Piが（相対的に）増えるとsplicingと3'側をpolyadenylationする機構を助ける。

このSer2-Piの状態のC-terminal tailは、Splicing componentsのローディングを助ける。
つまりRNA Pol IIはpre-mRNAを合成しつつ、splicingに関わるタンパク質を必要な場所にくっつけていく。

## SplicingのEnhancersとSuppressors

Splicingの補助を考える上では、Enhancersにどのようなものがあるのかを知っておく必要がある。
そこでEnhancersと、ついでにSuppressorsも見ておこう。

２つのタンパク質ファミリーがある。

- SR proteins（こちらがEnhancers）
- hnRNPs（こちらがSuppressors）

SRやhnRNPはintronやexonのsmall redundant sequencesに結合する。

exonに結合してsplicing反応を助けるタンパク質をESE（exonic splicing enhancer）、intronに結合してsplicing反応を助けるタンパク質をISE(intronic splicing enhancer）と呼ぶ。
SRはESEやISEの一種。

同様にinhibitの方をESS（exonic splicing silencer）、ISS(intronic splicing silencer）と呼ぶ。こちらはhnRNPなど。

### SR proteinsがsplicingを促進するメカニズム

SRがどのようにsplicingを促進するかを見てみる。
SRがexonに結合すると、3'側にU1を、5'側にU2 AFやU2を、結合するのを促進する。

結合を促進するメカニズムの一つに、co-activator modelというのが考えられている。
このケースでは、SRとSRに関連するタンパク質が結合してSR-related protein complexを形成し、
これがRNAやsplicing factorsと相互作用する、というモデル。

また別のケースではもっと単純にSRがexonの3'側のU1の結合する場所のそばに結合して、U1とも相互作用して正しいsplicing siteに結合するのを助ける、
という場合もある。

### hnRNPsがsplicingを抑制するメカニズム

hnRNPがsplicingを抑制するメカニズムを幾つか見ていこう。

一番単純なのは単にsplicing factorsが結合する所（またはその付近）に先に結合して、物理的に（stericに）結合を邪魔する、というもの。

もっと長い範囲に影響するメカニズムとしては、RNAの２つの離れた場所に結合したhnRNP同士が結合して、輪っかを形成し、
その間でsplicingが起こるのを妨げる、というものもある。

また、cooperativeなhnRNPが、一つがくっつくと他のがくっつきやすくなって、他のがくっつきやすくなるとさらに他のが…となってhnRNPで覆われてsplicingが行われなくなる、というメカニズムもある。

## クロマチンの状態がexonの識別に与える影響

テンプレートのクロマチンの状態も、pre-mRNAのexonの識別に影響を与える。

exon（のテンプレート）の付近でChIP-seqして調べると、exonのあたりではpost translationallyに修正されたH3K27me2と呼ばれるヒストンが多く見られた。
exonの中心からの距離と発現数をプロットするとexonの中心をピークに山になっているのが見て取れる。

alternative splicingでexonが飛ばされる率が高い細胞と低い細胞でヒストンを調べると、特定の種類のヒストンが多いと飛ばされず、低いと飛ばされる、という事が確かめられる。

メカニズムは幾つか考えられる。

１つ目、ある種のヒストンはRNA Pol IIの動きを遅くする。
遅くなると、splicing機構が弱めのsplicing siteでも働き始める準備が整う確率が上がる。
こうして、普段飛ばされがちなexonを含めるような効果を発揮出来る。

２つ目、ある種のヒストンが多い領域は、splicingのenhancersやsuppressorsを集める働きをして、splicing機構を活性化させたり抑制したりする。