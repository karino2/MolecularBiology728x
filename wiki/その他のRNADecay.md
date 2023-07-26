これまで通常のケースは以下で見てきた。

- [バクテリアのmRNADecay](%E3%83%90%E3%82%AF%E3%83%86%E3%83%AA%E3%82%A2%E3%81%AEmRNADecay)
- [EukaryoteのmRNADecay](Eukaryote%E3%81%AEmRNADecay)

ここではその他の特殊だったり雑多なケースをいろいろ見ていく。

## Ribosomeを検出器として使う例

[バクテリアにおけるTranslationのRegulation](%E3%83%90%E3%82%AF%E3%83%86%E3%83%AA%E3%82%A2%E3%81%AB%E3%81%8A%E3%81%91%E3%82%8BTranslation%E3%81%AERegulation)でoperonの後ろのsecondary structureをリボソームが解除する例や、
[EukaryoticTranslationalRegulation](EukaryoticTranslationalRegulation)のGCN4の例などで、AAがどれだけ豊富にあるかを検出するケースを見た。

ここではtranscriptional attenuationと呼ばれるケースを見る。これはバクテリアだけで見られる現象。

これはtranslationを使ってtranscriptionのterminationをinhibitする仕組み。attenuatorは減衰器、という意味らしい。

## Trp attenuatorの例

一番良く知られているattenuatorにTrp attenuatorがある。Trpはトリプトファンの事か。

- Trpが多い時はTrp biosynthesisを減らしたい
- Trpが少ない時はTrp biosynthesisを増やしたい

biosynthesisの増減は、転写の増減でコントロールされる。
そこでTrpが多い時は転写を減らし、Trpが少ない時は転写を増やしたい。

バクテリアの転写のterminationは、生成されるRNAがGCリッチなヘアピンを形成し、その後にUリッチな領域があるとRNAポリメラーゼが離れるのだった。＞[バクテリアにおけるTranscriptionのElongation](%E3%83%90%E3%82%AF%E3%83%86%E3%83%AA%E3%82%A2%E3%81%AB%E3%81%8A%E3%81%91%E3%82%8BTranscription%E3%81%AEElongation)

Trp attenuatorはトリプトファンのレベルによってこの転写がterminateしたりしなかったりする事で、その後のgeneが転写されるかどうかを制御する。

まずtrp operonの前にleaderと呼ばれる領域がある。

[35ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=34)

leaderには1, 2, 3, 4とヘアピンを構成する事が可能な領域があって、それぞれハイブリダイズし得る。
そして1とまたがるようにuORFがある。

uORFについては[EukaryoticTranslationalRegulation](EukaryoticTranslationalRegulation)のGCN4の例を参照。ただし今回はバクテリアのケースなのでEukaryoteと違ってre-initiationの問題は無いからuORFがあるだけなら、その後ろを翻訳する事は特に問題が無い。

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