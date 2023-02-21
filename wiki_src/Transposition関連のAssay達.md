前: [[Transpositionのメカニズム]]

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