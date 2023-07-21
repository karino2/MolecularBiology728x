geneの制御はdegradationよりもsynthesisの方で行われるのが主流なので、degradationのregulationはどちらかといえば例外的な話となる。

そこでまずは制御されてない一般のRNA Turnoverの話から入る。

## RNA Decay

RNA decayはRNAの分解、というような意味の模様。

RNA decayの役割を考える必要があるのは何故か？

### RNAの濃度変化に重要

RNAの細胞内の濃度の変化という事を考えると、decayが重要になってくる。
例えばある時点で合成を1/10にしても、RNAの半減期が長いとRNAの量が実際に減るには長い時間がかかる。
一方でRNAの半減期が短ければ合成を減らしてすぐにRNAの濃度も減る。
例えば半減期が1分なら10分程度で新しいsteady stateに到達する。

だから濃度の調整を考える時にはRNA decayは重要になってくる。

### RNAのfidelityと関連

リボソームは10の4乗に一回くらいの割合で間違ったアミノ酸をつなげる。だからそんなに高いfidelityという訳では無く、
ちょくちょく間違ったタンパク質が作られる。
これらとtRNAやrRNAの組み合わせで正しくないものになってしまっていた時にdegradationは重要。

また、翻訳は、間違えるだけじゃなくて翻訳の途中で止まってしまう事もある。
止まっているリボソームをRNAから離してふたたび正常な過程に戻すためにもRNA decayが関わる。

### RNAの半減期

- イースト菌のmRNAの平均半減期は20分
   - 細胞分裂は90分に一回
- 人間のmRNAの平均半減期は8〜10時間
   - 細胞分裂は24時間に一回

細胞分裂の頻度との比率は、大雑把には同じくらい。

### rRNAのprocessing fragments

RNAの大半はrRNAである。
そしてrRNAはprecursor RNAからETS(external transcribe spacers)やITS(internal transcribe spacers）と呼ばれる領域が切り離されて使われる。
このcleaveはあるRNaseが行う。

イースト菌では成長中の場合は1分間に2000個程度のリボソームが合成される。
その為にはこれらのITS, ETSが1分間に3000000 nt程度の速度で分解される必要がある。

こうしたゴミRNAを素早やく除去しないと、RNAと結合して役割を果たすタンパク質の類が本来のターゲットを探すのを邪魔してしまうので、重要。

## RNAの種類ごとの半減期

1. mRNAs ... 中くらいの半減期
    - イースト菌で平均20分、人間で平均10時間程度
    - regulateされる事もある
    - 一番分布が広い
2. stable RNA（tRNA, rRNA, snoRNAs, U1など） ... 長い半減期
   - オーダーとしてはmany cell divisionsくらいで、観測不能なくらい長い
   - 複雑にfoldされるかタンパク質と固く結合している
   - defectiveか細胞が飢餓状態の時だけたくさんの分解が観測出来る
3. junk RNA ... 短い半減期
   - 1分以下とか
   - intronとかantisenseにtranscriptされたものとかrRNAのITSやETSなど
   - polyadenylatedされてない
   - Gro-seqとかNET-seqだと消える前に観測出来る

antisenseにtranscriptされるとは、プロモーターから反対側に向かってtranscriptされる事。

## Nucleaseを使った基本的なAssay達

Nucleaseには三種類ある

1. endonucleases
2. 5'ー＞3' exonucleases
3. 3'ー＞5' exonucleases

これらを使って単純にカットするin vitroなassayを行う事が出来る。

### Nucleaseを使ったassayの基本的な手順

Nucleaseを使ったassayの基本的な手順は以下となる。

1. RNAをラベル付けしてnucleaseを含む何か（nuclease候補となるもの）を混ぜてしばらく待つ
2. gel electrophoresisとautoradiogramでRNAがどうなったかを調べる

さて、ラベルをRNA全体に行った時に、nucleaseで幾つかのバンドに結果が分かれるためには、
適当なspecificityのendonucleaseのケースである必要がある。

5'ー＞3' exonucleasesと3'ー＞5' exocnuleasesは通常めっちゃ早く反応してしまうので、
これらのincubateして5分とか経ってから計測すると何も計測出来ない。(どちらもhighly processive）

とても短い時間なら何かは引っかかるが、full lengthからのグラデーションになって、しかもどっちのexonucleaseかも分からないという点で、
あまり得られる情報は多くない。

### RNAのラベル付け

ラベルをRNA全体に行うと、5'ー＞3' exonucleasesと3'ー＞5' exocnuleasesのどちらなのかが分からない。
そこで、ラベル付けの方法を工夫する事でこれらを見分ける手順を考える。
そのためにRNAへのラベル付けについて考えてみる。

まずRNA全体にラベル付けを行うには、T7などのバクテリオファージ(phage)のRNAポリメラーゼを用いて、これと放射線ラベルや蛍光ラベルをつけたヌクレオチドを一緒に入れるとこれらのヌクレオチドが使われたRNAが素早く合成される。

[T7ファージ - Wikipedia](https://ja.wikipedia.org/wiki/T7%E3%83%95%E3%82%A1%E3%83%BC%E3%82%B8)

5'末端のラベルづけは、三リン酸をカットして、末尾をリン酸化するキナーゼをラベル付けされたリン酸とともに入れれば5'にラベルづけする事が出来る。

3'末端のラベル付けは、poly A tailを作るポリメラーゼを使ってラベルづけ出来る。（ラベル付けされたATPを使うんだろう）

### ラベル付けの違いでexonucleaseの結果がどう変わるか？

5'末端にラベルをつけて5'ー＞3' exonucleaseを使えば、バンドは消える。
一方3'ー＞5' exonucleaseを使えばグラデーションとなる。

逆に3'末端にラベルをつけて5'ー＞3' exonucleaseを使えばグラデーションになり、一方3'ー＞5' exonucleaseを使えば消える。
（poly Aの量によっては後者も少しのグラデーションが見える事もあるがすぐに消える）。

### 末端にPhosphothioateの部分を作る

RNAの中で、ホスホジエステル結合の部分のOの代わりにSとしたphosphothioateがあると、
そこはnucleaseはカット出来ない。
そこでこのphosphothioateを間に持つRNA片を作ってRNAにligateすることで、
そこはnucleaseでカットされないように出来る。
これを組み合わせる事でも新しい事が分かる。

例えば、5'側にラベルをつけて3'側にこのPhosphothioateの部分を足すとどうなるか考えてみよう。
5'ー＞3' exonucleaseが何もバンドが見えないのはphosphothiooateがあるか無いかによらない。
だが3'ー＞5' exonucleaseはphosphothioateがある所までしか分解されず、ちょっとだけ短いバンドとして見える。

このように途中で止まってくれると、実験の手順としても楽だ。incubateして放っておくだけで良くて、
間の幾つものtimepointで結果を取らなくて良い。

### exonucleaseはオリゴヌクレオチドを作る

exonucleaseはどちら向きのも、ntまで分解する訳では無くオリゴヌクレオチド(oligonucleaothides)に分解する。
オリゴヌクレオチドを分解するのはこれとは別の酵素であるoligonucleotidaseである。

### exonucleaseはhydrolyticとphosphorolyticがある

- hydrolyticなexonuclease ... 水を使ってphosphodiester bondをattackしてmonophosphatesを生成する。（つまりrNMP）
- phosphorolyticなexonuclease ... phosphateをnucleophileに使って、diphosphatesを生成する。（つまりrNDP）。

phosphorolyticな方が、rNTPに戻すのが簡単なので、より高速に分解したい所ではphosphorolyticなexonucleaseが使われる。

phosphorolyticなexonucleaseはオリゴを生成せずにヌクレオチドを直接生成する場合もある。また、oligonucleotidaseもphosphorolytic。

## RNAの半減期に関わるIn vivo assay

RNAの半減期を測りたい。例えば特定のgeneに興味があったとすると、そのmRNAの半減期を知りたくなる。
調べ方としては以下の手順

1. transcriptionを抑制する（t=0)
   - promoter shut-off
   - RNA pol II ts mutant
   - 薬剤（thiolutin, α-amanitin, actinomycin D、バクテリアなら抗生物質のRifampicinなど）
2. 時間軸に渡ってRNAを細胞から分離
   - phenol extractionやethanol precipitation（mRNA以外のRNAやDNAはどうにかして取り除く）
3. 調べたいRNAを検出する
   - qRT-PCR
   - RNA-seq
4. decay rateとhalf lifeを計算する

### ステップ1のTranscriptioの抑制

目的のgeneのupstreamに、E. coliならlacZ promoterとか、イースト菌ならGAL promoterとか、metazoanならTet controlled promoterなどをつなげて、turn-onしたりturn-offしたりする。

Tetならtetracyclineを加えたり取り除いたりして制御する。
GALやlacならグルコースを加えてturn offする。

metazoan: metazoaは動物界から原生動物を除いたものだとか。＞[後生動物 - Wikipedia](https://ja.wikipedia.org/wiki/%E5%BE%8C%E7%94%9F%E5%8B%95%E7%89%A9)

ts mutantは温度変化でRNA Pol IIが機能しなくなるようなミュータントか。

promoter shut offはゲノムの編集が必要なのでセットアップに手間がかかるが、目的のgeneだけを止められるので副作用が少ない。
その他の手法は全transcriptionが止まってしまうので副作用が大きい。

### ステップ4のdecay rateとhalf lifeの計算

[29ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=28)

## RNA Pulse-Chase Assay

前述のtranscriptを止めるassayのうち、全transcriptを止めるものは副作用が大きい。
そこで半減期を調べるにはPulse Chase Assayを行う方が良い場合もある。

RNA seqするので特定のgeneの半減期を調べる事が出来る。

以下が手順。

1. ラベルづけしたrNTPsを加えた状態でしばらく待つ（many generation）
   - これがPulseフェーズ
2. t=0でラベル無しrNTPsに変える（加えるものを変える、これを大量に加える）
3. ラベルづけした方のrNTPを含むRNAをtime-pointごとに計測する
   1. RNAを分離
   2. 4TU-RNAをcontrolとして少量追加（結果からはこの分を割り引く）
   3. 対象とする全RNAをbiotinylate
   4. mRNAを濃縮する（enrichする）、rRNAを取り除くなど
   5. streptavidinで選択する
   6. 結果をRNA-seqする

ラベルには4-thio uracilが良く使われる。ウラシルのOをSH基に置換したもの。
これにbiotinを結合させる事が出来るから。

2の大量に加えるというのは、例えば1で 1 micro molarの4-thio uracilを加えて待ったあとに、
t=0より後には 20 micro molarのuracilを加えて観測する、というような具合。

## バクテリアとEukaryoteのmRNA decay

ページを分ける。

- [バクテリアのmRNADecay](バクテリアのmRNADecay.md)