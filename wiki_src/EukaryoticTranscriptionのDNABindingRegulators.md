前: [[EukaryoticTranscriptionTermination]]

- phosphatase ... ホスファターゼ。脱リン酸化酵素の事。

## Sequence-Specific DNA Binding Transcription Factors

タンパク質のうちどこがDNA Binding DomainでどこがActivation Domainかをどうやってmapするか？

[24ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=23)

元のタンパク質にDNA Bindingのassay(EMSAなど）を行う。
そしてタンパク質のC-末端を削っていって同じassayを続けていき、
bindingしなくなる所まで削っていく。

最初に無くなった所とbindingしていた所の差分のどこかにDNA Binding Domainがある事がわかる。

次にFullの状態からN末端を削っていってさきほどDNAと結合しなくなっていた所くらいから初めて、
どんどん削ってassayを行う事で、両者の交差でDNA Binding Domainの候補がわかる。
ただし候補の右側と左側の両方にredundantなDNA Binding Domainがあるケースが極稀にあるので、
最終的には候補の範囲だけのタンパク質を作りDNA Bindingするかどうかをassayする。

実際の例を見てみると、α-helixがmajor grooveの配列を識別するケースが多いか。

## SELEXによるDNA Binding Proteinsのターゲット配列の決定

SELEX: Systematic Evolution of Ligands by EXponential enrichment

[25ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=24)

1. 長いオリゴヌクレオチドで、真ん中にランダムの配列を持つものを合成する（最初25nt、次に15〜17ntのランダムnt、最後に25ntくらい）
2. primerをannealして、extendする（真ん中のrandomの領域も含めたdsDNAになる）
3. DNA-binding proteinと一緒に培養して結合したDNAを取り出す（EMSA gelつまりgel shift assayで取り出すのが普通だがimmunoprecipitateも使える）
4. PCRで増やす
5. ステップ4で得られたものを使って2〜4を何回か（3〜4回）繰り返し、一番affinityの高いものを残す
6. プライマーを使ってシーケンスを読む（この時sequence logoという手法を使って、良く出てくる配列を大きく表示する、AGCTは別の色にしておく）

多くのbinding siteは10bpとかそれ以下程度。ランダムの範囲を狭くすれば全通りに近いオリゴヌクレオチドを得られる確率が上がる。

[[Assays]]

## DNA Binding ProteinsのTranscription Activating Domains

ここまでBinding Domainについて見てきた。Activation Domainはどうだろう？

ターゲットのfull-lengthのactivator proteinがある。
そこに、何かしら知っている別のBinding Domainをくっつける（heterologous DNA binding domain）。例えばGal4のBInding Domainをつけるとする（DNA Binding DomainをDBDと略したりする、この場合はGal4 DBD）。
さらにDNAのbinding siteをGal4のbinding siteとなるシーケンスに置き換える。
さらにgeneをlacZ geneに置き換える（転写を観測しやすいようにか。クイズにはreporter geneと書かれていたし）。

[26ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=25)

ここからはBinding Domainを探した時と同様に、C末端から削っていってβ-galのactivityを調べていって、それが無くなる場所を特定し、
さらに（Gal4 DBDをfuseする前の）N末端を削っていって、必要な両端の範囲を調べる。
最後に両方を削ってsufficientのチェックも行う。

こうして特定したActivation Domainたちを見てみると、どういった事がわかるだろうか？
DBDと違い、Activation Domainは他のタンパク質と相互作用する、
という役割で、これは非常に一般的なタンパク質の役割となる。
だからこれといった特徴的な構造は無く、様々な構造がありえる。

DBDはターゲットがDNAという非常に限られたものであるのに対し、Activation DomainはTranscription Factorsという様々で多様なターゲットが相手だから。

lacZはortho-nitrophenyl-β-galactoside (ONPG)を黄色にする(420nmの吸光で観測)触媒となるとの事で、どれだけ転写されたかが測りやすいっぽい。

## Transcription Activating Factorsのターゲットたち

Transcription Activating Factorsは何と相互作用するか？

1. RNA Pol II/Mediator  ー＞ Close Complex Formationを助ける
Mediatorは20以上のタンパク質からなり、たくさんの相互作用しうる場所がある。
2. General Txn Factors  
通常は弱められたプロモーターで起きる（例：TFIIBがtranscription factorを動員する場合は、プロモーターにはBREが無い場合、など）  
ー＞Transcription FactorがRate limiting stepを緩和するには緩和すべきRate limiting stepがある必要がある
3. PTEFb ー＞ Paused Pol IIのリリースを助ける（PTEFbは[[EukaryoticTranscriptionのInitiationとElongation]]の「Promoter Proximal Pausing Event」も参照の事）
4. Chromatin Modifying Factors（[[HistoneModificationnによる転写制御]]も参照のこと）  
例：最初にリンカーregionに結合するタンパク質がHATを動員して30nmファイバーの構造を開いて10nmファイバーの構造にし、そしてアクセス可能になったヌクレオソームあたりの領域に次のタンパク質が結合してNucleosome Remodeling Complexを動員し、これが隣のヌクレオソームをずらす事で３つ目のbinding siteがアクセス可能になって、そこに結合したタンパク質が上記1〜3のどれかに働きかける、など


TFIIBやBREは、[16ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=15)や[[EukaryoteのDNAElements]]を参照。

## Repressiveな転写制御の例

Eukaryotic cellsの転写制御は基本的にはアクティベーションではあるが、Repressiveなものもいくつかはある。
そこでここではどういうものがあるのかをいくつか見てみる。

1. DNA binding proteinが転写に必要な要素とcompetitionを通じてブロックする
    - DNAのGTFが結合する部分に先に結合してブロック
    - DNAのActivatorが結合する部分に先に結合してブロック
    - TSSのそばでRNA Pol IIが結合するのをブロック
2. Activation Domainと相互作用してActivation Domainが機能するのを妨げる
    - ActivatorのそばのDNA配列specificに結合して、Activation Domainと頭の部分が相互作用する
3. Chromatin Modifierを動員する事でrepress
    - HDAcで脱アセチル化する事で30nmファイバー構造を回復する事でプロモーターなどが必要な場所にアクセス出来なくする


### Gal4の抑制のメカニズム

Gal4はガラクトースを消化するGalの転写のとても強いアクティベーターだが、
これはグルコースがあれば不要。ガラクトースしか無い時にだけ必要となる。
この転写の抑制の仕組みを見てみる。

グルコースがある時はGal80というタンパク質がGal4のActivation Domainに結合してブロックする事で転写が抑制されている。
galactoseがあるとGal80とGal4の相互作用を邪魔してGal4が機能するようになる。
Gal80はシーケンスspecificでは無くDNAには結合しない。単にGal4のActivation Domainととても高いアフィニティがあるだけ。

グルコースがあると、さらにMig1というDNA Binding Proteinが動員されて、
これがさらにTup1と呼ばれるタンパク質を動員し、それがさらにHDAcを動員する。
これでヒストンのアセチル化が解除されて30nmファイバー構造が再構築されてプロモーターがこの領域にアクセス不能になる。

だからグルコースではなくraffinoseで培養すると、Gal80はActivation Domainを抑制したままだが、Mig1の動員は起こらなくなるのでHDAcも動員されず、
結果として中くらいの程度で転写される。（basal promoterは機能する）

ガラクトースで培養するとGal80も外れるのでとても頻繁に転写されるようになる。

まとめると以下のようになる。

- グルコース ... Repressed State
- ガラクトース ... Activated State
- Raffinose ... Non-Repressed State

## Gene Silencingとは

特定の範囲のgeneをすべてターンオフするような制御がある。
このSilenced Regionは何Kbにも及ぶ事がある。

これはChromatinの変更で行われる。この領域内のChromatinをHeterochromatinと呼ぶ。
Heterochromatinは以下のような特徴を持つ。

- しばしばgene poor
- Telomere-ProximalとCentromere
- 繰り返しの配列
- Transpositionの 制御/抑制

## Gene Silencingのメカニズムの２つの例

telomericとmating typeのsilenceのメカニズムを見てみる。mating typeは交配型とか。
一番良く理解されているイースト菌の話をする。

なお、例その1も例その2も、ヌクレオソームにタンパク質が結合してヌクレオソーム同士をコンパクトに押し込んで転写に必要なタンパク質からのアクセスを遮断するという所は共通。

### イースト菌のmating type

イースト菌のmating typeってなんの事だ？と思い、軽くWikipediaを見る。

[出芽酵母 - Wikipedia](https://ja.wikipedia.org/wiki/%E5%87%BA%E8%8A%BD%E9%85%B5%E6%AF%8D)

a型とα型というmating typeがあるんだな。aとαそれぞれでsilenceされる領域があって、MAT(mating type locus)というのがアクティベートされて転写されてslienceされた領域との相互作用で性が決まる？

[Control of yeast cell type by the mating type locus: positive regulation of the alpha-specific STE3 gene by the MAT alpha 1 product - PubMed](https://pubmed.ncbi.nlm.nih.gov/6337727/)

ここでは細かい詳細は必要内のでこの程度の知識で先に進もう。

### Telomeric/Mating TypeのlociのSilencingの特徴

Mating Typeの領域はsilenceされるが、ここに何のgeneがあってもsilenceされる。gene Aやgene αだけでなく、その他どんなgeneを入れてもsilenceされる。
つまりプロモーターなどに依存せずにsilenceされる仕組みという事がわかった。

また、制限酵素で切る事も出来ないので制限酵素のアクセスもブロックされている、何らかの構造的なものと思われる。

### 例その1、Sirタンパク質によるTelomeric/Mating TypeのlociのSilencing

notes/MolecularBiologyResources/SirFacilitatedSilencing.pngも参照のこと。

[27ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=26)

このSilencingメカニズムには3つのSirタンパク質が関わる。(Sir 2, 3, 4）

Sir: Silent Information Regulator

1. 配列依存のDNA Binding ProteinがDNAに結合する（これがSir3とSir4を動員する）
    - Binding ProteinはTelomere領域ではRap1、Silent Mating Type LociではORC, Rap1, ABF1の３つのうち2つがあれば動員される
2. Sir3/Sir4がRap1などに結合
3. Sir2がSir3/Sir4に結合
    - このSir2がHDAc
4. Sir2が付近のヌクレオソームをDeacetylate
5. 脱アセチル化した（付近の）ヌクレオソームにSir3/Sir4が結合する
     - これが何らかの、InaccessibleなChromatin構造を作る
6. さらにこのSir3, 4はSir2を動員し、以下4から6が繰り返される（self propagation）

Sir3/Sir4は大きいタンパク質で100kDaほどのサイズ。全部結合するとヌクレオソームに400kDaほどのタンパク質がつく事になる。
ヌクレオソーム自身は80kDa程度。

### Gene Silencingのバリヤー

self propagationで広がっていくなら、それをどこかで止めるメカニズムがあるはずだ。それはどんなものか？

1. Sir2のHDAcと競合するHATsがある。SAS2と呼ばれる。
2. DOT1と呼ばれる酵素がH3K79 メチル化を行い(つまりDOT1はHMT）、これがSir3のヌクレオソームとの結合を妨げる（メカニズムは不明）
3. 強く転写される領域があるとこのSilencingが止まる（Mating Type lociのそばのtRNAなどが知られている）

tRNAはコーディング領域は80nt程度の短さなのでヌクレオソームの長さに比べると小さいのでメカニズムは謎も多い。

### 例その2、HP1によるTelomeric/Mating TypeのlociのSilencingのメカニズム

HP1: Heterochromatin Protein 1

[27ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=26)

Heterochromatinには、H3K9meが良く観測される。

HP1タンパク質はこのH3K9meに結合するchromodomainと、chromoshadowと呼ばれるドメインの２つのドメインを持つ。
chromodomainがH3K9meに結合し、chromoshadowドメインは隣のヒストンに結合したHP1のchromoshadowドメインと結合してDimer化する。
これがヌクレオソーム同士を引き寄せて30nmファイバーの形成を助ける。

また、一番端のHP1タンパク質のchromoshadowドメインはSu(var)3-9と呼ばれるタンパク質と結合し、このSu(var)3-9がさらにH3K9のメチル化を進める（つまりHMT）。
これがさらにHP1を引き寄せて、以後self propagateしていく。

Su(var) ... Suppressor of Variegation。ショウジョウバエの白と赤の斑の元となるタンパク質として発見された。

