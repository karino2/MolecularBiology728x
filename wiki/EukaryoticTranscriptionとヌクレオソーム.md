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
    - ヒストン octamersを取り除いたり２つのDNAで置き換えたりする
    - ヒストンサブユニットを置き換える

### Nucleosome Remodeling Complexesの性質

1. ヒストンoctamerに結合
2. dsDNA Translocases

translocaseは[RecombinationalRepair](RecombinationalRepair.md)のRuvBでも出てきた。

[13ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=12)

ヌクレオソームの片方のDNAを押し出して、もう片方を引っ張るような挙動をする。
まず押し出す方の最初の5つくらいのヌクレオソームとの結合を弱めて、その少し先にスペースがあってそこにDNAの小さなループ（輪っか）ができて少し引っ張られる。引っ張られたあとは反対側までその輪っかが移動して反対側が押し出される感じになる。

なおヒストンが取り除かれるケースのメカニズムは良くわかってない。