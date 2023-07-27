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

実際、cycloheximideがあるところでこの実験をやるとこの状態になって全くtrpオペロンが転写されない。

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

まずは一番良く理解されているNonsense-Mediated Decayから。

### Nonsense-Mediated Decayの発見の歴史

最初に発見された現象は、beta thalassemiaという遺伝病の研究をしている時だった。
βグロビンが無いという病気。


