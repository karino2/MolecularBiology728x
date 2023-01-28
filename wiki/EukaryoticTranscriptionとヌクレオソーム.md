ヒストンやヌクレオソームについては[クロマチン、ヒストン、ヌクレオソーム](クロマチン、ヒストン、ヌクレオソーム.md)も参照。

## 転写におけるヌクレオソーム入門

Eukaryoticではヌクレオソームにパッケージングされているので、
基本的に転写は抑制されている。
バクテリアの制御が基本的に抑制側なのに対し、
Eukaryoticの制御はポジティブ、つまり基本状態である抑制を乗り越えるための仕組みとなっている。

- Eukaryoticの ヌクレオソーム/クロマチン は基本的にinhibitorである
- Eukaryoticのactivatorは基本的にはこのinhibitionに打ち勝つように機能する

### RNAポリメラーゼの種類と役割

それぞれ以下を合成

- RNA Pol I ... rRNA
- RNA Pol II ... mRNA
- RNA Pol III ... small RNA (主にtRNAなど）

### MNase-seqとヌクレオソームとTSS

MNase (microcochal nuclease）でヌクレオソームを切断する。
MNaseでは147bpごとの断片に裁断される。
これをゲノムにマッピングするのがMNase-seq。

今回は Saccharomyces cerevisiaeの5000個のプロモーターに対してマッピングしてみると、
TSSよりあとに集中していて、
TSSよりも上流の所には逆にnucleosome-freeな領域がある。

## ヌクレオソームのアクセシビリティ

ヌクレオソームのどこにあるかでアクセシビリティに差が出る。

[12ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=11)

さらに高次の30nm ファイバーなどのストラクチャーのどこに位置するかで、もアクセシビリティが変わってくる（内側がアクセスしづらい）。

さらに高次のストラクチャーを形成した時（solenoidやzig-zagなど）には、その構造の内側はよりアクセスがしづらい。

並べると、

1. 裸のDNA
2. 10nm ファイバー
3. 30nm ファイバー
4. 高次ストラクチャー

とアクセスしづらくなる。

## ヌクレオソームのFunctionと位置の制御

ヌクレオソームの制御に関わる２つの酵素を見ていく。

1. Nucleosome Remodeling Complexes
    - ATPと結合して加水分解する事でヒストン octamerをスライドする
    - ヒストン octamersを取り除いたり２つのDNA間でヒストンoctamersを置き換えたりする
    - ヒストンサブユニットを置き換える

### Nucleosome Remodeling Complexesの性質

1. ヒストンoctamerに結合
2. dsDNA Translocases

translocaseは[RecombinationalRepair](RecombinationalRepair.md)のRuvBでも出てきた。

[13ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=12)

ヌクレオソームの片方のDNAを押し出して、もう片方を引っ張るような挙動をする。
まず押し出す方の最初の5つくらいのヌクレオソームとの結合を弱めて、その少し先にスペースがあってそこにDNAの小さなループ（輪っか）ができて少し引っ張られる。引っ張られたあとは反対側までその輪っかが移動して反対側が押し出される感じになる。

なおヒストンが取り除かれるケースのメカニズムは良くわかってない。

## ヒストンのVariants

カノニカル（標準的）なヒストン H2A, H2B, H3, H4の他に、それらのVariantsが存在する。
特にH2AとH3にある。
役割が分かっているものもあればなんで置き換わるのか良く分かっていないものもある。

### CENP-A

H3にVariantにCENP-Aというのがある。これはkinetochore形成の過程を調べていて発見されたもので、これがセントロメアとmicrotubuleの相互作用をする部分になっている。
そしてこのCENP-AはセントロメアのヌクレオソームのH3とだけ置き換わる。

### H3.3

transcriptionの部分に多く見られる。transcriptionを助けていると思われるが良く分かっていない。

### H2A.X

double strand breakの起こっている所でこれに置き換わる。これは素早くリン酸化されて、このリン酸化されたH2A.Xを検出するantibodyがあって良く利用されている。
H2A.Xになんで置き換わるのか、目的は良く分かっていない。

### H2A.Z

nucleosome free regionsの隣接した所に頻繁に見られる。どういう役割を果たすかは分かっていない。

## 再開してのメモ（2023-01-19 ）

前回はHiston variantsの手前で時間切れでコースがclose してしまい、今回再オープンしたのでここから再開した。
最初は結構忘れてて苦戦したが、このsequenceの終わりに来る頃にはだいぶ思い出してきた。
やはりノートちゃんと作っておいてgrepできるのが良いね。

でもやっぱりこれだと一週間 1 Unitは無理だなぁ。1.5週間で1 Unitくらいが目標だろうか。1 Learning Sequence 1日は無理なので、
どうしてもLearning Sequenceだけで3〜4日は掛かるし、その後クイズが2日となると、休憩無しで毎日やる事になってしまう。それは厳しい。
1.5 週なら一週間でLearning Sequenceを終わらせて、次の0.5週間でクイズ、という事でまぁまぁサステイナブルなペースに思う。

残りは5 Unitなので、7.5 weeks。3月8日にコースクローズとの事なので、約7 weeks…って0.5 weeks溢れてるじゃん！
いや、たぶん途中からクイズは無料アカウントではアクセスできなくなるはずなので、そうしたら7 weeksに収まるか。＞Audit trackは最初の3つのクイズだけらしい

## 次

[HistoneModificationによる転写制御](HistoneModificationによる転写制御.md)