前: [バクテリアにおけるTranscriptionのInitiation](バクテリアにおけるTranscriptionのInitiation.md)

## Elongation入門

- シグマは通常、elongationが始まった少しあとにreleaseされる
   - シグマはElongationでは使われない
   - シグマが離れるメカニズム（は良くわかってないが）
       - シグマ4ドメインはプロモーターと強い相互作用をなす
       - シグマ3, 4ドメインはRNA exit channelをふさいでいるので押し出されそう
       - だが、elongationが始まっても最初の200ntくらいまではシグマがRNAPにくっついている事が知られている

### Elongation時のRNAPの活動

[8ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=7)

ElongationでRNAPは以下の活動を行っている。

1. RNAの合成
2. DNAヘリカーゼ
3. RNAヘリカーゼ（DNAとRNAのくっついている所を剥がして進めていく）
4. DNA rewindase（本当にそういう作用があるかは議論がる）

## Transcriptionの2つのProofreading

DNAポリメラーゼの、`10^7`回に一回という驚異的な精度に比べると、
RNAポリメラーゼはそこまででも無い。
それでも`10^4`回に一回程度のエラーではあって、それを実現するProofreadingの仕組みがある。

間違ったペアの時には3' OHの場所が最適にならないので、合成が遅くなる。
その時にどうやって修正するか？

どちらの方法も、間違ったペアが加えられた直後や1〜2個のntが加えられたくらいまでしか機能しない。

1. Pyrophosphorolytic Editing
2. Hydrolytic Editing

### Pyrophospholytic Editing

Pyrohpsphate は2リン酸。（PPi）

ヌクレオチドがつなげられるとpyrophosphateが放出される。
DNAポリメラーゼではこれはすぐに分解されてしまうが、
RNAポリメラーゼではrNTPチャンネルの内部にとどまっている間は分解されない。
外に放出されて初めてpyrophosphataseに分解される。

だからしばらくpyrophosphateとの間で逆反応が起こるwindow timeがある。
このため、合成がゆっくりになると逆反応でヌクレオチドが切断されて、元に戻る事がある。
これがpyrophosphorolytic editing.

### Hydrolytic Editing

誤ったペアが合成されると、少し戻して、rNTPチャンネル側に合成されたてのRNAをはみ出させる。（Reverse Translocate）

すると、rNTPチャンネルからenzymeがやってきて、このハミ出ている部分を加水分解する、という仕組みがある。
これをHydrolytic Editingと呼ぶ。

このenzymeはE. coliだとGreB。EukaryoticではTF II Sと呼ばれている。

普段はこの酵素が結合していなくて、stallするとなんらかの仕組みでやってきて結合するっぽい（よくわかっていない）。
このGreBなどは普通合成されるRNAの端は届かなくて、Reverse Translocateしてきた時だけ届く位置にactive siteが配置される模様。

DNAの[MismatchRepairのメカニズム](MismatchRepairのメカニズム.md)との比較で行くと、加水分解するのは同じだが、
DNAの方は同じタンパク質内にexonucleaseがあるが、transcriptionでは別のenzymeが存在する。

## Intrinsic Termination

バクテリアには、TranscriptionのTerminationのメカニズムが２つある。
一つがIntrinsic Termination。もうひとつはRho-Dependent Termination。

普通はIntrinsic Terminationで、Rho-Dependent Terminationはレア。

Intrinsic Terminationには以下の２つが必要。

- RNAにGCリッチなヘアピンが形成されている必要がある
- ヘアピンの3'側から7-9nt程度の場所に、Uリッチな領域が必要

RNA exitチャンネルにヘアピンが詰まって、そこでDNAとペアになっているのがU-richな領域だと、テンプレートから分離出来る。

[9ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=8)

RNAがテンプレートから分離されると、すみやかにdsDNAが形成されて、transcriptionはすぐに終了する。
RNAポリメラーゼとDNAの強い結合は、unwindされていて初めて実現されるものなので、
dsDNAになるとこの結合はもはや見られなくなり、RNAポリメラーゼはリリースされる。

## Rho-Dependent Termination

Rho 5'ー＞3' RNAヘリカーゼを別途必要とする仕組み。

Rhoは40nt程度のCリッチな配列を識別して結合する。
この領域をRho utilization sitesとかRut sitesと呼ぶ。
だいたい60%〜70%くらいの比率でCがあるとRut sitesとして機能するらしい。

RhoはRNAポリメラーゼから出たあとのRNAにだけ結合する。

Rhoはひとたび結合すると、3'に向かってtranslocateしていき、RNAをActive siteから引き出す。

以後はdsDNAが形成されてintrinsic terminateと同じようにRNAポリメラーゼがリリースされる。

Rho-Dependent Terminationの方がレアで、しかもいつtemrinateするかにラグがある（ヘリカーゼが認識して結合して引き出し終わるまでの時間が影響するから）。