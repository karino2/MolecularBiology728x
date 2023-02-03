- conjugate ... （非タンパク質と）結合する
- encompass ... 包む、覆う、取り囲む
- fathomable ... 推測出来る
- titrage ... 滴定する
- distal ... 末梢の、遠位部の

## EukaryoteのRNAポリメラーゼ

|  | RNA全体に占める割合 | 転写するgeneの種類 | 生成物 | α-amanitinのsensitivity |
| ---- | ---- | ---- | ---- | ---- |
| RNA Pol I | 〜80% | 1 | rRNA | insensitive |
| RNA Pol II | 1〜5% | 〜20,000 | mRNA | very sensitive |
| RNA Pol III | 〜15% | 100 | tRNAsとsmall RNAs | weakly sensitive |

RNA全体に占める割合というのは、細胞内で生成されているRNAのうちそのポリメラーゼによって生成されている割合という事。
つまり細胞内のほとんどのRNAはRNA Pol Iによって生成されている。

けれどRNA Pol Iはribosomal RNA gene一つだけを転写する。

α-amantinはキノコが生成するペプチドで、RNA Polの種類を選り分けるのに使われる。

mRNAはRNA Pol IIに転写されるので、一番複雑な制御がなされている。
このコースでも主にRNA Pol IIを見ていく事になる。

## EukaryoteのRNAポリメラーゼの構造の、バクテリアとの比較。

バクテリアのRNAポリメラーゼと似た構成要素に、さらに追加でいくつかの要素がある。
対応するバクテリアの構成要素については[[バクテリアのTranscription入門]]や[[バクテリアにおけるTranscriptionのInitiation]]を参照。


| 対応するバクテリアの | RNA Pol I | RNA Pol II | RNA Pol III |
| ---- | ---- | ---- | ---- |
| β' | RPA1 | RPB1 | RPC1 |
| β | RPA2 | RPB2 | RPC2 |
| α1 | RPC5 | RPB3 | RPC5 |
| α2 | RPC9 | RPB11 | RPC9 |
| ω | RPB6 | RPB6 | RPB6 |
|  | +9 others | +7 others | +11 others |

いくつか注目すべきポイント。

- ωに対応するものはすべて同じ
- Pol IとPol IIIはα1, 2に対応するものが同じ
- 最後の行の追加のサブユニットは主に制御に関わるもので、合成の仕組みでは無い

20000個のgeneに対するregulatorはそれぞれ別々のgeneにエンコードする訳には行かないので、
いくつかの構成要素の組み合わせの違いで異なる制御をする事になる。

### シグマファクターに対応するもの

バクテリアでは[[バクテリアのTranscription入門]]で見たように、シグマファクターがプロモーターのspecificityを担う。
Eukaryoteでこれに対応するのは3〜6個のファクターが同じ役割を担う。

## RNA Pol IIプロモーターの構造

以下のノートでは、RNA Pol IIのコアプロモーターの主要な構成要素をすべて載せてある。
実際のプロモーターはこのうちのいくつかだけがある。

[16ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=15)

プロモーターはgeneの転写の制御に必要な全配列の事。そのうちのCore Promoterを見ている。

### Core Promoter

-  〜60bp
- Transcription Start Site (TSS)を取り囲んでいる
- 1つから3つの以下の要素を持ち、それぞれがGeneral Transcription Factor（GTF）と結合する
   - GTFsはすべてのプロモーターの転写に必要なもの
   - 他方、DNA binding transcription factorsなどは特定のプロモーターだけが必要とする
- 転写に必要なminimal sequences
   - in vitroでは次に述べるProximal Promoter（Core Promoterを含む）で作業する

これらの構成要素の位置はプロモーターによって変わる場合もある。ノートには典型的な位置を書いてある。

### BRE

TFIIB Response ElementでTFIIBと結合する。RNA Pol IIのGTFをTFII〜と呼ぶ。この場合はTFIIB。

### TATA box

TBP (TATA Binding Protein）と結合する。これはより大きな TFIIDというcomplexの一部。

### Inr

Initiator element。これもTFIIDと結合。

### DCEたち

Downstream Control Elements。TFIIDと結合。

### DPE

Downstream Promoter Element。TFIIDと結合。

### これらの要素についてのノート

最初に見つかったのがBRE, TATA, Inr。Downstream Element関連はあとになって見つかったもので、レア。
TATAが一番良く見られる。

TATAが無いプロモーター、TATA less promoterを理解しようとする試みの中でDownstream Promoter Elementsは見つかった。

### Proximal Promoter概要

[17ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=16)

- 200〜400bp
- Core Promoter + Local DNA Binding Transcription Factor Binding Sites
     - 後者はCore Promoterのupstream
     - TFが結合する
     - これはprokaryoteのプロモーターには見られず、eukaryoteのプロモーターだけの特徴
- これだけで制御された転写が行われる(Core Promoterの部分はいつも制御されない）

## Full Promoter、Proximal Promoter, Core Promoter

Full Promoterは400bpから10kbp以上のものまで存在する、プロモーター全体。
その中にProximal Promoterがあり、その中にCore Promoterがある。

Full PromoterのうちProximal Promoter以外の部分には、Long Range Promoter Elementsと呼ばれるものがある。

Long Range Promoter Elementsにはどういったものがあるか？

1. Enhancers
2. Insulators
3. Locus Control Regions（Super Enhancers)

### Enhancers

転写のアクティベーター。

- 転写の領域の1kb以上も離れた所にある事が多い（けれど転写領域の中でもintronなどにある場合もある）
- 配列を逆向きにしても機能する
- 上流でも下流でも機能する
- ループなどでプロモーター領域と近接して相互作用している模様？（現在研究中の最前線の話題）

Enhancerは配列specificなDNA binding transcription factorsやgeneral transcription factorsと結合する。
だから性質としては、付随するコーディング領域を持たないプロモーターのように見える。

そしてEnhancerはeRNAというRNAも生成する。このeRNAを取り除くとEnhancerは機能しなくなるので、どうもこのeRNAはEnhancerの機能に必要な模様。

まだ詳しくは分かってないが、このeRNAがDNAのループを作ってEnhancerとプロモーターを近接させている模様？

このEnhancerはnucleosome remodeling complexやhistone modifiersなどのDNA binding TFsを動員してこれをプロモーターに提供している。

### Insulators

Chromatin Boundariesを形成する。2種類ある。

1. Enhancer Blocking Insulator  
Enhancerとプロモーターの間にInsulatorがあると、Enhancerがプロモーターに相互作用するのをブロックする。
2. Barrier Insulators  
クロマチンの状態が伝播していくのを防ぐ。（ヒストンmodificationなどがここで止まる）

Enhancer Blocking Insulatorは、Enhancerの右と左の両方にプロモーターが存在している時に、片方にだけ相互作用するようにブロックする。
ブロックのメカニズムはEnhancerとは別の（競合する）ループを作成する事によって、の模様。
CTCFというタンパク質がInsulator Elementと結合してループを作るのは確からしい。

バリアの方は例えばヒストンのアセチル化を止める場合は、ヒストンの間に十分な長さを設ける場合や、
Insulator領域にHDAcたちを結合させて伝播を止める場合がある（だいたいは十分な長さの方）。

### Locus Control Regions

近接した複数のgeneに作用する。

例として人間のglobin genesを見てみる。
globin genesを制御するLocus Control Region (LCR)がある。

globinのgeneはいくつかあり（ε, γ0, γ1, δ, β）、
胎児の時には特定のglobin geneが有効化され、年齢を経ると別のglobin geneが有効化されていく。
LCRをinactivateすると、全グロビンgeneがinactivateされる。

これはネズミやキツネでも同じような機構がある。

LCRはクロマチンの広い領域をopenする事で機能している。
LCRがあるか無いかでヒストンmodificationが大きく変わる。
Histone Modifying EnzymeやNucleosome Remodeling Complex（こちらはたぶんレア）を動員してこれを実現している模様。
そのほかにもLCRが何かやっているかどうかはまだ分かってない。

LCRは通常のEnhancerよりも大きい傾向にあり、通常のEnhancerより長い距離をまたいで機能する傾向にある。

LCRが複数のgeneのどれを有効にするかなどがどう制御されているかは良く分かっていない。
ループの形成を制御する何かがあってそれでどのgeneと近接するかが変わるとかか？と思われているが詳細は不明。

## DNase I Sequencing

昔から、制御に関わる領域がDNase Iにとてもsensitiveなのが知られていた。
おそらくnucleosome-freeなのだろう。

Open Chromatin Statesの場所を調べたいと思えば、核を持ってきて、DNase Iを加えれば良い。
だがあまり加えすぎるとnucleosomesの中もカットしてしまうので、
滴定してちょうど良い量だけ加える。

そしてgel purificationしてDNAの小さい断片を分離して、ヌクレオソームを含む150bp程度の群と小さい群をDeep Sequenceする。
そしてゲノムにマップすれば、小さい断片はorigins, enhancers, promotersなどの領域となっている。

小さい断片の領域がどの役割なのかを知るのは難しい。transcriptionのサイトのすぐ前ならプロモーターだろうとはわかるが、Enhancerやoriginは分からない。

だが、DNaseから守られた領域が特定のTFで守られたおかげかどうかを調べたければ、ChIP-seqした結果と突き合わせれば良い。

### MNase Seqとの使い分け

DNaseは[[endonuclease]]で、MNaseはendonucleaseかつexonuclease。MNaseの方がヌクレオソームギリギリまでDNAを分解していくので、
ヌクレオソームの位置を調べるのに向いている。一方DNaseはもっと小さなタンパク質 binding siteを調べる事が出来る。

## Chromosome Conformation Capture (3C)

Chromosomeの異なる領域同士がどう相互作用するかを調べるassay。
特に 3C Deep Seq（Hi-Cとも呼ばれる） を見ていく。

大きく離れた（2kbとか20kbとか50kbとか）領域が、タンパク質を媒介して結合しているという仮説のもとに考えられた手法。

[17ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=16)

1. 生きた細胞にformaldehydeでタンパク質とDNAの間にクロスリンクを形成する（細胞は死ぬ）
2. 細胞を開いてDNAを分離
3. DNAを制限酵素で切断、この時、制限酵素は3'-recessed endを作る必要がある  
recesseは奥まったとか凹所とかいう意味らしいので3'側が少し多く削られたendという事、これはポリメラーゼが次のステップでbiotinヌクレオチドで伸長するのに必要
4. biotinを付加したヌクレオチドを加えて、そのへこんだ3'末端側を埋めるまで待つ
5. とても薄めた状態でligateする（薄める事で近接したDNA同士だけがligateされるようにする、つまりこれはタンパク質で繋がれた末端同士だけがligateされるようにする）
6. 68度で6〜8時間保ちクロスリンクされたタンパク質を分離する
7. phenol chloroform extractionを行いDNAからタンパク質を取り除く（フェノールクロロホルム抽出）
8. 切断してbiotinをマグネットで引き寄せて分離しDeep Seqする

これで接続された場所を知る事が出来る。

7に関しては以下を参照。

[【解決】「フェノール・クロロホルム抽出」の原理とは？](https://lifescience-study.com/1-dna-or-rna-extraction-from-cells-and-tissues/)

## Hi-Cデータの解釈

[18ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=17)

junctionの位置を特定する為には、両側に20bp以上が必要。
これをシーケンスして、相互作用のある領域をグラフにプロットする。
すると以下のFig. 1のようになる。

[Comprehensive mapping of long-range interactions reveals folding principles of the human genome - PubMed](https://pubmed.ncbi.nlm.nih.gov/19815776/)

対角線の領域は単に一本のDNAが切断されてreligateされただけと思われる。
白い領域は相互作用が見られない領域。
対角線から離れているが赤い所がループを形成していると疑われる所。

また、違う可視化の方法として、上記グラフの片方の座標を何らかの場所、
例えば興味のあるTSSなどに固定して、そこからの距離を横軸に、interactionの数を縦軸に取ってみる。（ノート18ページの図）

近くとはたくさんreligateされるが、少し離れたら単なるreligateの頻度はほとんど無くなるはず。
だからそこから大きく離れたとこにに相互作用が観測されたら、そこがdistal enhancerと思われる。