これまではRNAの転写までを見てきたので、ここからはRNAからタンパク質へのTranslationを見ていく。

RNAからタンパク質合成の触媒となるところの多くはRNAで出来ている。生物の起源はRNAだったのでは無いかと思われている。

## 主な登場人物

- mRNA
- tRNA
- aminoacyl tRNA synthetase ... これがアミノ酸とtRNAをつなげる
- ribosome


## mRNAのreading

ORF (Open Reading Frame)は良く出てくる言葉だが定義はなんだろう？
AUGのスタートCodonから、ストップCodonまでの、ストップCodonを含まない範囲、という感じか。

ほとんどの生物でstart codonはAUGだが、たまに例外もある。だが例外でも、最初のコドンに対応したアミノ酸がMethionineなのは変わりない。

### バクテリアのmRNA

[1ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=0)

Eukaryoteと違って、一つのmRNAが複数のタンパク質をエンコードする場合がある。
mRNAが複数のタンパク質をエンコードすることをpolycistronicと呼ぶ。
cistronは歴史的な経緯でかつてORFのような領域とみなされていたところ。

ウィルスなどにごく一部例外もあるが、基本的にはpolycstronicでもORFがオーバーラップすることは無い。

また、一つのmRNAが関連する複数のタンパク質をエンコードしている場合、これをoperonと呼ぶこともある。

### Ribosome Binding Site（RBS）

配列としてはGGAGG。スタートcodonの3〜9nt upstream側（5'側）にある。

リボソームのSmall Subunitの一部である16S rRNAはCCUCCという領域を持っていて、これがRBSとペアリングする。
これにより、Small Ribosome Subunitが動員される。

### PolycistronicのNo Polar Effectと、Polar Effectがあるケース

polycistronic なケースでRBSが複数ある場合、Ribosomeが結合する順番は任意。前のRBSが結合しないと次が結合出来ないということは無い（この性質をno polar effectと呼ぶ）。

ただし、以下のようなケースではPolar Effectが見られる。
それは、翻訳したRibosomeが、terminationの後にすぐ次の翻訳を開始するようなケース。
これが起こるのは以下のような配列の時。

```
5' - AUGA - 3'
```

UGAが最初のORFのストップCodonとして解釈されて、その後に一つ塩基を戻って次のORFのスタートCodonと解釈して再翻訳が始まる。
（ノートの[1ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=0)も参照のこと）。

このケースの場合はORF1の前にしかRBSが無いので、ORF1を翻訳してからじゃないとORF2は翻訳されない。
つまりPolar Effectがある。

### lac operonの例

有名な研究であるlac operonの例に軽く触れておく。
バクテリアのラクトースの消費についての制御の研究。

一つのoperonが以下の3つのタンパク質をエンコードしている。

- β-galactosidase ... ラクトースと反応して変化させる
- β-galactoside permease ... ラクトースを細胞の中に取り込む
- β-galactoside transacetylase

これら３つはlactoseの代謝に必要だが、必要な時は３つ全部必要だし、不要な時はすべて不要なので、
一つのmRNAの制御でこの３つを同時に制御するのが合理的。

## Eukaryotic mRNA

ほぼmonocistronic。数少ない例外は小さなタンパク質でregulationにしか使わないような物。

RBSは無いが、Kozak Sequenceと呼ばれる、リボソームが好む配列はあって、それはAUGの3nt アップストリームにGかAが、AUG直後にGがある配列。けれどKozak Sequenceが無いケースもたくさんあるので、これは好まれる傾向がある、程度の話。

### 5' capping

RBSは無いが、代わりに5'末端の特別なmodificationがリボソームを動員する。5' capと呼ばれる。

[1ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=0)

GTPが5'末端に特別な形で結合する。
どう特別か？

- 5'同士の結合
- 間がP一つじゃなくてP３つ

これらの修飾はRNAポリメラーゼのexit channelを出たところで行われるのだった。

5' cappingはRNAを安定化させるし、Initiation Machineryが5' capに結合することでInitiationが始まる。

バクテリアではRBSがリボソームがどこから翻訳を開始するかを教えるのに対し、Eukaryoteでは5' capに結合したあとにそこからdownstreamをAUGが出てくるまでスキャンすることで翻訳開始位置を調べる。
あまりにも近すぎる例外的なケースを除いて、5' capの一番近いAUGが開始コドンとなる。

## tRNA

[2ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=1)

- 70〜90 bases
- 塩基はmodificationを受けているものが多い
   - Psi U loopのPsi Uはpseudouridine
   - D loopはdihydrouridine

### conservedな項目

- 3'末端にCCAがある（一部の生物ではtranscriptionでは無くpost transcriptionの反応として付加されるものもある）
- conservedな塩基が幾つかある
    - Psi U loopに7つ
    - D loopに4つ
    - anticodon loopに1つ
- Psi U loop, D loop, acceptor armの3つのarmのbpの数

保存されている要素は、アミノ酸を持ってきてタンパク質を合成していく、という基本的な機能に関わる部分に多い。
リボソームと結合したりリボソームにtRNAを渡すaccessory factorと相互作用したり。

### 異なる項目

- anticodon
- variable loopのサイズ
   - Class I: 3-5 bases
   - Class II: 13-21 bases
- discriminator base (3'末端のCCAの一つ手前のbase）

異なる項目は、異なるアミノ酸を付加していく為に必要な区別となっている。

異なるアミノ酸を持ってくるのはaminoacyl-tRNA synthetaseという酵素の役割。（略称：aa-tRNA synthetase）

### レイアウト

クローバーリーフの形は見やすいので良く使われるが、実際はL字型に折りたたまれた形状をしている（[ノートの2ページ目](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=1)参照）

そして二本の線が並んでいる範囲は、dsDNAに類似した2重螺旋を形成している。

また、anticodonの場所とアミノ酸が結合する場所が正反対に配置されていることにも注目。この両者は遠く離れている。

anticodonの側は（たぶんリボソームの）small subunitと言われるところと相互作用し、acceptor stemの方はlarge subunitと呼ばれるところと相互作用する。

つまりtRNAはリボソームのmRNAと相互作用する場所から、タンパク質を合成する場所をつなげているとも見れる。

## Wobble Base Pair

コドンチャートを見ていると、最初の２つでアミノ酸が決まるケースがあったり、決まらなくても絞れたりするケースが多い。
tRNAはそれに対応してアミノ酸の数+α程度の種類で済ますことが出来る。

どういった仕組みか？

[2ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=1)

最初の2つのペアは通常のワトソン-クリック型のベースペア（Watson-Crick base pair）を形成するが、
３つ目はWobble Base Pairというよりゆるいペアリングをする。

anticodonがC, Aの時は通常のG, Uとペアリング。
Uの時はプリンと、Gの時はピリミジンと。
そしてanticodonはinosineのこともあり、inosineの場合はA/C/Uのすべてにマッチングする。

AとCを単独で認識出来るanticodonは無い。AとGを区別する必要があるのは、コドンチャートを眺めるとIsoleucineとTryptophanの２つのみ。
Isoleucineはinosineで３つとも識別すれば良い。
Tryptophanはもう一つがStop codonとなるので、tRNAとは別の仕組みで識別することになる。

### Inosineはどこからくるか？

InosineはTranscriptionの時のヌクレオチドには入ってない。どこからくるのか？

adenosine deaminasesと呼ばれる酵素群があり、これの仕業。
これがadenosineをinosineにする。

tRNAとmRNAに対してこのような作用をする酵素群が存在し、tRNAに対するdeaminaseはADATと、mRNAに対するdeaminaseをADARと呼ぶ（Adenosine DeAminase for "t"RNAと、Adenosine DeAminase for "m"RNAの略）。

## Translationを成立させるSpecificity

Translationはコドンに対応したアミノ酸を付加することで行われるわけだが、これはどのような性質のSpecificityで実現されているかを調べる実験を幾つか見ていく。

### tRNAに付加しているアミノ酸を変更する

CysをチャージしたtRNAがあるとする。
Cysは側鎖のCH2SHのSを取ることで、CH3のAlaに変化させることが容易にできる。
これを用いてTranslationに関わるSpecificityについて調べる。

すると、Cysのcodonに対してAlaが付加されてポリペプチドが形成されることが確認できる。

大きく違うアミノ酸の場合はリボソームの所で区別する仕組みがあることを後に見ていくが、
付加されているアミノ酸が少し変わる変更に関してはそのまま合成されてしまう。

### tRNAのアンチコドンを変異させる

ValをチャージするtRNAのアンチコドンはCAAでGUUにマッチングする。
このCAAをCUAに変異させるとGAUにマッチングするようになる。これはAspのコドン。

すると、Aspの入るべき所にValが入ってしまう。
つまりアンチコドンを変更すると対応するコドンが変わってそのまま合成されてしまう。

### Specificityについてのまとめ

対応するコドンのtRNAにチャージされたアミノ酸はそのまま合成されてしまい、あるtRNAがどういうアンチコドンかとかどういうアミノ酸をチャージしているかとかはあまり気にせず合成されてしまう。

だからtRNAに正しいアンチコドンがあり、それに正しいアミノ酸がチャージされている事がタンパク質合成のfidelityを担保していると考えられる。

## Aminoacyl-tRNA Synthetases （aa tRNA Synthetases）

4つのドメインを持ち、二つの反応を触媒する。

- 反応1 ... amino acid adenylation
- 反応2 ... tRNAのCharging

### アミノ酸 adenylation

アミノ酸とATPを化合して、AMPとの化合物とPPi（pyrophosphate）を生成する。

[3ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=2)

PPiは他の反応と同様pyrophosphataseが分解する。

これがペプチド結合のためのエネルギーをATPの加水分解のエネルギーと橋渡しする。

### tRNAのCharging

acceptor stemがnucleophilicなアタックでAMPを蹴り出してアミノ酸と結合する反応。
アミノ酸と結合しているtRNAはcharged tRNAと呼ばれる。

acceptor stemに結合するときにも、高エネルギーの結合はそのまま保持される。

### 4つのドメインと3つのActive Sites

- 1つのドメインはAcceptor Stemと結合
   - この中にAmino Acid Coupling Active Siteがある
- 1つのドメインはanticodonと結合（最初のbaseだけ識別される）
- 1つのドメインはATPとアミノ酸と結合
     - この中にAdenylation active siteがある
- 1つのドメインはAmino Acid Hydrolysis Domain ... これがアミノ酸AdenylationかtRNA ChargingのどちらかをProofreadする（どちらを確認するかはaa-tRNA Synthetaseごとに異なる）

なお、一つのbaseの他にdiscriminator baseなども識別に使われる。

### aa-tRNA Synthetaseの種類

aa-tRNA Synthetaseはアミノ酸の種類一つにつき一種類が存在する。
一つのアミノ酸に複数のtRNAが対応する場合があるが、その場合でもaa-tRNA Synthetaseは一種類で、
この一つで全ての対応するtRNAを面倒みる。

### Proofreading

aa-tRNA Synthetaseが正しいアミノ酸をチャージしている事をどのように保証しているか？proofreadingの仕組みでこれを保証している。

aa-tRNA Synthetaseのproofreadingは似たアミノ酸同士を見分ける機能な事が多い。

例えばtyrosineとphenylalanineはOH基しか違いがない。
だからtyrosineのtyrosyl-tRNA synthetaseはphenylalanineかどうかを見分ける仕組みがある。

aa-tRNA Syntehtaseのproofreadingには二つの仕組みがある。

- Chemical/Enzymatic Proofreading  
Editing Active Siteが化学的に望まないアミノ酸をcleaveする
- Kinetic Proofreading  
正しいアミノ酸とtRNAのペアの時は、Active Siteに正しい場所に配置されて、AMPが付加されたりtRNAにチャージングされたりが早く起こる。だから正しい組み合わせの生産物の方が多くなる。

### Chemical/Enzymatic Proofreading

tyrosineはediting active siteでOH基とsteric clashが起こってediting active siteとマッチしない。
一方phenylalanineはマッチする。
このようにediting active siteは望まないアミノ酸を排除するためにマッチする。

さらにsynthesis active site（AMPを付加する所のActive Site）ではtyrosineとマッチングする。

このフィルタリング的なediting active siteと合成の実際のactive siteのspecificityの二段階で、正しいアミノ酸が反応する事を保証する。

## バクテリアのリボソームの構造概要

- sedimentation 沈殿、沈降

リボソームは巨大なタンパク質で、E. coliの場合、2.5MDaくらいの規模でRNAポリメラーゼの5倍以上の大きさ。

リボソーム全体は70Sとも言われる。
SはSvedbergで遠心分離を発明した人。
沈殿でサイズを推定した時にSを単位として70Sだった。
bacterial ribosomeの上部だけだと50S、下部だけだと30S。
（足し合わせても70にはならない）

リボソームはRNAとタンパク質からなり、タンパク質は一般に小さく、10〜20 kDa程度のもの。
RNAは長いものもあり、23S rRNAがほぼ3k base、16S rRNAが1.5k baseほど。

リボソーム全体に占める割合としては、RNAとタンパク質は、ほぼ50% 50%。だからribonucleoproteinと呼ばれることも。

リボソームは二つのサブユニットから構成されて、Largeのサブユニットが50S、Smallのサブユニットが30S。

タンパク質はRNAを立体構造に保つのが主な役割で、触媒としての反応には関わっていない。
触媒の機能はrRNA（とtRNA）がになっている。

だからribozymeと呼ばれる事もある。

### 二つのチャンネル

- mRNA-tRNA チャンネル
- peptide exit channel  
α-helixだけはこのチャンネルの中で形成されるが、それ以外のfoldingは出た後に行われる

### リボソームの構造のうち重要な機能を担っている2つの部分

リボソームには3つのtRNAと結合する場所がある。
それぞれ以下のように名前がついている

- A site ... aminoacyl tRNAの、chargedされたものが結合する
- P site ... peptidyl tRNAと結合。アミノ酸からペプチドを合成していく時、ペプチドはtRNAとくっついたまま合成されていく
- E site ... 合成が終わった後にしばらく留まる場所。expended, exit, exitingのどれかの意味か。ここにあるtRNAはアミノ酸ともペプチドとも結合していない。

[4ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=3)

mRNAはAとPの間の所で曲げられていて、どこがAに対応するコドン（3つのbase）かが分かりやすくなっている。

また、PとAのtRNAのacceptor側の終端はお互いに近接している。ここでペプチドの合成が行われる（上記ノート参照）。
この辺りがpeptidyl transferase centerと呼ばれ、こちらはlarge subunit内となる。（これが一つ目の重要な部分）

さらに、Eのacceptor endはこれら二つとはかなり離れた場所に配置されるので、間違って再結合してしまわないようになっている。

アンチコドンの側はdecoding centerと呼ばれ、small subunit側に存在する。（これが二つ目の部分）

## Eukaryoteとの簡単な比較

リボソームはかなりconservedで、触媒の機能となる領域はほとんど同じ。
外側に違いがあるくらい。

追加されている項目は主にregulationやinitiation周辺の機能を提供する。

### バクテリアのリボソーム

- 全体は70S（2.5MDa）
   - large subunitは50S (1.6MDa）
       - rRNA 5S は120nt
       - rRNA 23Sは2900nt
       - タンパク質は34個以下
   - small subunitは30S (0.9MDa）
       - rRNA 16Sは1540nt
       - タンパク質は21個

### Eukaryoteのリボソーム

- 全体は80S（4.2MDa）
   - large subunitは60S (2.8MDa）
       - rRNA 5Sは120nt
       - rRNA 28S は4700nt
       - rRNA 5.8Sは160ntで、これはバクテリアには無いもの
       - タンパク質は49個
   - small subunitは40S（1.4MDa）
       - rRNA 18Sは1900nt
       - タンパク質は33個以下
