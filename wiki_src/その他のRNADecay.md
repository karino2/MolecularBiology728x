これまで通常のmRNAのケースは以下で見てきた。

- [[バクテリアのmRNADecay]]
- [[EukaryoteのmRNADecay]]

ここではその他の特殊だったり雑多なケースをいろいろ見ていく。

## stableなRNAのdecay

（これは前のUnitの最後だったが、おさまり的にこちらの方がいいと思うのでこちらに入れた）

これまではmRNAを見てきたが、次にrRNAとtRNAについても簡単に見ていく。
rRNAやtRNAはとてもstableで長生きな事が知られている。

クイズによるとバクテリアも似たような仕組みっぽい？

### リボソームの寿命を調べる実験

通常のリボソームの18Sと、それを変異させた1492 mutant 18Sを比較する。

18SがtRNAとbase pairする時のminor grooveと水素結合するのがこの1492と1493のAらしいので、
1492を変異させるとこの18Sを含んだリボソームはリボソームとして機能しなくなる。

両者をラベルづけして時間とともにnorthern blotすると、wile typeでは4.5時間程度のtime pointでは全く変化が無い。（半減期は計測不能）

一方で変異させた18Sだと随分と薄くなる。（半減期は96 min）

つまり、リボソームとして機能しているか機能していないかでdegradeされるかどうかが決まっている模様。

### 核（および核小体）でのrRNAのdegradation

核（nucleus）には仁とか核小体とか言われる部分（nucleolus）があり、ここでリボソームの組み立てが行われている。
これはrRNAをエンコードしているDNAのそばに配置されて、このDNAは幾つものコピーが比較的狭い領域に集まっている。

このrRNAをリボソームに組み立てるところで機能しているかが判別されて、機能してない時はdegradeされている模様。

核小体の中でリボソームを組み立てる時に、misfoldedだったり機能してなかったりした場合はcytoplasmに放出される前にdegradeされる。
TRAMPと呼ばれるタンパク質複合体の中にpoly-A polymeraseがあり、これが3'末端にpoly-A tailを付加してRNA exosomeがdegradeするようになる。

だが、このチェックをすり抜けるとcytosplasmに放出されてしまう。上記の18Sの変異のようにすごく小さいものだと核小体の中では判明せずに細胞質に放出されてしまう。

### 細胞質でのrRNAのdegradation

cytoplasmに放出されてしまった機能しないrRNAをdegradeするメカニズムがある。

1. ribosomal proteinのubiquitinylationと、その後のproteasomeによる分解が起きる
2. foldしていたproteinが無くなる結果、rRNAがunfoldされる
3. unfoldされるとどうにかしてRNA exosomeにdegradeされる（何がタグになっているかは良くわかってない）

### tRNAのDecay

tRNAもTRAMP complexが関わる。
TRAMP complexの中のTrf4と呼ばれるタンパク質が、tRNAが「正しくmodifyされていない」と判定すると、polyadenylationする。（Aをたくさんくっつける）

するとexosomeが分解する。

正しいmodifyとはpseudouridinylationとかdihydroxy unidinylationとかのtRNAに必要なmodificationの事。

## Ribosomeを検出器として使う例

翻訳と転写が絡み合って制御が行われる例がある。ここではそうした例のうち、Ribosomeを検出器として使うような例を見ていく。

これまでも、[[バクテリアにおけるTranslationのRegulation]]でoperonの後ろのsecondary structureをリボソームが解除する例や、
[[EukaryoticTranslationalRegulation]]のGCN4の例などで、AAがどれだけ豊富にあるかを検出するケースを見た。

ここではtranscriptional attenuationと呼ばれるケースを見る。これはバクテリアだけで見られる現象。

これはtranslationを使ってtranscriptionのterminationをinhibitする仕組み。attenuatorは減衰器、という意味らしい。

## Trp attenuatorの例

一番良く知られているattenuatorにTrp attenuatorがある。Trpはトリプトファンの事か。

- Trpが多い時はTrp biosynthesisを減らしたい
- Trpが少ない時はTrp biosynthesisを増やしたい

biosynthesisの増減は、転写の増減でコントロールされる。
そこでTrpが多い時は転写を減らし、Trpが少ない時は転写を増やしたい。

バクテリアの転写のterminationは、生成されるRNAがGCリッチなヘアピンを形成し、その後にUリッチな領域があるとRNAポリメラーゼが離れるのだった。＞[[バクテリアにおけるTranscriptionのElongation]]

Trp attenuatorはトリプトファンのレベルによってこの転写がterminateしたりしなかったりする事で、その後のgeneが転写されるかどうかを制御する。

まずtrp operonの前にleaderと呼ばれる領域がある。

[35ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=34)

leaderには1, 2, 3, 4とヘアピンを構成する事が可能な領域があって、それぞれハイブリダイズし得る。
そして1とまたがるようにuORFがある。

uORFについては[[EukaryoticTranslationalRegulation]]のGCN4の例を参照。ただし今回はバクテリアのケースなのでEukaryoteと違ってre-initiationの問題は無いからuORFがあるだけなら、その後ろを翻訳する事は特に問題が無い。

このuORFの中に2つのTrpのコドンがあり、トリプトファンが多いとすぐにTrpがチャージされたtRNAが来るので翻訳が進み、
Trpが少ないとここで翻訳が止まる。

そしてヘアピンの形成として、3, 4がヘアピンになるケースとならないケースがある。（図のBとCは3, 4がヘアピンになるケース）

この3, 4のヘアピンが「転写の」terminationの条件になっている、というのがポイント。
つまり、3, 4のヘアピンはCG-richで、4の後にはU-richな領域が続いている。

転写をしている途中で翻訳がすぐに開始すると（バクテリアは核とか無いのですぐに翻訳が開始される事に注意）、
Trpの豊富さによってこの形状が変わる事で、terminationの条件を満たしてしまってtrpオペロンまで進まずに転写が終わるか、
それともTerminationの条件を満たさずに（ケースA）、転写が続くかが決まる。

### Trpが少ないケース

最初から転写されていく事を考える。
1が出てきた段階でuORFの翻訳が開始されて、Trpが少なければ1のあたりでリボソームがストールする事になる。

この状態で2が出てきてもリボソームが邪魔してヘアピンが出来ず、次の3が出てきた時に2と3がハイブリダイズしてヘアピンを形成し、
ケースAとなる。
そうすると転写の方のterminationの条件を満たさないためそのまま転写が進み、trpオペロンの転写が行われる。

### Trpが豊富なケース

1が出てきた段階でuORFの翻訳が開始されるが、TrpのチャージしたtRNAが多ければ、ストールせずにそのまま翻訳が進み、2のあたりまで進んでストールする。
なので2もハイブリダイズ出来ない。

すると3が出てきた時には2はハイブリダイズ対象になれず、その次の4が出てきた時にハイブリダイズする。つまりケースBになる。

これは「転写」のtermination条件を満たすので、trpオペロンまで行かずに転写が終了する。

つまりTrpが多いとtrpオペロンは転写されない、という事になる。

### リボソームが翻訳を開始するのを保証するメカニズム

このメカニズムは転写の途中で翻訳が始まっていないと機能しない。（ケースCになるのでterminateされてしまう）

実際、cyclohexamideがあるところでこの実験をやるとこの状態になって全くtrpオペロンが転写されない。

これを防ぐために、どうも図中のリージョン2に、RNA Polのポーズサイトがあって、そこでRNA Polが止まるっぽい。
そして翻訳が進む事でRNAをひっぱる事でRNAの転写が進む、みたいな事が置きている模様（ただし良く化学的なメカニズムはわかってない）。

## 翻訳によるmRNAサーベイランス

翻訳に関わるメカニズムで、mRNAの異常を検知してdegradeする仕組みがある。

| mRNAサーベイランスのメカニズム | 検出されるmRNAの欠陥 |
| ---- | ---- |
| nonsense-mediated decay (NMD) | premature termination codon(PTC) |
| nonstop decay(NSD) | termination codonの不在 |
| no-go decay(NGD) | リボソームのストール |

NMDが一番良く理解されている。NSDとNGDの区別は当初思っていたほどはっきりしたものでは無さそうという事がわかってきている。

翻訳により欠陥が検出されると以下の事が起こる。

1. 翻訳によりmRNAの欠陥が検出される
2. mRNAのdecayを起こす
3. リボソームをリサイクルする
4. 生成されているペプチドをリリースするかdegradeする

## Nonsense-Mediated Decay

まずは一番良く理解されているNonsense-Mediated Decayから。略称NMD。

### Nonsense-Mediated Decayの発見の歴史

最初に発見された現象は、beta thalassemiaという遺伝病の研究をしている時だった。
βグロビンが無いという病気。

遺伝子に変異があると、βグロビンのタンパク質が生成されないのは当然として、なぜかmRNAまで生成されなくなる、という事を発見した。
point mutationな事は突き止めたので、なぜpoint mutationがmRNA自体をなくしてしまうのかは謎だった。（70年代）

そのあとゲノムのシーケンスが出来るようになって、wild typeがCAGのところで、UAGやUAAになる変異の時にはmRNAレベルが大きく下がるという事を発見した。（80年代）
なお、GAGへの変異ではそうした事は起こらない。

つまりwile typeとは違うところにstop codonが生まれるとmRNAレベルが下がる模様。

次に判明したのは、これは翻訳に依存している、という事。
cyclohexamideを入れると、premature termination codon(PTC)が含まれている変異でもmRNAレベルは通常通りになる、という事が見つかる。（90年代）

その後に判明したのは、PTCがintronとの相対的な位置関係に意味がある、という事。
多くのケースで最後のintronは3' UTR側には無くて、最後はexonで終わっていて、この最後のexonのどこかにストップコドンがある（coding regionが最後のexonに掛かる）。
PTCは最後のintronより手前にあるかどうかで判定されているようだ、と判明。（90年代）

さらに最後のintronをカットすると、PTCがmature mRNAの中では同じ位置になってもmRNAが安定するようになる。
さらにPTCがintronのexon側の端（splice junction）の55 ntよりexonに近いとNMDは起こらない事も発見される。

真核生物なので、splicingは核の中で起こるのに翻訳は細胞質で起こる。つまり、、、どういう事なのだろう？となった。

そしてexon junction complex（EJC）というタンパク質（RNP）が発見される。これらはsplicingの時に使われて、
終わった後にexon junctionに残ったままになる。

これの発見の実験は正直良く分からなかったが、説明を書いておく。

まずpremature mRNAのintronのupstream側 splice junctionにphotoreactive crosslinkerを、downstream側のsplice junctionにradioactive PO4をつける。
そしてintronが無いexon1-exon2の配列のmRNAにも同じように両者をつける。

これらを入れたcell extractにsplicingを許したりしてSDS PAGEでタンパク質を測ると、spliceしたmRNAだけはタンパク質が複数見つかり、
spliceしてないpremature mRNAやexon1-exon2配列を直接作ったものにはタンパク質はついていなかった。

直接作ったものにbindしないのだから配列依存で結合するタンパク質という訳では無さそう。

そのあといろいろな実験で、exon-exon junctionの25nt upstreamにこれらのタンパク質が結合している事がわかった。

クイズで、exon1, 2, 3があった時に、exon1のjunctionから55nt以内にPTCがあってもNMDされないらしい。exon2-exon3の間のEJCは残るのでは？

以上から、EJCは翻訳されるとmRNAから取り除かれるので、これの有無で判定されているのでは、と予想される。

次にイースト菌のgenetic screeningでUPF1, UPF2, UPF3と呼ばれるタンパク質が発見された。
これはhistidine合成のgeneにPTCを追加したりして実験された。

suppressor tRNAを追加して実験を行った。
suppressor tRNAはストップコドンとマッチしてなにかのアミノ酸を運ぶtRNA。

以上を使って、以下のような設定を作った

- 通常の状態ではNMDが起きてhistidineの無い環境では生きれない
- NMDをなくせば、histidineの無い環境でも生きられる

この結果、NMDのためにはUPF1, UPF2, UPF3が必要だという事を突き止めた。

そのあと、C. elegans（線虫）ではSMG1〜SMG9というタンパク質が同じような役割をしていると突き止めた。
さらに研究が進み、SMG2〜4がUPF1〜3に対応している事が判明。

さらに、このUPF1〜3はいろんな真核生物で見られる（highly conserved）な事が分かる。

そこでUPF1に適当なbinding domainをくっつけて、そこらへんのmRNAに結合させる実験を行ったところ、
そのmRNAはNMDされた。

なお、UPF2やUPF3でも同じ結果となった。

### NMDがmRNAのPTCを認識する仕組み

NMDの仕組みを考えると以下のステップが必要となる

1. mRNAのPTCをどう認識するか？
    - terminationのsiteが3'-UTRから遠いとterminationが遅くなるので、正常なものと区別出来る
2. mRNAを分解し、リボソームをリリースし、作り途中のペプチドもリリース（そして出来たら分解も）する

ここでは最初のmRNAのPTCの認識について見ていく。

termination siteではリボソームのAサイトにeRF1とeRF3があるのだった。
[[TranslationのTermination]]のEukaryoteを参照。

[36ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=35)

このeRF3がどうにかしてpoly-A binding proteinとの距離を認識出来るらしい。
メカニズムは良くわからないがpoly-A binding proteinを無くすとterminationが起こりにくくなるのは確か。

だからtermination siteがpoly-A tailと正常な距離であれば普通にterminationされ、この距離が異常に長ければterminationはとても遅くなる。

なお、mRNAは以前も書いたように（[34ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=33)）
円環になっているので、すごくupstreamでもpoly-A tailには近くなる。
そしてuORFなどでstop codonがすごくupstream側にある場合も、terminationは通常の速さで行われる。
だからpoly-A tailとの距離だけが重要でどちら側かは重要では無さそう。

そしてtemrinationがゆっくりになっている間に、UPF1がeRF3と結合し、このUPF1がさらにSMG1と結合する。
これがさらにUPF2, UPF3との結合を促進し、これらが結合した状態になり、それがexon junction complexと結合する。
この状態をDECID complexと呼ぶらしい。

なお、その前の段階でEJCとUPF2, UPF3が結合していて、これはSURF complexと呼ばれるらしい。
つまりSURF complexがUPF1側と結合するとDECID complexとなる。（[36ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=35)参照）

脊椎動物ではこのEJCを使ったメカニズムが使われている。ハエとかイースト菌では無視されているらしい。

ハエとかイースト菌では3' UTRモデルと言われる違うモデルが提唱されていて、
これはtermination siteからpoly A tailまでの間にUPF1が並んでいて、terminationがされないリボソームのeRF3と相互作用して、
この状態がstabilizeされる。
こうしてPTCが識別される。

### 脊椎動物のRibosome RecyclingやmRNA Decayの仕組み（DECID complexからRibosome Recyclingまで）

DECID complexが形成されて、UPF1とUPF2が相互作用するようになると、いろいろな事が起こる。

**ステップ1**

まずUPF1のhelicaseとしての機能がアクティベートされる。ただこれが何に使われるのかは良くわかってない。
機能としては5' to 3' helicase。

また、SMG1のキナーゼとしての機能がアクティベートされる（キナーゼはリン酸化する酵素だった）。
正確にはもともとSMG1, 8, 9の３つがくっついていたのが、ここで8と9がreleaseされて、これがinhibitorなのでSMG1がアクティベートされる。
これはUPF1をリン酸化する。

さらに、この同じステップでeRF1, 3がリリースされて、RIbosomeもmRNAからリリースされる。メカニズムは謎。
だが、特殊なrelease factorを必要としない事はわかっているので、なんらかの方法で通常のterminationが起こっているのではないか、と予想されている。

**ステップ2**

リン酸化したUPF1とSMG6が相互作用し（あとの動画を見るとリン酸化したUPF1がSMG5, 6、７を引き付けるっぽい）、SMG6はendonucleaseとしての機能を持つようになる。

SMG6によりカットされれば、5'側はpoly-A tailが無いのでexosomeにより分解される。
3'側は5' capが無いのでXRN1により分解される。

また、リン酸化したUPF1はさらにSMG5, 7と相互作用し、これらがCCR-Notを動員する。
これは通常のdegradeでも使われるdeadenylaseだった。[[EukaryoteのmRNADecay]]の「Eukaryotic Deadenylases」参照。

ここからは通常のdegradationと同様、deadenylateされるとdecappingが始まり、分解が進む。

カットだけでも十分なところにdeadenylateとdecappingが起こるので、このmRNAはすぐに分解される。
分解されずに残る要素としては、このカットより上側で翻訳途中のリボソームの存在。
これはnon-stop decayにより処理される。

### ハエやイースト菌のRibosome RecyclingやmRNA Decayの仕組み（はよくわかってない）

脊椎動物以外について、何がわかって何がわかっていないのかを簡単に見ていく。
おもにS. cervisiae（発芽イースト）、S. pombe（分裂イースト）、D. melanogaster（ショウジョウバエ）の話。

発芽イーストと分裂イーストは進化系統ではすごい昔に分かれたもので、かなり違う生き物となっている。
発芽イーストと人間の違いくらいには、発芽イーストと分裂イーストは違うとか。

**mRNAのPTCの識別でわかっている事、わかっていない事**

S. cervisiaeは、mRNAにHrp1というファクターが結合して、これがUPF2, UPF3と結合する。
Hrp1がどこにどう結合するかとかはいまいち良くわかっていない。
とにかくこのUPF2, UPF3がeRF3側のUPF1と相互作用するっぽい。

S. pombeはもっと良くわかってない。unspliced intronがシグナルになっているっぽいという事だけがわかっている。

D. melanogasterはfaux 3' UTR modelと言われる仕組みと名付けられていて、
これはUPF1とpoly-A binding proteinの距離を識別するだけの模様。
exon-exon junctionが無くても（intronをそもそも無くしても）NMDする。

**識別したあとの過程でわかっている事、わかっていない事**

D. melanogasterは脊椎動物と似ている。SMG1がUPF1をリン酸化し、SMG5, SMG6がやってきて、SMG6がendonucleaseとして機能し、
SMG5はexosomeを動員しているっぽい？XRN1がどうやってやってくるのかは良くわかってない。

イースト菌はどちらも、どれがendonucleaseなのかなどはわかってない。そもそも発芽イーストはendonucleaseが存在するのかもわかってない。
イースト菌にはSMG6相当のものが無い、というのは多くの研究者を悩ませる謎となっている。

## Nonstop-MediatedとNo-go DecayのmRNA識別

nonstop decay(NSD)とno go decay(NGD)は発見された時はすごく違うメカニズムのように見えたが、研究が進むととても似ていると思われるようになった。

nonstopもno goも、リボソームのAサイトが空である事を認識する、というのがキーになっている。

no goは、強いsecondary structureがあるなどでリボソームがそれ以上進めなくなるようなケース。
リボソームが止まるとAサイトが空になり、
その空のAサイトをDom34とHbs1と呼ばれるタンパク質が認識する。Dom34はeRF1に似ていて、Hbs1はeRF3に似ている。


