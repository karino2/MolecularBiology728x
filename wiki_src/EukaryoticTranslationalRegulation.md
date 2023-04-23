前: [[バクテリアにおけるTranslationのRegulation]]

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

大きく、以下の２つの段階があるのだった（[[TranslationのInitiation]]を参照)

- Small SubunitにeIFとMet-tRNAがロードされる（43S Pre Initiation Complexを形成）
- 43S PICにmRNAが動員される

それぞれのステップが翻訳制御に使われている。

前者としてはMet-tRNAのロードの段階が制御の対象となる。

後者はさらに以下のステップで進むのだった。

- mRNAの5' capにeIF4Eが結合
- eIF4GとeIF4AがmRNA+eIF4Eと結合
- eIF4AがヘリカーゼとしてmRNAの5'側のsecondary structureを解除
- 43S PICとmRNA complexが結合

後者のステップの制御対象としては２つ目のeIF4GとeIF4Aがターゲットとなっている。

### eIF2Bをinhibitする事でグローバルに翻訳を抑制

グローバルな翻訳制御として、Met-tRNAがロードされるステップをターゲットとしたものを見ていく。

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

### 4E-BPによるmRNAの動員のブロック

mRNAの動員は以下のステップで進むのだった。

- mRNAの5' capにeIF4Eが結合
- eIF4GとeIF4AがmRNA+eIF4Eと結合
- eIF4AがヘリカーゼとしてmRNAの5'側のsecondary structureを解除
- 43S PICとmRNA complexが結合

そしてこの二番目のeIF4GとeIF4Aの結合が制御のターゲットとなっている。これもグローバルな翻訳制御の例。

4E Binding Proteins、略して4E-BPsと呼ばれるタンパク質群がある。
4E-BPは基本的にはeIF4Eと結合し、これはeIF4Gの結合と競合する。

4E-BPは細胞内に普通に存在しているが、この4E-BPをリン酸化するキナーゼがあり、
4E-BPはリン酸化されるとeIF4Eと結合しなくなる。

この種のキナーゼは細胞の成長に関する制御で使われることが多く、
有名なものにはmTORがある。これは細胞が成長すべきかすべきでないかを決定する主要な要素で、
成長すべき時にはたくさんのタンパク質の合成が行われるので、4E-BPをリン酸化したりする。