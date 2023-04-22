[[TranslationにまつわるAssay達]]はTranslationの各ステップを調べるassayだった。
こちらはどれだけ活発にTranslationが行われているかを調べるAssay。

これはRegulationを調べるのに必要。これらは全てin vivo assay。

- lousy 劣っている、質の悪い
- sediment 沈殿物

## Amino Acid Incorporation Assay

一番単純に考えられるのが、単にIncorporationn Assayを行う、というもの。

- 放射線ラベルのついた AA precursors（タンパク質のprecursorという意味で要するにアミノ酸の事だと思う）を使う
   - 現在ではS35-labeled methionineかcysteine
   - かつてはtritiated AAが使われていた。tritiatedはトリチウム、つまり三重水素の事。
- これを細胞に食わせる。細胞はmethionineやcysteineを取り込むので。
    - そのためにまず細胞内のmethionineを枯渇させるのが良くやられる手続き。だが枯渇させる事で代謝にまつわる副作用がある場合も。
- time pointsごとにタンパク質に含まれるradioactivityを計測する。
    - 一番単純なのは [SdsPage - Biochemistry 705x](https://karino2.github.io/Biochemistry705x/SdsPage) だが、翻訳されるタンパク質全体についての活動量を知りたい場合はバンドが広く広がってしまうのであまり有益では無い。
    - TCA precipitation が良く使われる。

### TCA precipitation 

Translationされるタンパク質の総量を調べたい時には良い方法。
一方で特定のタンパク質のTranslation量を調べたい時には不向き。

TCAは trichloroacetic acidの略。とても強い酸。pH2とか。
手順は以下。

1. TCA (10〜20%）を調べたいtranslationが行われている細胞たちに加える
     - タンパク質は沈殿する、AAは溶けたまま
     - メカニズムとしてはタンパク質の水素結合を切り離して、hydrophobic regionが相互作用して集まって沈殿する
     - アミノ酸はpH2ではイオンとして存在するので水に溶けやすい
2. 紙のフィルターで沈殿物を集める
3. Radioactivityを計測（scintillation counting）

## Polysome Profiling

Polysome Profilingは細胞全体のTranslationを測るassayだが、特定のgeneのtranslationを調べたい時にも応用できる。

Polysomeとは、一つのmRNAに複数のリボソームが結合したもの。
複数である事は、Translationが現在行われている事をある程度保証する。

mRNAとリボソームが一つ結合してTranslationが始まる前の状態で止まっている、
というケースと区別するために、リボソームが二つ以上結合しているものを選ぶ。

ステップは以下。

1. CyclohexamideなどのElongation Inihibitor を細胞に加える（Optional）
2. Cellsをlyseする
3. Sucrose Gradientの元でUltracentrifugationする
   - 大きいものが早く動き、小さいものがゆっくり動く
4. A260nm のSpectrophotometryでRNAの水準を測る（ほとんどのRNAはrRNA）

Spectrophotometryで見ると、80S (リボソーム一つ）、80Sが二つ、80Sが3つ…と言った場所に山がみられる。
この手法ではリボソーム6個とか7個くらいまでが見分けられる限界。

[12ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=11)

これで調べると、単体で存在しているS40は少ない事が分かる。これはS40がmRNAと結合している時は他のリボソームもくっついている事が多いからだろう。

また、これとRT-PCRを組み合わせる事で、特定のRNAがTranslationされているかを確認する事が出来る。
各位置のmRNAに対してRT-PCRをして調べたいmRNAのreadのカウントを調べてPolysome Profilingのグラフと付き合わせる事で、目的のmRNAのreadがPolysomeの山の範囲にどのくらいあるかを特定する事で、
目的のmRNAがtranslateされているかを判断出来る。

RT-PCRについては[[Assays]]や[[Transcription入門]]を参照。

ただ後の動画ではQuantitative Real Time PCRと言っていて、クイズではqRT-PCRを選ばせるものがあった。
qRT-PCRについては詳細は良くわからないが特定のmRNAの量を調べる手法っぽい。

## Ribo-seq

現在行われている手法らしい。カッティングエッジな方法という事で授業では詳しくやらんので論文を読むのが良いとの事。

Ribo-seq footprintingとも呼ばれるのか。

PolysomeをRNaseで切断して、sucrose gradientで遠心分離して、28 ntを分離する（？）。
そしてpolyA tailを付加してそれとannealするprimerを用意してReverse TranscribeしてcDNAを作り、ligateして環状にし、さらにそれをcutしてlinearizeしてPCRで増やしてシーケンシングするとの事。

良くわからない。

Natureの[http://rdcu.be/lBkN](http://rdcu.be/lBkN)を見ろとの事。見てみるかな。

見てみたが、これはRibo-seqとは関係ないな。mRNAの量とタンパク質の量を、mRNAはシーケンシングで、タンパク質の量はMS/MSで調べて、
その結果両者には結構な相関があるという話をしている。
この実験結果はなかなか示唆に富むな。

話を戻して。大まかには遠心分離でpolysomeを分離して、どうにかしてそれの量をシーケンシングで測るという事だな。
28ntはRibosomeに保護されている部分と思われる所か。

### Translational Efficiency

Translational Efficiency（TEと略す）の定義は

```
タンパク質の数/mRNA/時間
```

との事。つまり、単位時間あたりにmRNA一つから合成されるタンパク質の数、か。
単位時間は対象とするものによって違うらしい。バクテリアとかなら分、真核生物ならhour、など。

合成されたタンパク質の数とmRNAの数の比率はgeneによって大きな差があることがわかっている（1000xとかのオーダー）。
TEは大体20xとかのオーダーの差があるので、いくらかはTEで説明出来るが、他にも大きな要素があると思われる。

Ribo-seqのデータをRNA-seq readsのデータと比較する事で、Translational Efficiency が分かる、との事。
TEをRibo-seq reads/RNA-seq readsと言っていた。
つまり存在しているmRNAのうちどれだけがPolysomeからが分かるという事だよな。


## ここまで見てきたAssayをどう使ってRegulationを調べるか

ここからは、ここまで見てきたAssayを使って、どうRegulationを調べる事が出来るかを見ていく。

### 例1: Polysome Profilingを使って、実際にTranslationのRegulationが行われている事を確認する

Polysome ProfilingとRT-PCRを付き合わせる事で特定のmRNAが現在翻訳されているかを調べる事が出来る、という話をした。
これを使って例えばグルコースがあるプレートと無いプレートで特定のmRNAが翻訳されているかを調べる事が出来る。

またRT-PCRではなくhigh throughput sequencing手法と組み合わせることで、Polysomeを形成している全mRNAの分布を調べる事も出来る。

このassayを行っている時に気を付けるのは、転写が行われていないのか翻訳が行われていないのかを区別するために、
mRNAの量もチェックする事。

mRNAの総量は変わらないがPolysomeの数が大きく変わるなら、TranslationのRegulationが行われている証拠となる。

[[Translationの量を調べるAssay達]]ではRT-PCRと組み合わせると言っていたが、この動画ではqRT-PCRと組みわせると言っている。どういう事だろう？
qRT-PCRはQuantitative (real-time) Reverse Transcriptase PCRと注がついている。

qRT-PCRがなんなのかについてはあまり説明が無いが、どうも特定のmRNAについてRT-PCRするような手法のようだ。

### 例2: Meiosisの間をRibo-seqとRNA-seqを比較して調べる

Meiosisに関わる二つのgene、SPS2とSPS1について、Meiosisの間のRibo-seqとRNA-seqのデータを様々なタイムポイントで計測する。

RNA-seqの方をみると、それぞれのタイムポイントで大体似通った水準のそれぞれのmRNAが見られる。
だが、Ribo-seqをみると、SPS2が先に多く現れて、しばらくSPS1は出てこない。そのあとSPS1が増えていくので、
SPS1は初期のステージではtranslationがrepressされていると思われる。

### 例3: F1F0 ATP synthaseオペロンの例

- stoichiometry 化学量論

Ribo-seqを用いて同一mRNAの中のそれぞれのサブユニットのtranslationの比率が違う事を突き止める。

これはミトコンドリアでプロトンgradientを用いてATPを合成する酵素。
F1F0 ATP synthaseは8種類のサブユニットから出来ていて、一つのmRNAにエンコードされている。

だがこのF1F0 ATP synthaseはそれぞれのサブユニットの個数が違う。
Eサブユニットはたくさん、AとDは3つ、C, G, B, Hは一つずつで構成されている。

これはmRNAのRibo-seqのreadsにも見てとれて、
Eのreadsがもっとも多く、AとDは中くらい、それ以外が少なめ。
このreadsの量の比率はcomplexの構成要素の比率と対応している事が多い。

このように一つのmRNAについて、翻訳対象のサブユニットごとに翻訳の量が違うという事は、
なんらかのTranslationの制御が行われている証拠と言える。

## Ribosome DensityとRate-Limiting Step

TranslationのRate-Limiting Stepがどこなのかを調べたい時には、Ribosome Densityを調べる。
よくあるケースとしてはTranslationの量をもっと増やしたい、とかいう時に必要な情報。

Ribosome Densityは、 リボソームの数/ORFの単位長さ が定義。

- ElongationがRate-Limiting ... Ribosomeがたくさんついていて、Ribosome Densityが高い
- InitiationがRate-Limiting ... Ribosomeは少ししかついていないだろうからRibosome Densityが低い

なおRibosome Densityの上限は生物種により多少の違いはあるが、1/35nt 程度との事。
28ntくらいが保護される長さなので、その前後に少し余白があると思うとこのくらいであるのは納得できる。

S. cerevisiaeで調べた結果が紹介されていて、注意深く行なったPolysome ProfilingとqRT-PCRの結果を付き合わせて計算しているように見える。

とにかく、平均のRibosome Densityは1/154ntで、最大値は1/35nt、1/50nt以上のgeneは72 genesのみだった。

多くのgeneではinitiationがRate Limiting Stepで、だからRegulationの多くはInitiationで起きていると予想される。

## 次: バクテリアにおけるTranslationのRegulation

[[バクテリアにおけるTranslationのRegulation]]
