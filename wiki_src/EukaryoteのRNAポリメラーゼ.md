- conjugate ... （非タンパク質と）結合する
- encompass ... 包む、覆う、取り囲む
- fathomable ... 推測出来る

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