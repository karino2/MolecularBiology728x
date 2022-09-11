- intercalate 挿入する、（うるう日を）入れる


バクテリアのTranscriptionのメカニズムとしては、以下の4つに分けられる。

- initiation
- elongation
- termination

ここではまずInitiaationについて扱う。

## Initiationの4つのステップ

initiation は4step。

1. Closed Complex Formation
   - RNAP holoエンザイムの動員の事をそう呼ぶ
   - promoter recognitionのプロセス
   -  RNAP holoが最初に結合する過程
   -  RNAポリメラーゼとシグマ（と場合によってはα-CTD）とプロモーターとの相互作用で媒介される
2. Open Complex Formation
   - dsDNAの最初のMelting
3. Unstable Ternary Complex Formation
    - RNAの合成を開始するステップ
4. Stable Ternary Complex
    - プロモーターから離れてRNAの合成によるelongationが始まる

α-CTDについては[[バクテリアのTranscription入門]]でもやった通りUP elementに結合する。

## Open Complex Formation

dsDNAの最初のunwindが起こる。

[7ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=6)

- 典型的には-11から+3にかけてunwindする（TSSが入っていることに注目）
- この作用はRNAP holoとDNAの相互作用で駆動される
     1.  βとβ'がDNAを包み込む
     2. シグマ1.1 ドメインが50Åほど移動する
           - これは負に帯電している領域で、これによりssDNAの代わりとなっている
           - 移動する事でテンプレートstrandのbinding siteからexitする
     3. シグマ2 (シグマの二番目のドメイン）がノンテンプレートの方のssDNAに結合する
           - ノンテンプレートstrandの２つの塩基、A-11とT-7が二重らせんの外側（逆向き）に裏返る
           - シグマ2とssDNAのバックボーンが結合する
           - この結合はdsDNAとinconsistentなので、より柔軟なssDNAとなって適合する形となる
- このOpen Complex Formationは外部からのATPを必要とせず、rNTPを必要としない
- このOpen Complex Formationまで来ると、以後はほとんど確実にtranscriptionされる（transcriptionのcommitted step）
     - 結合がめちゃくちゃ強くて、transcriptを進めてterminateする以外の方法ではなかなか離れない

Open Complex Formationで-11のAと-7のTは凄く重要だが、その周辺もAとTが多い。

## Unstable Ternary Complex Formation

RNAの合成を開始するステップ

 - 2 rNTPsがActive Siteに結合
     - 5'末端の一番最初のrNTPはいつもプリン（A/G）
     - 多くはrATP
         - この場合はテンプレートにTが必要
- 最初の8〜10NTs を合成したあとに、一旦合成が停止される＞abortive initiationとかabortive transcriptsと呼ばれる

このabortive initiationは何回も起こり、実際にpromoter escape（合成が開始）が起こるまでに50〜100回くらい行われる。

### なぜabortive transcriptsが起きるのか？

1. promoterの識別で使われるRNAP holoとの強い相互作用が、promoter clearanceを妨げるから。
2. シグマ3, シグマ4のlinker regionがRNA exit channelに居座っていて、RNAが出ていくのを防いでいるから。

promoter clearanceとは、RNAP holoがpromoterから離れていく事。

## Stable Ternary Complex

ここからelongationが始まる。

UnstableからStableへの移行については、abortive transcriptionがどういうモデルで行われているかに関わっている。

abortive transcriptionには３つのモデルが考えられている。

### transient excursions model

ゴムに繋がれているかのように、8〜10 NTsを合成したらRNAPが戻るモデル。

### inchworming model

RNAPがびろーんと伸びるモデル。これもどうにかして-10とシグマ2との相互作用はどうにか離れるメカニズムが必要となる。

### scrunching model

ssDNAがRNAPの内側に押し込まれるように少し移動して8-10NTs程度の合成が進むモデル。

このあとは、入り口側がより戻されてdsDNAが復活してRNAが離れるか、それとも後ろ側のDNAがより戻されて合成が進むかになる。


## FRETを使ってどのモデルか調べる

FRETについては以下を参照。

[NuclearPoreの輸送メカニズム - CellBiology706x](https://karino2.github.io/SubWiki/CellBiology706x/NuclearPore%E3%81%AE%E8%BC%B8%E9%80%81%E3%83%A1%E3%82%AB%E3%83%8B%E3%82%BA%E3%83%A0)

FRETはセットアップに5年くらい掛かる大変な実験らしい。

### Transient Excursions Modelかの確認

通常のRNAPの中にfluorophoreのついたunnatural amino acidというのを混ぜる。
もう一つのfluorophoreをDNAの-10と-35の特定の場所に置いて、
transient excursions modelならば両者は離れるのでFRETしなくなるはず。
実験としては6bpだけ合成されるようにヌクレオチドを足す。

結果は変化無し。

### Inchworming Modelかの確認

次にinchworming modelを確認するためにもっと前の部分にfluorophoreをつけてみたが、
これも変化無かった。

### Scrunching Modelかの確認

このケースではDNAの前方と後方にfluorophoreをつければ良いのでunnatural amino acidをつけるよりも簡単だとか。
-35と-10の間に一つ、start sideのdown streamにもうひとつをつける。

これは合成を進めるとFRETが起こった！

どうもScrunching Modelの模様。

8-10 bp程度が合成されると、何が起こるのかを考える。
２つの可能性が考えられる。

1. down streamがもう一度より戻ってdsDNAとなる
2. -10方向のupstreamがより戻ってdsDNAとなる＞プロモーターescape

この後者のrewindの力が、-35や-10との強固な結合を引き剥がすんじゃないか。

この場合、-10付近のヌクレオチドとRNAPの結合の強さがpromoter escapeのしやすさに影響を与える事になる。
CGペアが多い方がRNAPとの結合は弱く、rewindでより多くの力が生まれてescapeしやすい。

## Initiation時に発生するイベントを調べるAssayたち（これまで出てきたの）

1. Closed Complex Formation  
様々なDNA Binding Assayたちが使える。Gel Shift Assay, Template Association Assay, DNAse Footprintingなど。
2. Open Complex Formation  
DNA unwinding assay（この場合はKMnO4を使う、RNAPのactive siteまで入り込めるような小さな分子じゃないと使えないから）
3. UTC （Unstable Ternary Complex）から STC（Stable Ternary Complex）への遷移  
これは難しいので既存の手法ではうまく行かない＞新規のAssayへ

[[Assays]]を参照

## Initiationを調べるAssay達（新規の）

UTCからSTCへの遷移を調べたい。しかし両者の違いは良く分からないのでこれまでのassayではうまく調べられない。

そこで以下に着目する。

- UTCは8〜10 ntのRNAを合成
- STCはFull LengthのRNAを合成

そこで合成されるRNAの量と長さを測ると、両者の比率が分かる。

基本的なアイデアとしては、1 round分のIncorporation AssayをしたあとにGel Electrophoresisを行い、 「8〜10 nt 転写 : Full Lengthの転写」 の比を求める。
そのためには、1 round きっかり測りたい。
そこで使うのがheparin。

### Heparin

heparinは普通はblod clottingの抑止に使われるものだが、

heparinはPoly Sulfated Poly Sacharide。一方、DNAはPoly Phosphate Poly Sacharide。そこでheparinは塩基の無い疑似ssDNAとしての役割を果たす。

heparinがあると、RNAPホロは、Closed Complex Formationのステップが抑止される。
でも転写は邪魔しない。ひとたびOpenまで行ったらそこから先はheparinが邪魔する事は出来ず、転写が開始される。

### Heparinを使ったTemplate Challenge AssayのようなAssay

1. まずRNAPホロをDNAのプロモーターに結合させてOpen Complex Formationまで進める。（ここまではrNTP無しで行ける）
2. rNTPとHeparinを加える
    - Open Complex FormationのRNAPホロはabortive transcriptionとFull Length Transcriptionを行う
    - ひとたびFull Length Transcriptionが行われてDNAから離れると、RNAPホロとHeparinが結合し、もう一度Closed Complex Formationを形成するのを妨げる
3. 合成を行い、結果をDenaturing Gelで分離、測定  
ここでラベルはrNTPにつけるので、長さによってシグナルの違いがある事に注意。

## 次：バクテリアにおけるTranscriptionのElongation

[[バクテリアにおけるTranscriptionのElongation]]