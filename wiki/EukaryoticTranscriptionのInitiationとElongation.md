前: [EukaryoteのDNAElements](Eukaryote%E3%81%AEDNAElements)

Initiationは[バクテリアにおけるTranscriptionのInitiation](%E3%83%90%E3%82%AF%E3%83%86%E3%83%AA%E3%82%A2%E3%81%AB%E3%81%8A%E3%81%91%E3%82%8BTranscription%E3%81%AEInitiation)も参照のこと。

## 転写のGTFs

RNA Polymeraseはプロモーターを識別するのにGTFsが必要だった。
RNA Pol IIのGTFには、TF II A, TF II B, TF II D, TFII E, TFII F, TFII Hがある。

TF II Cは無いのか？というと、これはnicked DNAに結合するものとして存在する。
nicked DNAはRNA polymerasesが転写を開始するのに必要なものだった。（[バクテリアのTranscription入門](%E3%83%90%E3%82%AF%E3%83%86%E3%83%AA%E3%82%A2%E3%81%AETranscription%E5%85%A5%E9%96%80)のRNAPを参照）

nicked DNAはnonspecificに転写を開始する。逆にnickを塞げば、specificな転写しか残らない。
nickがなければTF II CはTFとしては機能しなくなり、転写とは関係ない別の役割を果たすだけになる。

TF II GはTF II Hが集まったもの。

TF IIのA, B, E, Fは一つのタンパク質である。TF II Dと TF II Hは大きなタンパク質複合体。

## RNA Pol IIの転写のInitiationのメカニズム

[20ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=19)

1. TF II DがDNAと結合
2. TF II AがTF II Dをstabilizeする（ただしTF II Aは必須では無い、最初は必須と思われてたが実は必須でない事が後から分かった）
3. TF II BがTF II Dと（あれば）BREに結合する
4. RNA Polymerase IIが結合する
5. TF II Eが動員される。これはTF II Hの動員に必要。
6. TF II Hが動員される

TF II DとDNAの結合は、TATA boxがあれば、TF II Dの中のTATA-binding protein (TBP)がTATAと結合する事で起こる。

TATA-binding proteinはminor grooveに結合するという珍しいタンパク質で、しかも結合する時にDNAを大きく曲げるという珍しい性質を持つ。

なお、TBPはRNA Pol II以外でも、RNA Pol Iの転写に必要なSLI（エスエルワン）や、TF III Bにも含まれている。つまり、全てのRNA Polの種類でTBPは必要となる。

ステップ4でRNA Pol IIは主にTF II Bと結合する。
RNA Pol IIの中にTF II FがあってこれはほとんどRNA Pol IIの一部に見えるが、Elongationでこれが簡単に離れる事から別種のTFがRNA Polにくっついていると考えられている。

### TF II Hの２つの役割

TF II Hは２つの重要な役割がある。

- ds translocaseでありATPase。ds DNAをTSS側に押し出す。これがTSSのあたりのDNAをオープンする。
- TF II HにあるCyclin TI/Cdk9 と言われるキナーゼドメインが、RNA Pol IIのC-terminal domainをリン酸化する（Serine 5 phosphorylation）

## RNA Pol IIのCTD (C-Terminal Domain)

TF II Hがリン酸化するCTDについて見ていく。

### CTDの簡単な特徴

- RNA Pol IIの一番大きなサブユニット
- (N側)YSPTSPS(C側)の複数回のリピートからなる
   - イースト 26反復
   - 人間 52反復
- Extended/Unstructured な領域（RNAポリメラーゼのしっぽのような形状）

これがリン酸化されていない時とされている時でどのような役割を果たすかを以下に見ていく。

[21ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=20)

### リン酸化されていないCTDの性質（Mediatorと結合）

CTDは、リン酸化されていないと、Mediatorと呼ばれる大きなマルチタンパク質複合体と結合する

MediatorはTxn Factorsと相互作用する。
この巨大なMediatorが多くのTFsと相互作用する事で、
RNA Pol IIだけでは不十分な多様なspecificityを達成し、RNA Pol IIをプロモーターにローカライズする。

これらの相互作用するTFsはバクテリアで言う所のActivating Factorsと同じような役割を果たしている。

### リン酸化されたCTD（Mediatorをリリース）

CTDがリン酸化されるとMediatorをリリースする。これがRNA Pol IIのプロモーターからの離脱（clearance）を促進する。
RNA Pol IIが進み始めると、Elongationステップに進む事になる。
（Promoter Escape）

もしキナーゼが無くてATPaseだけがあると、open complex stageには進むけれど、
abortive transcriptsだけが行われ続ける。
abortive transcriptionについては[バクテリアにおけるTranscriptionのInitiation](%E3%83%90%E3%82%AF%E3%83%86%E3%83%AA%E3%82%A2%E3%81%AB%E3%81%8A%E3%81%91%E3%82%8BTranscription%E3%81%AEInitiation)を参照。

なお、TF II Hによるリン酸化はCTDの特定の配列に対してのみ行われる。

## Promoter Proximal Pausing Event

多くのプロモーターでは、initiate後に、Promoter Proximal Pausing Eventと呼ばれる現象が起こる。

これはNELFとDSIFと呼ばれるfactorsがRNA Pol IIに結合して起こる。

- NELF: Negative ELongation Factor
- DSIF: DRB sensitive factor
   - DRBはnucleotide analog

これらのfactorがearly processive transcriptionをinhibitし、
通常TSSの25〜60base 下流のあたりでRNA Pol IIを捕捉して留める。

この捉えられた状態から解放されるには、PTEF b（ぴーてふびーと読む）と呼ばれる三番目のfactorが必要になる。

PTEF bは以下を変更する（リン酸化する）

- CTDにある Ser 2
- DSIF
- NELF

そしてこの修正でNELFがリリースされて、elongationが開始される。(DSIFはリン酸化された状態でくっついたまま）。

## GRO-Seqの結果を見る（Bidirectional Txn）

GRO-Seqについては [Assays](Assays)と[Transcription入門](Transcription%E5%85%A5%E9%96%80)を参照。ある時点での転写進行中のmRNAを調べる手法だった。

これを調べてみると、TSSから先が転写されていくのは良いとして、
反対側のstrandも転写されているように見えた。これはプロモーターによるが、多くのプロモーターで見られるらしい。

paused polymeraseの所でたくさんのreadsが見られるのでTSSのdownstreamとupstreamの近くの所で山が見られる。

### ChIP SeqでPol IIを見てみる

ChIP Seqで Pol IIの結合しているDNAの部位を調べると、以下のような結果が見られた。

| Paused? | Expressed? | genesのうちの割合 |
| ---- | ---- | ---- |
| Yes | Yes | 30%以下 |
| Yes | No | No1%以下 |
| No | Yes | 45%以下 |
| No | No | 25%以下 |

TSSの付近にたくさんのreadsがあって、その後にも相対的には小さい頻度だがそれなりにreadsが続くのが一番上で通常の転写に思われる。

3番目のものは、PTEF-bが豊富にあるプロモーターで、pauseがほとんど観測されていないのだと思われる。

### Bidirectional Transcriptionsが起こるプロモーターと起こらないプロモーター(TATA box）

TATA-boxがあるプロモーターはunidirectionalで、無いプロモーターはrobustなBidirectional Transcriptionが観測される。

どうしてBidirectional Transcriptionが行われるのかは良く分かっていない。

このBidirectional TranscriptionはGRO-seqでしか検出出来ない。
northern blotやRNA-Seqでは転写した結果が比較的stableである必要があるが、
この反対向きに転写されたRNAはすぐに分解されてしまう。

## 次: EukaryoticTranscriptionTermination

[EukaryoticTranscriptionTermination](EukaryoticTranscriptionTermination)