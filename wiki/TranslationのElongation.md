前: [Translationの基本と登場人物](Translationの基本と登場人物.md)

- accommodate 適合する
- ratchet 歯止め

## TranslationのElongationの基本ステップ

Initiationの理解を深めるためにも、Elongationからみるのが都合が良いらしいので、まずはElongationからみる。

[5ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=4)

1. Aサイトに適切なAminoacyl tRNAを配置（auxiliary factor）
2. peptidyl transferase reactionでペプチド結合を形成  
これが生成しているペプチドをPサイトのtRNAからAサイトのtRNAに移動する。これはnucleophilic attackで起こる。前述の高エネルギーの結合がペプチド結合の形成に使われる。ATPのエネルギーはこの形でここまでやってきて消費されることになる。
3. mRNAとtRNAをtranslocateする。PサイトからEサイトへ、またはAサイトからPサイトへ。mRNAは3 ntだけ移動。

生成されているペプチドはいつもtRNAと結合した状態である事に注目。
PサイトのtRNAからAサイトのtRNAに移動しても、tRNAと結合していることには違いはない。

## GTP-Regulated Auxiliary Translation Factors

Translation全般で、GTP-dependentなregulatory factorが使われている。これは正しい順番を保つためにもfidelityを保つためにも。
そこでGTP- Regulated Auxiliary Translation Factorsの一般的な性質をみるところから始める。

GTP-Regulated Auxiliary Translation Factorsは結合しているヌクレオチドによってConformationをChangeする。
GTPとGDPの違いとか、GDPとGDP+Piの違いとかで形がかわる。

Conformationの違いで様々なTranslation Machineryとのアフィニティが変わる。

そして典型的にはGTP-boundだとaffinityが増し、GDP-boundだとaffinityが低下する。

このように同じタンパク質のaffinityを変更していって反応を進める。
このGTPの加水分解には、EF-TuとEF-Gが、Aサイトに何らかの形で結合して行っている。

### 様々なフェーズでみられるGTP-Regulated Auxiliary Factorsの数

- initiation... eukaryotesで2、バクテリアで1
- elongation ... 2
- termination ... 1

## EF-TuとtRNAのAサイトへの動員

どのようにaminoacylated tRNAがAサイトにやってくるかを見て行こう。
バクテリアとEukaryoteはほとんど同じように進むので、バクテリアを前提にタンパク質の名前は書き、あとでEukaryoteの補足を入れる。

まずAサイトがemptyな状態であるのが開始条件。
そしてGTPと結合したEF-Tuが必要（イーエフティーユーと読む）。

EF-TuはGTP状態の時にはaminoacylatedなtRNAと結合する。GDP状態の時には結合しない。

EF-Tuがaminoacylated tRNAと結合していると、aminoacylated tRNAの末端は反応の触媒からアクセス出来なくなる。
つまりEF-Tuが結合している間は反応が起きない。

なお、aminoacylatedされてないtRNAとは結合しない。

EF-TuとAA-tRNAが結合したものがAサイトに運ばれてくる。
このtRNAのanticodonがcodonと一致すると、リボソームのfactor binding site、またの名をsarcin-ricin loopがEF-Tuと相互作用してConformation changeを起こしてGTPの加水分解を促す。

これがEF-Tuのreleaseを促し、tRNAをAサイトに置いたままEF-Tuが離れていく。

### Eukaryoteとバクテリアのタンパク質の名前の対応

| バクテリア | Eukaryote |
| ---- | ---- |
| EF-Tu | eEF1 |
|EF-G| eEF2 |

eEF1はEukaryotic Elongation Factor 1の略。

## EF-TuとAccommodationへの流れ

この辺の挙動についてのアニメーションがyoutubeに上がっている。これについての説明。

[New_decoding_minor_musical_opt2_title.mov - YouTube](https://www.youtube.com/watch?v=qOojy0QBF8g)

### コドンとアンチコドンのペアリングが引き起こす変化

まず、EF-Tuとaminocylated tRNAの結合物がやってくる。

コドンとアンチコドンがマッチすると、EF-Tuとaa-tRNAに様々な変化が起こる。

そしてさらに、リボソームのsmall subunitの30S（の中の16S rRNA）の三つの塩基とmRNA、tRNAのアンチコドンが相互作用をするようになる。
三つの塩基はG530, A1492, A1493で、この三つはどのような生物種でも同一の、とてもconservedされた配列となっている。
これがコドンとアンチコドンがマッチングすると二つのAは回転して外に出てきてコドンの最初二つに向き合い、
Gはフリップしてwobble base（と隣の真ん中のbpとも多少）と相互作用する。

これらはbase pairに依存しないminor groove的な相互作用となっていて、
正しくペアリングされている事を認識はするがどういうペアかは気にしない。

AもGも、2'のOHと相互作用する。これはRNAにだけあってDNAにはないOH基。

### tRNAの変形とfactor binding centerによるGTP加水分解

これらによりtRNAが変形し、さらにリボソームのfactor binding centerが（EF-Tuの）Histidineを解放し、
このHistidineがGTPを加水分解する。

加水分解されてGDPになるとEF-Tuのconformation changeが起こり、
tRNAから分離されてリボソームから出ていく。
この過程でtRNAがPサイト側に移動（頭の部分が反転）していき、peptidyl tRNAと接近したポジションに配置される。（このときEサイトのtRNAも出ていくっぽい）。
これをAccommodationと呼ぶっぽい。

これらは、tRNAが正しい時にだけ進む反応で、tRNAの選択肢はヌクレオチドの4種類よりもずっと多い（20種類以上）ので、
TranslationはReplicationやTranscriptionよりも反応が進むのが遅いのも納得できる。

## Codon-AnticodonペアリングのFidelity

Codon-Anticodonのペアリングが正しい事がどのように保証されているか、の観点からメカニズムを見てみる。
なお、信頼性はこれらの仕組みでは10の四乗に一回程度のミスらしい。

まず、GTPの加水分解にはfactor binding centerにちょうど良くEF-Tuが配置される必要があるが、
これは正しいCodon-Anticodonペアリングの時にだけ正しい位置に来る。
tRNAの足の部分の少しのズレでも頭の所では大きなズレとなってfactor binding centerからの距離も大きく離れる。

次にAccommodationの所で、tRNAは元々のEF-Tuと結合していた状態から60度ほど回転する必要があるが、
この時にtRNAが引っ張られるので、下の結合がしっかりしていないとtRNAが離れていってしまう。
これもCodon-Anticodonの正しいペアリングで強く結合している事を保証する。

## ペプチド結合形成のメカニズム

accommodationが終わりtRNAのCCAアームがお互いに隣接すると、ペプチド結合の形成に移る。

ペプチド結合の形成の付近にはタンパク質はなく、RNAだけが存在している。
つまりペプチド結合を形成する触媒はタンパク質では無くRNA。

リボソームのrRNAの触媒になっていそうなあたりをpoint mutationで変異させても、大きな触媒機能の差が見つけられなかった。

だが、tRNAのCCAのAの2'-OH基のOを取ると、この触媒機能はほぼ失われる事が分かった。

[6ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=5)

つまり、ペプチド結合の触媒は、peptidyl-tRNAのacceptor armのCCAのAの2'-OH基が果たしていると考えられている。

## Translocationのメカニズム

ペプチド結合の形成が終わったらmRNAを3 nt移動して、AサイトのtRNAをPサイトに、PサイトのtRNAをEサイトに移動する必要がある。
この移動をTranslocationというっぽい。

ペプチド結合の形成が終わった段階では新しいpeptidyl-tRNAはAサイトに有って、Pサイトには何もついてないtRNAがある状態となる。

Translocationでやるべきこと

- Aサイトの新規のpeptidyl-tRNAをPサイトに移動、PサイトのtRNAをEサイトに移動
- mRNAを3 nt移動

これがどのように行われるのかを見てみる。

### Classic stateとHybrid state

ペプチド結合が形成されたら、その後Classic stateとHybrid stateという二つの状態を行ったり来たりするようになる。

Hybrid stateは30S サブユニットが少し回転する状態。9度とか。
するとLarge subunitが前に少しズレる。
そしてAサイトのtRNAがLarge subunitの部分だけPサイトに移動し、PサイトのtRNAのLarge subunitの部分がEサイトに移動する（Small subunit側は動かず）。

Large subunit側だけtranslocateされてSmall subunitはtranslocateされていないのでHybrid stateと呼ばれる。

Classic stateとHybrid stateは行ったり来たりする。

### EF-Gとその作用

Classic stateとHybrid stateの間を行ったり来たりしている時に、GTPと結合した状態のEF-Gがやってきてリボソームと結合する。
すると Hybrid state側にロックされてClassic stateに戻らなくなる。
（この機能はBrownian ratchetと呼ばれることも）

この時点ではSmall subunitのAサイトのtRNAとPサイトのtRNAの間に物理的な障壁があって、Small subunitはTranslocateできない。
この障壁はおそらくmRNAの折れ曲がりにも寄与していると思われている。

[7ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=6)

この状態でEF-Gが結合しているGTPを加水分解して、GDPとPに分かれて、その両者がEF-Gと結合している状態になるとConfomation changeが起こり、Small subunitがアンロックされる。

なお、リボソーム側のGTPの加水分解を促進するメカニズムはEF-Tuと同じでfactor binding siteがHistidinをリリースする事で起きる。

このアンロックの結果、Large subunit側がすでにEサイトとPサイトにあるので、それに引きずられて下側もEサイトとPサイトに移動し、
この移動の時にAサイトの足側で結合していたmRNAも一緒に引っ張られて移動する。

最後にEF-GからPがリリースされてさらに形が変わり、リボソームと結合しなくなってリボソームからリリースされる。

つまり、EF-Gには三つの状態がある。

- GTPと結合している状態
- GDP+Pと結合している状態
- GDPとだけ結合している状態

## ペプチド結合形成のプロセスで消費されるエネルギーを見直す

1. AA-tRNAカップリングで ATPが消費される
2. EF-Tu AA-tRNA 輸送にGTPが消費される
3. TranslocationでGTPが消費される

ペプチド結合自体は最初のATP消費のエネルギーが使われている。

では残りのGTPは何をやっているか？
specificityの確保とeventの順番を制御するのに使われている。

- EF-TuのGTPの加水分解
   - codon-anticodonが正しくペアリングされた後にAccomodateする事が保証される
   - その後にペプチド結合が行われる
       - これ以前はAAを物理的にブロックしている状態
   - Specificityにも寄与する
- EF-GとGTPの結合物は、Large SubunitのAサイトが空の時だけリボソームと結合する
   - EF-G GDP + PがTranslocationを駆動する
   - EF-G GDPがreleaseされる、これはTranslocationのあとである事が保証される
   - EF-Tu AA-tRNAがAサイトと結合するのはこのEF-G GDPのreleaseのあとである事が保証される（それまでAサイトは埋まっているから）

このように、イベントが順番に起こることを保証するのにGTPの加水分解が使われている。
またSpecificityの確保にも寄与している。