[TranslationにまつわるAssay達](TranslationにまつわるAssay達.md)はTranslationの各ステップを調べるassayだった。
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

これとRT-PCRを組み合わせる事で、特定のRNAがTranslationされているかを確認する事が出来る。

RT-PCRについては[Assays](Assays.md)や[Transcription入門](Transcription入門.md)を参照。

[12ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=11)

これで調べると、単体で存在しているS40は少ない事が分かる。これはS40がmRNAと結合している時は他のリボソームもくっついている事が多いからだろう。

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

## Translational Controls

我らはTranslational Controlsについて、二つの側面に関心がある。

1. 各mRNAの基本的なTE（mRNAにより異なる）
2. あるmRNAが制御によってTEがどう変わるか

### なぜTranslationをRegulateする必要があるのか？

転写を制御するのだからそれで十分では無いのか？という疑問に答える。

1. 細胞内のタンパク質の水準を素早く変更出来る（転写制御ではmRNAの水準が変わるのを待って初めてタンパク質の水準が変わる）  
細胞内のタンパク質の量を増やすには最速。減らすにはdegradationの方が早いが、量を変える早い手段である事には変わりない。
2. Cell Cycleやフェーズなどで、転写が（ほとんど、または全く）行われない時期がある（初期embryoとかMeta phaseとか）が、そこでもタンパク質の量を制御したい
3. ある種のタンパク質を、細胞内の特定の場所に集中的に集めたい  
mRNAを特定の場所に向けるとともに、その場所にactivatorを集めて、他の場所にはrepressorをばら撒くような感じで達成出来る
4. バクテリアのpolycistronic mRNAで、合成されるタンパク質の量を変えたい場合がある
5. 素早くTranslation全体を抑制したい時などに便利（ストレス下などでタンパク質が正しく作られない事が予想されるケースなど）

