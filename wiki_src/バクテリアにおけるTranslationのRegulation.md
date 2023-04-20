前: [[Translationの量を調べるAssay達]]

## なぜTranslationをRegulateする必要があるのか？

転写を制御するのだからそれで十分では無いのか？という疑問に答える。

1. 細胞内のタンパク質の水準を素早く変更出来る（転写制御ではmRNAの水準が変わるのを待って初めてタンパク質の水準が変わる）  
細胞内のタンパク質の量を増やすには最速。減らすにはdegradationの方が早いが、量を変える早い手段である事には変わりない。
2. Cell Cycleやフェーズなどで、転写が（ほとんど、または全く）行われない時期がある（初期embryoとかMeta phaseとか）が、そこでもタンパク質の量を制御したい
3. ある種のタンパク質を、細胞内の特定の場所に集中的に集めたい  
mRNAを特定の場所に向けるとともに、その場所にactivatorを集めて、他の場所にはrepressorをばら撒くような感じで達成出来る
4. バクテリアのpolycistronic mRNAで、合成されるタンパク質の量を変えたい場合がある
5. 素早くTranslation全体を抑制したい時などに便利（ストレス下などでタンパク質が正しく作られない事が予想されるケースなど）

## Translational Controls

我らはTranslational Controlsについて、二つの側面に関心がある。

1. 各mRNAの基本的なTE（mRNAにより異なる）
2. あるmRNAが制御によってTEがどう変わるか

## ここまで見てきたAssayをどう使ってRegulationを調べるか

[[Translationの量を調べるAssay達]]で見てきたAssayで、どうRegulationを調べる事が出来るかを見ていく。

### 例1: Polysome Profilingを使って、実際にTranslationのRegulationが行われている事を確認する

Polysome ProfilingとRT-PCRを付き合わせる事で特定のmRNAが現在翻訳されているかを調べる事が出来る、という話をした。
これを使って例えばグルコースがあるプレートと無いプレートで特定のmRNAが翻訳されているかを調べる事が出来る。

またRT-PCRではなくhigh throughput sequencing手法と組み合わせることで、Polysomeを形成している全mRNAの分布を調べる事も出来る。

このassayを行っている時に気を付けるのは、転写が行われていないのか翻訳が行われていないのかを区別するために、
mRNAの量もチェックする事。

mRNAの総量は変わらないがPolysomeの数が大きく変わるなら、TranslationのRegulationが行われている証拠となる。

### 例2: Meiosisの間をRibo-seqとRNA-seqを比較して調べる

Meiosisに関わる二つのgene、SPS2とSPS1について、Meiosisの間のRibo-seqとRNA-seqのデータを様々なタイムポイントで計測する。

RNA-seqの方をみると、それぞれのタイムポイントで大体似通った水準のそれぞれのmRNAが見られる。
だが、Ribo-seqをみると、SPS2が先に多く現れて、しばらくSPS1は出てこない。そのあとSPS1が増えていくので、
SPS1は初期のステージではtranslationがrepressされていると思われる。

### 例3: F1F0 ATP synthaseオペロンの例

- stoichiometry 化学量論

これはミトコンドリアでプロトンgradientを用いてATPを合成する酵素。
F1F0 ATP synthaseは8種類のサブユニットから出来ていて、一つのmRNAにエンコードされている。

だがこのF1F0 ATP synthaseはそれぞれのサブユニットの個数が違う。
Eサブユニットはたくさん、AとDは3つ、C, G, B, Hは一つずつで構成されている。

これはmRNAのRibo-seqのreadsにも見てとれて、
Eのreadsがもっとも多く、AとDは中くらい、それ以外が少なめ。
このreadsの量の比率はcomplexの構成要素の比率と対応している事が多い。

このように一つのmRNAについて、翻訳対象のサブユニットごとに翻訳の量が違うという事は、
なんらかのTranslationの制御が行われている証拠と言える。