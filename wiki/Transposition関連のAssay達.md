前: [Transpositionのメカニズム](Transpositionのメカニズム.md)

- variegate まだらにする、縞模様にする

## Sectoring Assays

とうもろこしの色やバクテリアの色などで色のセクターが出来るケースについて考える。

まず、もともと何らかの色のもととなっているgeneがある時に、
そのgeneにtransposonがinsertされると、色が完全に消えたり、またはその転写の効率が落ちて色があせたりする。
そうした個体が出来ると、その個体から分裂した個体は同じ色を示す事になる。

### Promoter Trap

Transposonに色素のgeneが入っている場合もある。
この場合、TransposonにはプロモーターやTSSなどがないから、このgeneは転写されない。

このTransposonがアクティブなホストのプロモーターの先の付近に挿入されると、転写が起こり、
この色素が発現する。このケースをPromoter Trapと呼んだりする。（これを調べるAssayをPromoter Trap Assayと呼んだりする）

この場合、Transposonが起こっても挿入される場所がアクティブなプロモーターのそばじゃなかったり向きが反対だったりすると色素は発現しないので、
観測される色はtranspositionが実際に起きる頻度よりはだいぶ少ない。

## Mating-Out Assay

またの名をConjugation Assay。
これはバクテリアで有効なAssay。

バクテリアは他のバクテリアに移動しやすいplasmidを持つ。

バクテリアに以下の３つの構成要素があるケースを考える

- chromosome
- transposonを含むdonor plasmid
- F (conjugal) plasmid (最初の時点ではtransposonを含まず、他のバクテリアに移動する機能を持つplasmid）

そして、donar plasmidのtransposable elementにtetracycline耐性のgeneを、donor plasmidの他の領域にkanamycin耐性を持つようなgeneがあるとする。F plasmidにはampicillinの耐性のgeneがあるとする。

[33ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=32)

そしてこれらの耐性を一つも持たないrecipient cellsとmatingしてみて、何が移るかを調べるのがMating-Out Assay。

耐性はResistanceを持つかSensitiveかと表現する。

- amp R, tet S, kan S ... F plasmidが単に移動しただけで、transpositionは起こってない
- amp R, tet R, kan S ... F plasmidにtransposonがtranspositionしてそのF plasmidが移動した。donar plasmidはついてきてない。
- amp R, tet R, kan R ... Transpositionの結果donar plasmidとF plasmidが融合して、それが移動したと考えられる。replicative transpositionなど。


## Sleeping Beauty

Eukaryotic cellで同じような実験を考える。

inverted repeatsとTSSと耐性geneを持つDNA片を用意する。
次にtransposaseのgeneとTSSを持つDNA片を用意する。
この２つを加えて、細胞が増えるかどうかを調べる。

| inverted repeatsとTSSと耐性gene | TSSとtransposaseのgene | 薬剤下で細胞が増えるか |
| ---- | ---- | ---- |
| No | No | 少しだけ |
| Yes | No | 少しだけ |
| Yes | Yes | 100倍から1000倍の増え方 |

さて、いろいろな生物種のゲノムを解析すると、人間は50%以上がtransposon-likeなゲノムだという話をした。
これは現在Transposonなのでは無いが、かつてアクティブなTransposonだった事がある痕跡と思われる。

これらの配列を調べて、先程の実験と同じように必要な要素を考えて元となるtransposonを予想して復元する、
という実験も行われている。
これはSleeping Beauty Experimentと呼ばれている。

## Genomic Southern Blot

transpositionを直接ゲノムを調べる方法を考えてみる。

移動前のTransposonが一つある細胞が成長して分裂し、その先でTranspositionするケースを考える。
Transpositionが元の場所はそのままに移動するタイプだとして、分裂後に移動するケースを考えるなら、
移動元となるTransposonは同じ場所にあるが、
移動先は異なる場所になると考えられる。

これら２つの細胞を別々に培養すると、それぞれの株が出来る。
それらの株を制限酵素で中くらいのサイズに切断してgelで電気泳動する事を考えるが、
単に電気泳動しても大量のDNA片が移動するだけで大した情報は得られない。

そこでgelのDNAをsolid supportの上、典型的にはnitrocellulose membraneの上にTransferする（どうするのか具体的には良くわからないが）。つまりこのmembraneの上に移動する。
このmembrane上で何らかのDNA probeで検出する事を考える。

DNA probeとしては放射線ラベルとかfluorescentラベルとかをDNAとhybridizeして検出する。

このprobeがもしtransposable elementでない所の場合は、このprobeの結果のバンドはどの株でも同じ場所になる。

けれどもしこのprobeをTransposable Elementの配列の所にすると、株によってバンドの位置が変わる。
それぞれの株でバンドが2つ出来て、一つはどの株でも同じ位置に出来る。これは移動前のtransposonの位置と思われる。
株によって違うバンドの方は移動した先の配列と思われる。

これらの違うバンドがそれぞれどこかを調べると、Transposable Elementがどこに移動したのかを調べる事が出来る。

## Inside-Out PCR

transposonの配列を知っているとする。
DNAをtransposonを切断しないような制限酵素で切断していく。
そして薄めた状態でligateすると、円環になる。（薄めていないと他のDNA片とligateしてしまったりするので薄める）

この円環に対して、円環の外側と内側でtransposonの両端近くの配列とhybridizeして、
transposonの外側に向かってextendするように設計したprimerを加えて、
transposonの外側に向かって円環の内側と外側でそれぞれextendする（1周して反対側のtransposonの領域にある程度入るまでextendする）

こうして出来た二本のDNA片を使ってPCRを行う事が出来て、こうしてPCRを行ってシーケンシングすれば、
もともとのtransposonがどのgeneの中に入っているか、その周辺の配列を知る事が出来る。