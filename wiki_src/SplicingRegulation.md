前: [[AlternativeSplicing]]

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

[[premRNAのsplicing]]などでも見たメカニズムから考えると、spliceすることになるintronの両端にタンパク質がくっついてどこをSpliceするかが決まりそうに見えるが、
実際は少なくとも哺乳類に関しては、最初にexonがタンパク質に認識されている証拠がある。

つまり、A complexの形成で最初に結合するU1とU2は、Spliceする相手同士では無く、exonの両脇同士の二人となる。

[27ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=26)

だからSpliceの反応の進み方としては、

1. exonを見つけてその両脇にU1とU2がくっつく
2. intronを挟んだU1とU2同士をペアとして認識していく

ではこのexonをどうやって見つけていくのだろうか？以下に見ていく。

### RNAポリメラーゼによる補助

RNAポリメラーゼIIは[[EukaryoticTranscriptionのInitiationとElongation]]や[[EukaryoticTranscriptionTermination]]で見たように、C-terminal domainにリン酸化されてる尻尾を持つ。
このC-terminal側の尻尾のリン酸化は、複数のリン酸化される場所があって、
どこがリン酸化されているかで役割が変わる。

[[EukaryoticTranscriptionTermination]]でも見たように、大きくSer5-PiとSer2-Piがある。

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

SRやhnRNPはintronやexonのsmall redundant sequencesに結合する。（小さい繰り返し配列）

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
exonの中心からの距離と発現数をプロットするとexonの中心をピークに山になっているのが見て取れる。＞[[Assays]]

alternative splicingでexonが飛ばされる率が高い細胞と低い細胞でヒストンを調べると、特定の種類のヒストンが多いと飛ばされず、低いと飛ばされる、という事が確かめられる。

メカニズムは幾つか考えられる。

１つ目、ある種のヒストンはRNA Pol IIの動きを遅くする。
遅くなると、splicing機構が弱めのsplicing siteでも働き始める準備が整う確率が上がる。
こうして、普段飛ばされがちなexonを含めるような効果を発揮出来る。

２つ目、ある種のヒストンが多い領域は、splicingのenhancersやsuppressorsを集める働きをして、splicing機構を活性化させたり抑制したりする。

## SplicingのRegulationを調べるAssayたち

[[Assays]]

### EMSA(electrophoretic mobility shift assay)

RNAとタンパク質が結合しているかを調べるassay。

ラベル付けしたRNAとタンパク質を入れて、電気泳動する。タンパク質がくっついていると動きが遅くなる。
これで特定の変異の与える影響などを調べたり、タンパク質の濃度を変えて行って結果を見たりなど、いろいろな亜種がある。

タンパク質の濃度を変えて行って結果を見ていくと、何nanomolarで50%くらいくっつくかを判定する事で、
割と良いbinding affinityの推計が出来る。

### bead-mediated RNA affinity chromatography

RNAと結合しているタンパク質を調べるassay

1. biotinを付加したRNAを用意する（bintinylated）
2. 目的のタンパク質を含んだcell extractを入れて、タンパク質を結合させる
3. streptavidin beadsを使って目的のRNA-タンパク質複合体を取り出す
4. 適当なタンパク質を特定する手法で結合しているタンパク質を調べる

biotin-streptavidin beadsの結合はとても強くて15 femtomolar。

タンパク質を特定する手法としては、

- western blot(確認したいタンパク質のantibodyを持っているなら）
- mass spectrometry (十分な量のタンパク質があると分かっているなら）

### SELEX

結合する配列の方を調べるassayとしてSELEXをRNAに使えるように修正したものがある。
SELEXは[[EukaryoticTranscriptionのDNABindingRegulators]]で出てきたassay。[[Assays]]参照。

1. プロモーターとランダム配列の短めのDNA（オリゴヌクレオチド）を作る
2. in vitroで転写してRNAを作る
3. 目的のタンパク質を結合させて、結合してないRNAを除去
4. reverse transcribeしてPCRで増やす
5. 2〜4を何度か回す

こうして目的のタンパク質が好む配列を見つけたら、これを着目しているgeneの中から探す。

### iCLIP-seq

目的のタンパク質がRNAのどこに結合するかを調べるassay。

1. RNAと目的のタンパク質を結合させる
2. 紫外線を照射（UV irradiate）して、RNAとタンパク質をcrosslinkする
3. RNaseで部分的にRNAを溶かして小さなフラグメントにする
4. RNA-protein complexをimmunoprecipitateして取り出す
5. nonspecificなproteaseを使ってタンパク質のうちcrosslinkしているペプチドだけ残して他を削る
6. 3'側にpriming siteとなる配列をligate
7. reverse transcriptaseでcDNAを作る（reverse transcriptaseはcrosslinkしている領域を乗り越える事は出来ないのでそこで止まる）
8. High-throughput sequencingなどで配列を調べて、どこにペプチドのcrosslinkがあるか（どこにタンパク質が結合しているか）を調べる

## Splicing Regulationの具体例

Splicing Regulationが実際にどのように使われるかの例を２つ見ていく。

- 発芽イーストの飢餓時の減数分裂
- ショウジョウバエの性分化

### 発芽イーストの飢餓時の減数分裂

イースト菌の胞子は過酷なコンディションでも残りやすいので、
飢餓が訪れるとイースト菌は減数分裂を行って胞子に未来を託す。

geneを大文字で、生成するタンパク質を頭文字だけ大文字で表す、UME6とUme6など。

飢餓などのストレスにより、UME6の転写がactivateされてUme6が生成される。
Ume6はMER1のactivateを助け、さらにMER2, MER3, SPO22, SPO70などの減数分裂に関わるgeneの発現も促進する。

Mer1はMER2, MER3, SPO22, SPO70などの、U1の弱い5' splice siteとの結合を助け、これがこれらのRNAのalternative spliceを引き起こす。
このalternative spliceの結果、Meiosisに必要なタンパク質が生成されるようになる。

通常のU1 splice siteとU1の関係は以下。

| 名前 | 配列 |
| ---- | ---- |
| U1 | 3'-CAUUCA-5' |
| 通常のconsensus 5' splice site | 5'-GU(GA)AGU-3' |
| MER2の弱い5' splice site | 5'-GUUCGU-3' |

通常は6AA中、5〜6個ペアリングするが、MER2の場合は4つしかペアリングしない。

これがMer1とU1 snRNPが結合してこのMer1の助けがあると、RNAとの結合が強化される。

### ショウジョウバエの性決定の例

発生時期の性の違いのほとんどはalternative splicing違いで決められている。

Sex lethal (略称Sxl）と呼ばれるタンパク質がある。

さらに Sxlー＞Traー＞Dsx(FかM） というpathwayがある。

TraはTransformer proteinとも呼ばれるとか。
DsxのFはfemale、DsxのMはmale。（上付き添字で書かれているが、ノートはこの書き方で）

このpathwayでそれぞれがenhancerになったりsuppressorになったりするのを見ていこう。

[28ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=27)

X染色体の数の違いによりSxlの量がメスの方が多く、このSxlがSxl pre-mRNAの3' splice siteをsuppressするので、
より多くのintronがスキップされてオスと異なるmature mRNAが作られる。
これがさらにSxlを生成するので、ますますSxlが多くなる。（Suppressor）

オスはSxlがあまり無いため、このSxlのpre-mRNAのintronの一部がスキップされず含まれるようになり、その結果機能するタンパク質が合成されなくなる。

TRAのmRNAのintronにstop codonが含まれる部分があり、このintronの3' splice siteをSxlはブロックする。
結果として、Sxlがあるとこのintronもspliceで消え去るのでTraが生成されるようになる。
一方Sxlが不足しているとブロックされないのでstop codonが含まれるようになり、
機能するタンパク質は合成されなくなる。（Suppressor）

TraはTra2と協力してDSXのweak 3' splice siteのU2AFとの結合を助け、spliceされるようにして、最後のドメインがmaleとfemaleで違う部分になるよにする。（Enhancer）

最後のDsxの生成では、C-terminal domainだけが異なる事になる。female は短く、maleの方が長い。
このDsxの違いがmaleやfemaleの形成に必要な様々なgene発現に影響する。

### チャレンジ問題の単語リスト

- degenerate 劣化、退化
- spinal muscular atrophy（SMA） 脊髄性筋萎縮症
- autosomal 常染色体の