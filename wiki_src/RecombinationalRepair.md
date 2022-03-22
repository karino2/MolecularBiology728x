## Homologous Recombination Double-Stranded Break Repair (HR DSBR)

Recombinational Repairの為には、完全な2つのduplex DNAが必要。
duplex DNAというのは二本鎖の事か。(dsDNAと何が違うのかしら？）

動画はわかりにくいが、ようするに相同染色体の事だろうか。
父親由来と母親由来で違いはあるが、ほとんど同じ配列の染色体のペア。ただ塩基の配列にはalleleの違いはありうる。

## Recombinational Repairの手順

[PngNote ページ7](https://karino2.github.io/ImageGallery/MolecularBiology728x.html#lg=1&slide=6)、
[PngNote ページ8](https://karino2.github.io/ImageGallery/MolecularBiology728x.html#lg=1&slide=7)、
[PngNote ページ9](https://karino2.github.io/ImageGallery/MolecularBiology728x.html#lg=1&slide=8)


- Strand Resection/Processing ... DSBを処理する
- Strand Invasion
- DNA Synthesis
- Branch Migration
- Double Holliday JunctionのResolution

### Strand Resection/Processing

DSBの終端のうち片方を分解して端を一本鎖にする。分解は5'から3'方向へ分解していく方向の鎖を分解する。
これをStrand ResectionまたはStrand Processingと呼ぶ。

この処理の結果として、3'側末端の方に一本鎖の領域が出来る。

一本鎖の領域は、100〜1000 nt程度の長さ。(ntはヌクレオチド）

### Strand Invasion

２つの相同染色体を揃えて、先程の過程で出来た3'側の一本鎖を相同染色体側に乗り入れる。
乗り入れた先でbase pairのペアリングをして、間にクロスする領域、Holliday junctionが出来る（[PngNote ページ7](https://karino2.github.io/ImageGallery/MolecularBiology728x.html#lg=1&slide=6)参照）

DSBの両端がある場合は、strand invasionはもっと複雑で、以下のようになる。

[PngNote ページ8](https://karino2.github.io/ImageGallery/MolecularBiology728x.html#lg=1&slide=7)

### DNA Synthesis

strand resection/processingで作った一本鎖の方がいつも3'だったので、こちらをポリメラーゼで伸張する。

### Branch Migration

invasionしている所が開いていって、余った所がつながり、Holliday junctionが２つ出来る。

[PngNote ページ9](https://karino2.github.io/ImageGallery/MolecularBiology728x.html#lg=1&slide=8)

この時点で破損部分の再合成は終わっている。

### Double Holliday JunctionのResolution

[PngNote ページ10](https://karino2.github.io/ImageGallery/MolecularBiology728x.html#lg=1&slide=9) に見るように、Holliday Junctionの解決は２通りがありうる。

Double Holliday Junctionだと、合計4通りの解決のされ方がありうる。

[PngNote ページ11](https://karino2.github.io/ImageGallery/MolecularBiology728x.html#lg=1&slide=10) 

- 左側の経路は、両端のAとCは修復前と同じ対応になっていて、間だけ変わっている(パッチ）
- 右側の経路は両端が大文字と小文字（Aとc、aとC）になっている事から分かるように、クロスオーバーが起こっている（クロスオーバー）

## RecBCDタンパク質

以下Recombinational Repairに関わるタンパク質を見ていく。基本的にはE. coliの物を見ていく。

RecBCDは、RecB, RecC, RecDからなるタンパク質Complexで、以下の２つの重要な役割を果たす。

1. DSBを認識して、3'末端側の一本鎖になるようにDSBの片方をdegradeしていく
2. Recombinationを高い頻度で行う場所と低い頻度で行う場所の区別を行う

RecBCDはχサイト（Chi site）ではrecombinationを高い頻度で行う。
χサイトは8nt (ヌクレオチド）配列で、一本鎖の状態でだけ認識される。

Chiは見た目がクロスしているように見えるのでそう名付けられている。

### RecBCDのメカニズム

３つのサブユニット（RecB, RecC, RecC）で構成される。

- RecB ... モータータンパク質でヘリカーゼ的な機能を持つ。3' から 5'へ進む。nucleaseの機能を持ち、DNAに切れ目を入れていく。
- RecD ... Bより速く動くモータータンパク質で、ヘリカーゼ的な機能も持ち、5'から3'へ進む。
- RecC .... χサイトと結合して挙動を変える、制御の為のタンパク質

χサイトの手前では、Bの側の鎖の方が頻繁にカットされて、Dの側の鎖はより頻度が少なくカットされる。

χサイトを通ると、RecCによって認識されて、タンパク質Complexの変化を引き起こし、RecDのモーターを止める。
そしてχサイトの後はRecD側の鎖しかカットしなくなり、RecB側の鎖は以後カットされない。

モーターが遅いBだけになるので、χサイト以後はRecD側のカットの頻度は上がる（よりゆっくり進むようになるので）。

結果として、χサイトから先はssDNAとして残り、RecD側（5'末端側）はdegradeされ、
先述のStrand Resection/Processingでの挙動となる。

### RecBCDの構造

先に述べたRecBCDのメカニズムはどのような構造により実現されているか？

RecBがnucleaseとしての機能を持っていて、最終的には3'側をのこして5'側をdegradeしたい。

このコンプレックスにdsDNAが入ってくると、真ん中のピンを通る事で二本鎖が解かれていく。

χサイトを通る前は3'はCを経由してRecBのnucleaseのドメインを通る事でカットされていく。

χサイトを通ると3'の通る経路が変わり、RecBのnucleaseのドメインは通らずにRecCから抜けていくようになる。
これでχサイトより後には3'側がカットされなくなる、という振る舞いを実現している。

5'側はどちらにせよnucleaseの所を通る。

## RecAによるStrand Invasion

RecAがStrand Invasionを実現する。

RecAはフィラメント状の構造（丸がつながって糸状になって巻き付いている感じか）。
RecAはDNAのhelixが一周する長さに6個つく。このRecAでDNAがコーティングされる。
RecBCDが作った1000nt以下くらいの長さのDNAをRecAはコーティングする。

### RecAのアセンブル

RecAのassembleには２つの特徴がある。

- cooperative
- polar ... 3'側にくっつきやすい

RecAはcooperativelyにくっつく。つまり一つくっついている所に二個目がよりくっつきやすく、二個目がくっついている所には三個目がよりくっつきやすくなる。

また、polar、つまり3'側にくっつきやすいので、3'末端を先に埋めていく。

また、RecAはbackboneに結合する（配列に依存しない）。塩基が露出するように結合する。

RecAはssDNAに巻き付くが、中にさらにduplex strandを入れる余地がある、つまり3本鎖が入りうる。

### RecAによるストレッチ

RecAがコーティングすると、DNAを伸ばして、homology matchを探しやすくする。RecAはDNAをほぼ2倍の長さに伸ばす。

RecAがストレッチしているDNAは、3つのbaseが普通に並んだ後に大きなギャップが入るような構造が連続する。
普通に並んでる間は3.5Åくらいだが、ギャップの幅は8Åにもなる。

## Strand Invasion AssayでRecAの働きを見る

以下とRecAを加える。

- 一つのssDNA (円環)
- それとhomologousな duplex linear DNA (dsDNA)

するとRecAはssDNAに結合する。結合し終わると、invadeが起こり、strand exchangeが起こる。
つまりssDNAとdsDNAを解いた片方が結合して、残りの片方はssDNAとして分離される。

dsとなった円環のDNAをnick circular DNAと呼ぶこともある（リニアから来た方はnickが残るので）

分離されるのは、ssDNAと同じ配列を持つ方の鎖で、それとペアになる方の鎖はssDNAとペアリングする。

このassayの為には、1つのDNA endが必要となる。両方が円環だと、topoisomerase的なものが無いとinvade出来ない。

### 実験での見え方

non-denaturing agarose gelで電気泳動する。(denaturingだとnicked circular dsDNAが解けて円環1つと2本のssDNAになってしまうから）

ssDNAが一番速く移動し、ds linearが次に速く移動する。

中間状態がds DNAとcircular ssDNAの両方がくっついた状態なので一番動きにくい。
これは実験開始から5secくらいから見られはじめ、60secくらいまで見られる。90secで全ての反応が終わりこの中間状態は無くなる。

反応の結果出来るnicked circleなdsDNAはds linearよりは遅く、けれど中間状態よりは速く動く。

全体として、exchangeはfavorableでrapid。（素早く起こり、戻る側の反応が起こらない）

## RecAの振る舞いを、全体の流れで考える

DSBがあると、RecBCDが3'の一本鎖を作る。
これにRecAが巻き付くと、complementarityを検査して、complementな鎖を探していく。

complementな鎖が見つかると、invadeしていく。

片方がinvadeすると、もともとのds DNAの片方が分離するので、これが反対側のRecAの巻き付いた一本鎖とペアとなって、invadeが完成する。

これで3'の端が途中で終わってるdsDNAが二箇所出来るので、次にポリメラーゼでこれを伸張していく。
RecBCDは100〜1000もの塩基をdegradeしているので、この合成はDNA Pol III Holoenzymeが高いprocessivityで合成していく。
この時テンプレートとしては正常なhomologousな鎖が使われる。

## RuvABによるbranch migration

多くの生物ではbranch migrationとresolutionは同時に起こるが、ここではかんたんの為別々に見ていく。

branch migrationは、以下の２つの理由によりATPを消費する。

- rapidな反応の為
- unidirectional、つまり一方向にだけ進む為

[PngNote ページ12](https://karino2.github.io/ImageGallery/MolecularBiology728x.html#lg=1&slide=11) 

RuvAはHolliday junctionに結合するタンパク質で、tetrameric protein（4つのサブユニットから出来ている）。
真ん中の数ntを除いて基本的にはbpになっているDNAに結合する。

RuvAがHolliday junctionに結合すると、Ruv Bという別のタンパク質を動員する。

RuvBはhexameric なmotor proteinでDNAヘリカーゼと似た構造のタンパク質。DnaBやMCMと同じカテゴリ。
ただしヘリカーゼとしては働かず、DNA translocaseとして、DNAを進めていく機能だけを持つ。

RuvBがATPを使用してDNAを進める。

RubABの組み合わせはbranch migrationを10〜100、時には1000のオーダーで進める事が出来る。

## RuvCによるResolution

RuvCはresolvaseとも呼ばれる。

カットをどっち向きに入れるかで最終的な構造が変わってくる。

[PngNote ページ12](https://karino2.github.io/ImageGallery/MolecularBiology728x.html#lg=1&slide=11) 

具体的にcleaveを入れてresolutionを行うのがRuvC endonuclease。

RuvCもRuvA 同様にHolliday Junctionに結合するdimerでそれぞれのサブユニットにnucleaseのサイトがあってcleaveする。

RuvCが袈裟向きか逆袈裟向きかでカットの向きが変わる。

### RuvCのコンセンサスサイト

RuvCはコンセンサスsiteを認識し、このコンセンサスsiteが無いとcleaveしない。

コンセンサスサイトは、

`5' (T or A) TT (G or C) 3' `

で、確率的には、2/4*1/4*1/4*2/4で1/64の割合で発生する並び。 
これは3' OHと5' PO4にcleaveするのでligaseでそのままつなげる事が出来る。

この1/64の配列を待つ事で、branch migrationが少し進むのを待っていると思われる。

### RuvABCはコンプレックスか？

RuvABとRuvCは別々で機能する事が確かめられているが、
実際にはコンプレックスを形成していると考えられている。

横から見るとRuvAが片面に、RuvCは反対面に付くらしく、進めるのはRuvBなのでコンプレックスとして機能しているように見える。