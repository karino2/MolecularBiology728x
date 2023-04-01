前: [[TranslationのInitiation]]

## Termination

Termination時には、二つの重要な出来事が起こる

1. タンパク質をtRNAからリリースする
2. リボソームをtRNAとmRNAからリリースする（このプロセスをRibosome Recyclingと呼ぶ）

ストップコドンは64個のうち3個を占め、ストップコドンはtRNAでは無くタンパク質（Class I Release Factor）により識別される。

Class I Release FactorはtRNAと似た構造のタンパク質で、機能も似ている。
RF 1(バクテリアのClass 1 Release Factorの一つ）の"acceptor"と呼ばれる領域はtRNAのacceptorのCCAと似た場所に配置され、
"anticodon"と呼ばれる領域はtRNAのanticodonと似た場所に配置される。

ダブルクオートでRF1側のものであるというのを表しているらしい。

### バクテリアの二つのClass I Release Factor

バクテリアにはRF1とRF2と呼ばれるClass I Release Factorがある。
両者の違いは"anticodon"の所は3つのアミノ酸のみらしい。

- RF1 ... UAAとUAGを認識、アミノ酸はPVT
- RF2 ... UAAとUGAを認識、アミノ酸はSPF

アミノ酸を差し替えるとRF1とRF2の役割を入れ替えられるとの事。つまりここの領域以外の構造は代替出来るほどに似ている。

Eukaryoteにも同種のタンパク質がある。

- eRF1 ... UAA, UAG, UGAを認識、アミノ酸はNIKS

だが見ての通り一対一には対応してないし、メカニズムも結構違うらしい。

RF1/RF2の"acceptor"側にGGQという配列があって、これがhydrolysis motifと呼ばれていて、
peptide hydrolysisを促進する。この配列を取り除くとこの機能は失われることが確認されている。
これがRibosomeにアミノ酸では無く水を持ってこさせてペプチドのnucleophileとして使わせる。
これが形成されたペプチドを加水分解してtRNAから切り離す。

この反応はRibosomeのconservedな配列が関わっているようで、これを変異させると行われなくなる（かつて[[TranslationのElongation]]の「ペプチド結合形成のメカニズム」でpeptidyl transferaseを調べた時に影響がなかった所はここで使われている事が判明）。

### バクテリアのTerminationとRibosome Recycling

1. RF1（またはRF2）がAサイトにやってきてStop Codonとペアリングし、tRNAについていたペプチドを加水分解してリリース
2. RF3と呼ばれるClass II Release FactorがGDP boundな状態でやってきてRF1に結合
3. GDPとGTPが置き換えられてconformation changeが起こり、RF1をAサイトから追い出す。RF3はリボソームと結合したまま。
4. RF3のGTPがfactor binding centerとの相互作用により加水分解されて、RF3がリボソームからリリースされる  
この段階でリボソームにはPサイトとEサイトにtRNAが、Aサイトが空、mRNAもまだある、という状態になる
5. RRF (Ribosome Recycling Factor)がAサイトにやってきて、peptidyl transferaseが起きてる時のtRNAのような形として結合する。つまりA-サイトが半分だけ空の状態になっている。
6. EF-G+GTPがAサイトに結合し、通常のElongationと同様にGDP+Pとの結合状態になってRRFをAサイトからPサイトに押し出す。これがPサイトのtRNAをEサイトに押し出し、どちらのtRNAもリリースされていく。
7. EF-G+GDPがリボソームからリリースされ、RRFはPサイトに入るとやがてリリースされる（あまりPサイトとのアフィニティは高くない）  
この段階で、リボソームはA, P, Eサイトが空でmRNAだけある状態
8. IF3が結合してLarge Subunitが分離される
9. mRNAがSmall Subunitからリリースされる

Class II Release FactorはGTPと結合して加水分解する機能を持つ。
バクテリアではRF3。

## EukaryoteのTranslation Termination

Class II Release Factorの働きがバクテリアと大きく異なる。eRF3がClass IIか。

1. eRF3+GTPがeRF1と結合し、Stop Codonへと輸送する
2. Stop CodonとeRF1がparingすると、factor binding siteとeRF3が相互作用してGTPを加水分解する
3. eRF3+GDPがリリースされて、eRF1だけがAサイトに残る
4. eRF1のGGQ motifがペプチドの加水分解をうながし、ペプチドをリリースする。（GGQ motifはhighly conserved)
5. Rli 1+ATPがmRNAと結合して、ATPを加水分解する事でヘリカーゼのように振る舞って自身をLarge SubunitとSmall Subunitのactive siteへと移動させる
6. Large Subunit、eRF1, tRNAがリリースされる
7. mRNAがリリースされる（この辺を含め、5から先はまだ良くわかっていない）

eRF3はeRF1を輸送する機能を持つ。EF-Tuなどに似た機能と言えるかもしれない。

### EukaryoteのmRNAについての補足

EukaryoteのmRNAは、片方にeIF4E, G, Aがついていて、反対側の端にはPolyA tailがあり、このPolyA tailにはpolyA binding proteinが結合している。
このeIF4E, G, AとpolyA binding proteinが結合して輪っかの形になっている事が多い。

そして小さいmRNAに対しては、この輪っかの構造がTranslationを開始して輪っかをRibosomeが進んで、終端に近い所にあるストップコドンまで進み、そこでLarge SubunitとSmall Subunitが離れて、そのまま次のTranslationにSmall Subunitが再利用されるのを促進している模様。

大きなmRNAではあまりそうした現象はみられないらしい。

## 次: TranslationにまつわるAssay達

[[TranslationにまつわるAssay達]]
