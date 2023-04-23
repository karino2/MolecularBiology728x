前: [バクテリアにおけるTranslationのRegulation](バクテリアにおけるTranslationのRegulation.md)

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

大きく、以下の２つの段階があるのだった（[TranslationのInitiation](TranslationのInitiation.md)を参照)

- Small SubunitにeIFとMet-tRNAがロードされる（43S Pre Initiation Complexを形成）
- 43S PICにmRNAが動員される

そしてグローバルな翻訳制御では、前者のうちMet-tRNAがロードされるステップが制御の対象となっている。
Met-tRNAはロード時には、eIF2+GTPと結合した状態でやってくるのだった。

