- wreak 引き起こす
- havoc 大破壊、大損害
- phage (バクテリオ）ファージ。バクテリアを宿主とするウィルスの事。
- resect 切除する
- awry 不首尾に、斜めに、間違って
- assortment 仕分け、分類、詰め合わせ、取り合わせたもの

## Homologous Recombination概要

Homologous Recombination自体はPart 1の[RecombinationalRepair](RecombinationalRepair.md)でもやった。内容的にかぶる所もあるので向こうも参照の事。

Homologous Recombinationには大きく２つの役割がある

- DSBsの修復
- ゲノムの多様化（Meiosisを通して）

## Homologous Recombination復習

Homologous Recombinationのステップを簡単に見直しておく。

[34ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=33)

1. DSBの5'末端が切除される
2. Recombinaseによりstrand invasionが起こる
    - invadeしたstrandが反対のstrandを押し出し、D-loop (Displacement loop）と呼ばれるループが形成される。そしてHolliday Junctionが出来る
   - invadeしたstrandの端でPTJ(Primer Template Junction）が形成される
3. PTJから合成が行われて、D-loopが大きくなる。伸長しているのと反対側のstrandに2nd invasion siteが形成される
4. extendが十分に行われると上のstrandと結合し、もうひとつのHolliday Junctionが形成される。また、2nd invasion siteもextendされてligateされる。
5. Double Holliday Junction が二種類の方法のどちらかで解決される
     - splice/crossover product ... Aとcが、aとCがつながるケース。
     - non-crossover/patch product ... AとCが、aとcがつながるケース。
     - Aの鎖とaの鎖がanealする領域ではミスマッチリペアの仕組みが起動してどちらかに揃えられる。その結果、gene conversionが起こる。

Gene Conversionって何？と思って以下を見つける。

[General Recombination - Molecular Biology of the Cell - NCBI Bookshelf](https://www.ncbi.nlm.nih.gov/books/NBK26898/)

つまり、両方のgeneをanealした状態からどちらか一方に揃えられる結果、本来なら半々に分かれるはずのgeneが、偏りが出る（父方からのが多くなるとか母方からのが多くなるとか）事をgene conversionと呼ぶらしい。

## EukaryotesのHomologous Recombination

バクテリアはプログラムされたDSBは無いけれど、Eukaryotesにはある。

RAGタンパク質はimmune locusをカットしてVDJ recombinationを引き起こす。これはプログラムされたdouble stranded break。
なお、このDSBsはHomologous Recombinationでは無くNHEJで修復されて、抗体の多様性を産む。

Spo11というタンパク質がある。

### バクテリアとEukaryotesの比較

バクテリアについては[RecombinationalRepair](RecombinationalRepair.md)で見た。ここでは対応するタンパク質のEukaryotesのものを見てみよう。

|  | E. coli | eukaryote |
| ---- | ---- | ---- |
| DSB formation | DNA dmaange | DNA damageまたはSpo11 |
| DSB recognitionとresection | RecBCD | MRX/Sae2/Exo1 またはSgs1とDna2 |
| strand invasion/ homology search | RecA | Rad51（それとmeiosisの時はDmc1） |
| branch migration | RecA, RuvAB | Rad51(それとmeiosisの時はDmc1） |
| Holliday junction resolution | RuvC | ResAか Mus81/Eme1 |

branch migrationではバクテリアはRecAとRuvABのどちらも行う事が出来るが、RecAは遅く、RuvABの方が遥かに効率的に行えるのだった。

一方でEukaryoteではRad51しか無い。このRecombinaseがbranch migrationも行うので、E. coliよりもゆっくり進む。

EukaryotesのHolliday junction resolutionでは、どちらのタンパク質が実際に細胞内で使われているかはまだわかっていない。
どちらもHolliday junctionをカットする事はわかっている。

## 細胞分裂の復習

[細胞分裂の復習](細胞分裂の復習.md)

## Meiotic Recombination

Eukaryoticなrecombinationの一つ、Meiotic Recombinationを見ていく。

### Meiosisにおけるsegregation

meiosisはreplication, segregation I, segregation IIと進む。Iでhomologsが分離され、IIでsister chromatidsが分離される。

Meiosisの時にはまず染色体が複製されてsister chromatidsが出来る。そしてhomologsが対になる。
sister chromatids同士はcohesinが結びつける。
homologs同士はrecombinationで結びつく。
recombinationで反対の足がcohesinに入る。

segregation Iでcohesinの腕の部分がなくなり、真ん中だけ残される。腕の部分が無くなる事でrecombinationしているhomologs同士を結びつけているのが無くなるのか。

染色体一つにつき、少なくとも１つのDSBが必要になる。
recombinationが最低でも一つは無いと、homologsの分離がうまく行かないから。

イースト菌では各ペアの染色体ごとに必ず一つのcrossoverがあり、一つしか無い。
どうやって一つしか無い事を保証しているのかは良くわかっていない。

哺乳類は2〜3個のcrossoverがある。

### メカニズム

recombinationの始まりは、Spo11によるDSBの形成。Spo11はdimerのタンパク質。
これは損傷とは別の、programされたDSBと言える。

[36ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=35)

Spo11はType II topoisomeraseと同じような事をする。dsを、1〜2bpくらいずれた所に切れ目を入れる。
Spo11のtyrosineと5'末端が共有結合を形成する。
こうする事で、DSBの出来たDNAをバラバラにせずに同じ場所に留める。

このまま、recombinationするか、または再結合する。再結合する場合はtopoisomeraseと同じような振る舞いとなる。
（つまりこれは可逆反応）

だが、DSB repair machineryが起動すると不可逆となる。

Sae2とMRX complexが動員されて、これが5'末端に向けてDSBの付近をcleaveしていく。
これは3'から5'へのexonuclease。
これがSpo11が押さえている5'末端へcleaveをしてく。

次にExo1（またはSgs1とDna2）が5'から3'へとcleaveしてく。

これで、3'末端と、resectされた5'末端を持つDNA片が出来た。
ここからは、RecombinaseがRad51である事以外はバクテリアと似た振る舞いをする。
Meiosisの場合はRad51にDmc1も結合してrecombinationする。

どうも3'末端があるとRad51がやってくるっぽい。Dmc1が無いとうまくいかないので何かはやってるっぽいが、
biochemical assayでDmc1を加える事による違いを突き止める事は今の所出来ていない。

以後はstrand invasionが起きてDouble Holliday Junctionが形成されて〜と続く。

なお、Rad51/Dmc1はhomologousをターゲットとする（sister chromatidsをターゲットとしない）。

ここまで述べてきたrecombinationの各反応に配列依存な部分は無さそうだが、
哺乳類の中に大量にあるrepeatされてる配列部分には起こらない事から、何か仕組みはある模様。
リピートしている領域はheterochromatinに入っている事が多く、これはとても凝集していて外からアクセスしづらいので、
そういう構造的なものでブロックされているのかもしれない。

またrecombinationが起こりやすい場所はある。でもメカニズムは良くわかっていない。

## ゲノム編集とCRISPR

プログラムされたHomologous Recombinationの仕組みを活用してゲノム編集を試みる。

イーストだと、homologyっぽい領域を両端に持つdsDNAを入れると、勝手にHomologous Recombinationが起こり、このdsDNAを組み込む。
だから真ん中のあたりに入れたいgeneなどを入れておいて両端をhomologyっぽいものを並べておけばDNAを編集する事が出来る。

だがイーストの生き物ではなかなかこの仕組みは起こらないので、少し細工がいる。
ホスト側のDNAにDSBを入れるとrecombinationの頻度が劇的に上がるので、これを用いて同じような事が出来る。

### zinc finger

そこで初期の試みとしては、zinc fingerで特定の配列を識別するようにしたタンパク質を用いて、狙った場所にDSBを入れる、というのが行われていた。
zinc fingerをつなげる事で狙った配列を識別するように出来て、
それとnucleaseをつなげたタンパク質を作る、という感じか。（TF III Aとかがその名前か）

### TALE

TALE ... Transcription Activator-Like Effector

バクテリア由来のタンパク質で、これも狙った配列を識別するように出来る。

## CRISPR

zinc fingerベースのものもTALEベースのものも、目的のタンパク質を合成したり、などにめちゃめちゃ時間が掛かる。
そこで現れたのがCRISPR。

### CRISPRの由来

バクテリアに、特定にrepeatに挟まれたユニークな配列のある領域が発見された。
これは初期のころから、バクテリアのDNA-basedなimmune systemなんじゃないかと思われていて、実際そうだった。

[35ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=34)

このユニークな配列を調べてみると、どうもPhageから来ているらしい。
そしてこの配列を持つバクテリアは、その配列に対応したPhageに耐性がある事が判明。

さて、このrepeatに挟まれたユニークな配列の領域がどう機能するか？

1. まずrepeatごとRNAに転写される
2. ユニークな配列ごとに処理（切断）されて、タンパク質-RNA Complexと結合（切断された結果は一つのユニーク配列と一つのrepeatを含む）
3. このタンパク質-RNA Complexは結合したユニークな配列とhomologousなDNAをターゲットとして、二本鎖をunwind
4. この領域をカット＞そのほかのexonucleaseがさらにcleave

この仕組みは大きく２つのカテゴリがある。

- Class II ... ユニークな配列一つにつき一つのタンパク質(Cas9が有名）が結合（有効化するのに一つのgeneで良い）
- Class I ... ユニークな配列一つに、タンパク質の詰め合わせが対応する（有効化するのに複数のgeneをactivateする必要がある）

なお、バクテリアには良くある事だが、このrepeatの領域のすぐそばにそれを処理するタンパク質のコード領域があるから、
リピートを見つければそのタンパク質も探す事が出来る。

### 自身をcleaveしない仕組みとPAM

ユニークな配列をターゲットにするのなら、自身のrepeatに挟まれたユニークな配列もターゲットになってしまいそうだが、
それをどうやって防いでいるか？

これにはPAMと呼ばれる配列が関わっているが、この免疫機構には以下の２つの種類がある。

1. PAMのある配列を攻撃するもの
2. PAMの無い配列を攻撃するもの

それぞれで防御方法が異なる。
なおPAMはProtospacer Associated Motifの略。典型的には2〜3nt程度の短い配列。

以下では1の例として、良く研究されているCRISPR/Cas9システムの場合を見ていく。

[36ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=35)

CRISPR: Clustered Regularly Interspaced Short Palindromic Repeats

前述のrepeatに挟まれたユニークな配列をCRISPRではspacerと呼び、これは20ntの長さでファージ由来のもの。

そしてファージ側にある同じ配列の領域をprotospacerと呼ぶ。

CRISPR RNAとはこのリピートとspacerをあわせた領域を転写したあとにそれぞれのspacerごとになるように処理されたRNA片の事。
このRNA片は一つのspacerと一つにリピートを含む。

そのあと、多くのCRISPRシステムではtracrRNAと呼ばれるRNAが転写される。
このtracrRNAが無いとCRISPRは機能しない。

そのあとにいくつかのCas genesが転写される。
Cas9がcleavageし、Cas1とCas2はファージからの配列の取得を行う。

PAMはprotospacerの隣（の反対側の鎖）に存在する2〜3nt程度の配列で、
spacerの間のrepeatには無い。

このPAMによって自身の配列と攻撃対象となる敵の配列を区別している。

なおPAMが無い方をアタックするシステムでは当然自身のrepeatの方にPAMがある。

### Cas9システム

Cas9には２つのnucleaseサイトがある。一つはRuvCに似た構造。
もうひとつは金属でコーディネートされるアミノ酸が並ぶアクティブサイト、
具体的にはhistidineとasparagineの並ぶサイト。
そしてこの２つのnucleaseがdsDNAの凄く近くをカットする。

金属コーディネートのサイトの方がspacer配列と一致する方の鎖をカットする方か。

そしてCas9はPAMとしてNGG（Nは任意）があるspacerだけをカットする。

Cas9はtracr RNAとguide RNAが結合する。

[36ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=35)

guide RNAがターゲットのシーケンスと一致する。tracr RNAとguide RNAをlinker RNAがつなげている。
ゲノム編集としてはこのguide RNAを目的に合わせて差し替える事になる。

つまり、ターゲットとしては以下の条件を満たす所をカットすることになる。

- PAMがある
- guide RNAと一致する

なお、厳密んはPAMの隣の12配列が重要で、ここに一つでもミスマッチがあるとカットされない。
残り8ntの中には、一つはミスマッチがあってもカットされる。

### CRISPR/Cas9 の用途

最初は、単にカットを入れる目的で使われていた。
そうするとNHEJで修正されるので（[DSBsの概要とNHEJ](DSBsの概要とNHEJ.md)参照）、いくつかのntが削除される事になる。
coding exonをターゲットにすれば、ここより下流はtruncation mutationされる事になる。

よりコントロールされたmutationを目指して、二箇所のカットを入れる事で間の領域をまるまる削除するという事も行われていた。
これでより確実にターゲットとするgeneをinactivate出来る。

より進んだ活用としてはhomologous recombinationを併用するもの。
homologous な領域を両端に持つ目的の配列を持ったdsDNA片をこのCRISPR/Cas9と併用する事で、この目的の配列をDSB付近の配列と置き換える事が出来る。

なお、これは２つのhomologous chromosomesに同時に作用させる事が出来るので、母方のgeneと父方のgeneの両方を置き換える事が出来る。

実用的には、Cas9やguided RNA, tracrRNAなどを持つplasmidと目的のdsDNA片を加えてtransfectする（transfectはEukaryote版形質転換（transform）の事をそう呼ぶ）。

[37ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=36)

### CRISPRの応用

これらの仕組みを用いていろいろな応用が行われている。

- cut DNA
- nick DNA (片方だけ削って片方だけmutationを狙う）
- CIRSPRi: inhibitorをつなげる
- CIRSPRa: activatorをつなげる
- fluorescent proteinをつなげる
- recombinaseをつなげる
- binding siteの競争相手に使う
- 調べたいproteinをつなぐ