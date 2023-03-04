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

RBS ... Ribosome Binding Site。配列としてはGGAGG。スタートcodonの3〜9nt upstream側（5'側）にある。

リボソームの構成要素（Small Ribosome Subunitの一部）である16S rRNAはCCUCCという領域を持っていて、これがRBSとペアリングする。
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