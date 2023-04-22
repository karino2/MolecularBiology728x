前: [[Translationの量を調べるAssay達]]

- steric 立体の
- conniption fit ヒステリー発作

## なぜTranslationをRegulateする必要があるのか？

転写を制御するのだからそれで十分では無いのか？という疑問に答える。

1. 細胞内のタンパク質の水準を素早く変更出来る（転写制御ではmRNAの水準が変わるのを待って初めてタンパク質の水準が変わる）  
細胞内のタンパク質の量を増やすには最速。減らすにはdegradationの方が早いが、量を変える早い手段である事には変わりない。
2. Cell Cycleやフェーズなどで、転写が（ほとんど、または全く）行われない時期がある（初期embryoとかMeta phaseとか）が、そこでもタンパク質の量を制御したい
3. ある種のタンパク質を、細胞内の特定の場所に集中的に集めたい  
mRNAを特定の場所に向けるとともに、その場所にactivatorを集めて、他の場所にはrepressorをばら撒くような感じで達成出来る
4. バクテリアのpolycistronic mRNAで、合成されるタンパク質の量を変えたい場合がある
5. 素早くTranslation全体を抑制したい時などに便利（ストレス下などでタンパク質が正しく作られない事が予想されるケースなど）

### Translational Controls

我らはTranslational Controlsについて、二つの側面に関心がある。

1. 各mRNAの基本的なTE（mRNAにより異なる）
2. あるmRNAが制御によってTEがどう変わるか

## バクテリアのInitiationステップの復習

[[TranslationのInitiation]]でみた内容のうち、制御という側面から重要になる点を視野に入れて簡単に30S Initiation Complexの形成のステップを見直す。

1. IF3が30S（RibosomeのSmall Subunit）と結合
2. IF1が30Sと結合
3. IF2+GTPが30Sと結合
4. f-Met tRNAとmRNAが結合

ステップ4のmRNAの所では30Sのうち16S rRNAとmRNAのRBSのhybridizationが重要という話だった。

RBSはShine-Dalgarno siteとも呼ばれ、Start Codonの3〜9 ntほどupstreamに配置される。
この位置がStart CodonをちょうどPサイトに配置し、f-Met tRNAがPサイトに充填されて、60Sサブユニットが結合してIFが全てリリースされてTranslationが開始される事になる。

E. coliにおいては、主にステップ4の所を制御する事でTranslationの制御を行なっている。

## Basal Levelの違いをどう実現しているか

1. RBSの配列や距離を変える（GGAGGがベストで、AUGの6〜7nt アップストリームがベスト）
2. RBSとオーバーラップ（そばにヘアピンを形成するなども含む）するようなRNAのsecondary structureを構成する（バクテリアではHelicase的な活動がなかった事を思い出そう）  
これはbasal levelだけでなくregulationにも使われている

### GFPによる実験で、Secondary Structureの影響を調べる

1. 154種類のGFP transcriptsを合成する
    - secondary structureを変えるだけのsilent mutation。主に最初の40baseと5 upstreamの範囲の変更。
2. GFP fluorescenceを計測（translateされた量を調べる）
3. codonの変更による影響が、translationには全く影響を与えていない事を確認
4. RNAのsecondary structureからFree Energyを推計し、それとステップ2の量を軸にプロット  
ー＞R^2が0.44程度のある程度の相関が見られた

silent mutationの範囲は動画ではstart siteの40 downstreamと5 upstreamと言っているがクイズではRBSの40 downstreamとなっていた。
あんまり違いは無いがどっちが正解なのかしら。

[Structure versus codon bias - Nature Reviews Microbiology](https://www.nature.com/articles/nrmicro2153) をみると-4〜+37で半分くらいが説明出来る、となっているので、start site基準だが、一方で-5くらいにRBSがある事を考えるとRBSのdownstream 40くらい、とも言える。
どっちも正解か。

## Regulationをどう実現しているか

Basal Levelではなく、あるmRNAのTranslationをどうinhibitしたりするか？

1. RBSとStart Codonの間の適当な配列とbindするタンパク質が、30Sの結合を阻害する 
ー＞RBSでは特定のmRNAではなく全mRNAがinhibitされてしまうのでmRNA固有な配列になりうるRBSとStart Codonの間が多い
2. mRNAの内部のhybridization  
複数のORFがあるmRNAで、上流のORFの一部が下流のRBSかその付近とhybridizeする
3. Riboswitch Dependent Regulation
4. Small RNA Regulation

1だけProtein Dependent、それ以外はRNA Dependent

[13ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=12)

2は、最初のRBSが識別されてTranslationが進むとこのsecondary structureは解除されるので翻訳可能になる。

これはPolar Effectと呼ばれる。upstreamのgeneがturn offされると、downstreamのgeneもturn offされるから。

### Polar Effectを用いたRibosomal Proteinsの制御の例

Ribosomal Proteinsは、rRNAと合わせてリボソームを形成するものだが、
rRNAがなければこのタンパク質をTranslateするのは無駄である。

そこでRibosomal ProteinがrRNAに結合している間は普通にTranslationが行われ続けるが、
余ってるrRNAが無くなってRibosomal ProteinsがrRNAと結合しなくなると、このタンパク質が自身のmRNAの上流のRBS付近に結合して、
Protein Dependentなinhibitが起こる。

するとそのORFの一部が下流のRBS付近と結合して、下流のタンパク質まで翻訳されなくなる（Polar Effect）。


### RIboswitchによるSAMに関わるタンパク質の制御の例

特定の小さい分子が結合すると形を変えるRNAがあり、これにより制御する仕組み。
ここでは例として、S-Adenosyl methionine (SAM)で形を変えるケースを見てみよう。

SAMはmethyltransferaseがドナーとして使うメチル基を取り出すのに使う分子。
このSAMが結合すると形が変わるRNAがある。

[13ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=12)

SAMがある事で足の所がhybridizeして、その結果反対側のhybridizeが解けて、その結果そことhybridizeする新しい部分とhybridizeしてループを形成する。

このmRNAはSAMを合成するタンパク質で、SAMが十分にあればこのタンパク質は不要になるので、
翻訳を抑制するためにこのRiboswitchが使われている。
RBSがアクセス出来なくなるので翻訳されなくなる。

### Small RNAによる制御

バクテリアのSmall RNAはsRNAとも呼ばれ、通常80〜110ヌクレオチド長くらい。

例えばmRNA内部のhybridizeにより翻訳が抑制されている状態で、hybridizeしている片方とsRNAがhybridizeする事で元の内部hybrizeが解除されてRBSがアクセス可能になり翻訳が開始されるようなケースがある。（activationのケース）

また、RBS周辺とsRNAがhybridizeする事でRBSがアクセス不能になるようなケースもある（inhibitのケース）