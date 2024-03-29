前: [バクテリアにおけるTranslationのRegulation](%E3%83%90%E3%82%AF%E3%83%86%E3%83%AA%E3%82%A2%E3%81%AB%E3%81%8A%E3%81%91%E3%82%8BTranslation%E3%81%AERegulation)

- akin to〜 〜と同種の

## EukaryoticなTranslationについての特徴の概観

S. cerevisiaeを見ていく。

EukaryoticでもgeneによってTEはかなり違いがある。
これはRibo-seq/RNA-seqのlogのヒストグラムをプロットしてみればわかる（geneの個数を縦軸）。
これはregulationどうこうではなくbasal levelに差があるという話。

また、グルコースがある時を横軸、無しの時を縦軸にRibo-seq/RNA-seqをそれぞれのgeneでプロットすると、
多くのgeneが同時に影響を受けている事がわかる（+グルコースで翻訳が増すgeneと-グルコースで翻訳が増すgeneが両方ともたくさんある）。

## EukaryoticのTranslationのInitiation復習

Translationの制御に関わる所を中心に、Initiationのステップを簡単に見直す。

大きく、以下の4つの段階があるのだった（[TranslationのInitiation](Translation%E3%81%AEInitiation)を参照)

- ステップ1: Small SubunitにeIFとMet-tRNAがロードされる（43S Pre Initiation Complexを形成）
- ステップ2: 43S PICにmRNAが動員される
- ステップ3: Start Codonのスキャン
- ステップ4: Large Subunitの動員 

### eIF2Bをinhibitする事でMet-tRNAのロードを抑制（ステップ1をターゲット）

グローバルな翻訳制御として、Met-tRNAがロードされるステップをターゲットとしたものを見ていく。これはステップ1をターゲットにした翻訳制御。

Met-tRNAはロード時には、eIF2+GTPと結合した状態でやってくるのだった。（Initiator-tRNA+eIF2+GTP ternary complex)

この制御を考えるに当たり、まず通常のInitiationにおいてeIF2がどうなるかを考える。
mRNAが結合してStart Codonのスキャンが起こり、Start Codonとbase paringすると、eIF2のGTPが加水分解されてeIF2+GDPになってリリースされるのだった。

このeIF2+GDPがふたたび再利用されるためには、このGDPをGTPと置き換える、GTP Exchange Factorが必要。
このケースのGEFはeIF2Bと呼ばれるタンパク質が担う。
このeIF2BによるGEFの機能を何らかの方法で抑制するのがTranslationのグローバルなinhibitionの基本となる。

例えば、eIF2+GDPのeIF2の一部をリン酸化するキナーゼがあり、eIF2がリン酸化されるとeIF2BのGEFの機能が抑制される。
これらはストレス下で翻訳をグローバルに抑制するケースで良く見られる。
ストレスの種類とそこで使われるキナーゼを以下に挙げる。

| キナーゼ | ストレスの種類 |
| ---- | ---- |
| GCN2 | アミノ酸の欠乏、UV irradiation |
| PKR | ウィルス感染 |
| HRI | heme level, osmotic shock, heat shock |
| PERK | ERストレス、hypoxia |

### 4E-BPによるmRNAの動員のブロック（ステップ2をターゲット）

mRNAの動員であるステップ2はさらに以下のステップで進むのだった。

- mRNAの5' capにeIF4Eが結合
- eIF4GとeIF4AがmRNA+eIF4Eと結合
- eIF4AがヘリカーゼとしてmRNAの5'側のsecondary structureを解除
- 43S PICとmRNA complexが結合

このステップの制御対象としては２つ目のeIF4Gがターゲットとなっている。

4E Binding Proteins、略して4E-BPsと呼ばれるタンパク質群がある。
4E-BPは基本的にはeIF4Eと結合し、これはeIF4Gの結合と競合する。

4E-BPは細胞内に普通に存在しているが、この4E-BPをリン酸化するキナーゼがあり、
4E-BPはリン酸化されるとeIF4Eと結合しなくなる。

この種のキナーゼは細胞の成長に関する制御で使われることが多く、
有名なものにはmTORがある。これは細胞が成長すべきかすべきでないかを決定する主要な要素で、
成長すべき時にはたくさんのタンパク質の合成が行われるので、4E-BPをリン酸化したりする。
これはグローバルな翻訳制御の例。

gene specificな翻訳制御でもこの仕組は使われている。
DrosophilaのEmbryonic developmentでは転写は行われないが、translation regulationでregulationを行う。
この時の仕組みとして、Brunoと呼ばれるタンパク質とcupと呼ばれるタンパク質によるものがある。

BrunoはmRNAのORFのdownstreamのどこかの配列に結合する。
するとこのBrunoとcupが結合する。cupは4E-BPの一種だが、通常はそれほど強力では無く翻訳を妨げない。
だが、これがmRNAと結合すると、eIF4Eと結合しやすくなって翻訳を抑制する。
これは特定のmRNAをターゲットにする事が出来る仕組み。

### ferritinのgeneに見られる、AUGへのスキャンをターゲットにした制御

ferritin proteinのgeneの例。
ferritinのgeneのORFのupstreamにIRE (Iron Regulatory Element）と呼ばれる領域があり、ヘアピンを形成している。

このIREにIRP (Iron Regulatory Protein)と呼ばれるタンパク質が結合する。これは折り畳まれた状態のIREの配列を認識して結合する。
IRPは、鉄イオンが結合していなければIREに結合でき、鉄イオンが結合しているとIREに結合できない。

IRPが結合しているとスキャンを途中でブロックしてAUGまで辿り着く事が出来ない。

ferritin proteinは自由に存在している鉄イオンを掃除するタンパク質。
鉄イオンはOHラディカルなどを作り出すのであまり細胞に良いものではない。

鉄イオンが自由には存在しなくなれば、もうferritinはいらなくなるので、合成を止める。

## uORFによる翻訳の制御

ORFのStart Codonのupstreamに、ORFやAUGがある事が発見され、これが翻訳の制御に関わっている。
このupstreamにあるORFやAUGをuORFとuAUGと呼ぶ。（これと対比するために実際のgeneのORFのStart CodonのAUGをsAUGと呼ぶ）

50%の人間のgeneは、upstream AUGを持つ事が最近わかった。

EukaryoteのTranslationのinitiationでは最初のAUGをスキャンする、という話だったのに、これはどうしたことか？という事を見ていく。

uORFは通常短く、4〜8とか程度のAAしか無いもので、何らかの機能のあるタンパク質を合成する事は無い。

uORFやuAUGでは三つのケースが考えられる

1. upstreamに短いORFがあるケース（Start CodonもStop Codonもある）
2. uAUGだけがあり、Stop Codonが無く、そのままやがてsAUGに繋がっているケース
    - ORFのin frameのケース ... 余計なものが5'につくがおそらく普通に機能する
    - ORFのout of frameのケース（ORFのCodonがずれるケース） .... おそらくゴミが出来てしまう

### uAUGがある時にどうやってDownstreamのORFが翻訳されるのか？

- 最初のAUGをバイパスする事がある
    - Kozak consensus sequence （AorG NN AUG G）とは違う配列になっている（少しバイパスしやすくなる）
    - uAUGとオーバーラップまたは近くにRNAのsecondary structureが出来るとバイパスしやすくなる（ただし何故かはよくわからない。eIF4Aが伸ばしそうなものだが…）
- uORFのStop Codonの後にRe-initiationが起こる事がある
     - uORFが短い時（3〜10 AA程度）しか起こらない
          - Elongationの初期にはまだeIFがいくつか残っている事があって、40SがmRNAとくっついたままになって、そこからまたスキャンが始まる事があるとか
     - uORFのStop Codonの配列もこのRe-initiationの起きる確率に影響を与えている模様

### GCN4 geneのuORFによるRegulationの例

uORFを使うRegulationの一番極端で良く調べられている例として、GCN4 geneの例を見てみる。

GCN4はAAの合成に関わるgeneのactivationに関わるタンパク質。
これの5' upstream側には4つものuORFが見つかり、これが制御に関わっているらしい。

GCN4はAAが豊富にある状態では不要で、AAが少ないと必要となるタンパク質。

これらのuORFはどれも8 AA以下の長さしか無い。

[14ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=13)

- このuORFのORFの中の配列を変えてもGCN4の翻訳には一切の影響がなかった。
- このuORFのstart codonを変更してAUGでは無くすと、ノートのようになった。
    - uORF4のAUGを変えたところ（-/+）は、+AAでもちょっとだけGCN4が翻訳されるようになった、という意味。

これはどうやって起こるのか？

uORF1は特殊なORFで、uORF1を翻訳したリボソームの40%がStop Codonの後も40Sサブユニットが残る、という性質な事が分かった。
そしてこの40Sサブユニットが残ると、そのままAUGスキャンを続ける。
だが、uORF1の翻訳を終了した時点では、Initiator tRNAが無いので、スキャンの結果AUGがあってもマッチしない。
PサイトにInitiator tRNAがやってきて初めてAUGを認識できるようになる。

このInitiator tRNAがいつやってくるか、のタイミングで挙動が変わる。

- uORF4より前 ... リボソームの翻訳が始まりStop Codonで解体される
- uORF4より後 ... GCN4のAUGまでスキャンし、そこから通常の翻訳が始まる

uORF4からGCN4のORFまでの間はかなり遠く、500ntくらいの長さがあるので、uORF4までにトラップされなければInitiator tRNAが間にやってくる時間は十分にある。

実際、この間の500ntを縮めてみると、GCN4の発現が著しく減少する。

このInitiator tRNAの再ロードがどれくらい起こるかは、Met tRNA+eIF2+GTPのTernary Complexがどれだけ豊富にあるかに依る。

ここの制御は先に述べた「eIF2Bをinhibitする事でMet-tRNAのロードを抑制（ステップ1をターゲット）」でも出てきた。
GCN2がeIF2をリン酸化するとeIF2BがGEFとして機能できなくなってGDPのままになる。
するとInitiator-tRNAがあまり存在しない事から再ロードが遅れてuORF4までの間にロードされず、その結果GCN4 geneまで辿り着けるようになる。

このGCN2のリン酸化はアミノ酸がどれくらい欠乏しているかで挙動が変わるので、こうしてアミノ酸の豊富さでGCN4の翻訳が制御される事になる。

以上からノートの表の振る舞いが理解できる。

- uORF1のAUGが無くなる ... uORF2でInitiationが起こってStop Codonでリボソームが解体されてしまい、downstreamに行く余地がなくなるのでAA濃度にかかわらずgeneが発現しなくなる。
- uORF2, 3, 4のAUGを無くす ... uORF1の翻訳後40Sが残った後に、途中でトラップされるuORFが無いので残りさえすればGCN4 geneまでスキャンされる事になるのでAAの濃度に関係なく発言する事になる。
- uORF4のAUGだけ無くす ... トラップされる下限が切り上げられるので少し発現しやすくなる。

## Translation Optimizationについてはバクテリアの方で

動画の並び順としてはここにTranslation Optimizationがあったけれど、内容的にバクテリアなので[バクテリアにおけるTranslationのRegulation](%E3%83%90%E3%82%AF%E3%83%86%E3%83%AA%E3%82%A2%E3%81%AB%E3%81%8A%E3%81%91%E3%82%8BTranslation%E3%81%AERegulation)に書く。