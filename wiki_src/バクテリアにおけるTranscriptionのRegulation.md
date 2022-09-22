前：[[バクテリアにおけるTranscriptionのElongation]]

クイズの単語はここに書いておく。

- asymptomatically 無症候で
- pneumonia 肺炎
- bronchitis 気管支炎
- meningitis 髄膜炎

## initiationのレートの制御

1. プロモーター配列の違い  
Close Complex Formationの頻度が、consensusのstrong matchかweak matchかの違いで発生する
2. シグマファクターの違い  
シグマファクターごとに最適な-35や-10、及び間のスペースが異なる。多くのgeneはシグマ70(rpoDというgeneでエンコードされる)と呼ばれるシグマファクターで転写されるが、heat shockの時に有効になるシグマ32やnitrogen starvationで有効になるシグマ54などは認識するプロモーターが異なる
3. Binding of SEQ specific TXN factors  
helix-turn-helix motifと呼ばれるものがmajor grooveに水素結合して配列を認識する。典型的にはDNAの回文になっている配列がターゲット。

## 転写のRepressor

ここまで見てきたように、転写は以下のステップで行われて、このどれかがrate limiting stepとなっている。

[10ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=9)

repressorはrate limiting stepを減らすか、新しいrate limiting stepを作る必要がある。（ボトルネック以外を変えても影響は無い）。

なお、典型的にはClosed Complex Formの形成がrate limiting step（そうでない事もあるが）。

一番単純で良く見られるrepressorが、
プロモーターに結合してポリメラーゼの結合を防ぐもの。

選択的にrepressするためには、-35や-10といったいろいろなgeneに共通の配列の部分では無く、
その間の領域に結合するのが普通（spacer DNA、-10と-35の間）。

また、そこまで一般的では無いが、-35のupstreamに結合して、ポリメラーゼが結合し、Unstable Ternary Complexの形成までも妨げないが、
ポリメラーゼとプロモーターの結合を強めて容易には進んでいかないような強力なつなぎ紐として機能するようなrepressorもある。
この場合はabortive transcriptionは起こる。

## 転写のActivator

Repressorは新しいrate limiting stepを作るという事でもrepress可能だったが、Activatorはいつもrate limiting stepを改善する方法でしかactivate出来ない。

多くのケースで、Activatorはそもそもプロモーターの部分に弱さ（あまり反応が進まない要因）が最初にあり、
それをActivatorが改善する、という形式になっている。

### CAP Activator

よくあるActivatorでは、そもそもの-35のconsensusなどが低くClosed Complex Formationがあまり起こらない所に、
ActivatorであるCAP Activator（Catabolite Activating Proteins)が結合するとRNAPのαサブユニットのC末端と相互作用して結合を助け、Closed Complex Formationの形成のレートを上げる、というもの。
この形式のActivatorが可能なためには、そもそものconsensusが低い必要がある。

このCAPは先程述べたrepressorとして機能する場合もある。つまり同じCAPで同じメカニズムでも、RNAPとの結合を助けることでRNAPが離れていくのを防ぐ形のrepressorとして機能する場合もある。

### MerR Activator

珍しいActivatorではあるが、Open Complex Formationを促進する、MerR activatorというのもある。
このケースではプロモーターの-35と-10の間の距離が理想的では無く、Active siteに対する-35と-10の向きが理想と反対になっていて、
MeR activatorはDNAのツイストをきつくする事によって-10と-35を近づけて理想的な向きに直す、
という形でactivatorとして振る舞う。

この場合、MerRが無くても-35は正常なのでRNAPは結合するが、-10の向きが正しくないのでOpen Complex Formになれない。
MerRが-10の距離と向きを改善する事で正しくOpen Complex Formが形成されるようになる。

## 次: BiologicalReactionsとRates

[[BiologicalReactionsとRates]]