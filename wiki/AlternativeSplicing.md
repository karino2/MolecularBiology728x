前: [SplicingProofreading](SplicingProofreading.md)

- constitutive ... 本質的な、構造性の
- isoform ... 機能的に似ていてアミノ酸配列も似ているタンパク質同士を呼ぶ呼称。

## Alternative Splicing概要

高等な真核生物では、一つのRNAは複数のsplicing方法があるのが普通。AlternativeSplicingは普通といえる。

人間においてｈ，exonの数は平均7〜8個で、一方、geneは平均3種類の異なる形にspliceされる。

### Alternative Splicingの種類

- constitutive alternative splicing ... いつも起こるalternative splicing。タンパク質のfamilyを生成する時など。
- regulated alternative splicing ... 細胞の種類の違いなどによって生成されるタンパク質が違うものなどで使われる。
   - ある細胞では細胞膜に結合してほしく、それ以外の細胞では細胞質にいてほしいタンパク質など。alternative splicingでドメインを削除したりする。

## northern blotでalternative splicingを調べる

1. RNAをgel electrophoresisで分離
2. RNAをmembrane（通常はニトロセルロース）にtransfer
3. ラベル付けしたDNAプローブをRNAにhybridize

ようするに電気泳動したRNAをラベル付けして撮影するような事がしたいのか。

DNAプローブで特定のgeneの特定の配列をターゲットにすると、alternative splicingが起きて無ければバンドは一つになる。
alternative splicingが起きていると複数に分かれる。

さて、splicingの途中経過を検出していた実験と比較して、mature mRNAだけをどうやって検出したらいいだろうか？

mRNAが核から核外に輸送されるのは、mature mRNAになってからだけ。
だからsplicing intermediateは核の中にしか存在しない。
そこで細胞質から取る、というのが考えられる。
さらに細胞にはintronが含まれてるRNAを破壊するpathwayがあるので、細胞質には無いというのはより確かな事といえる。

## RT-PCRでalternative splicingを調べる

現代ではnorthern blotよりはRT-PCRを使う方が多くの上方が得られる。
RT-PCRについては[Assays](Assays.md)も参照のこと。

簡単のため、exonが3つ（intronが2つ）あるケースを考えてみる。
RT-PCRを使ってalternative splicingを調べる手順を以下に示す。

1. 目的の細胞（の細胞質）からRNAを分離する
2. cDNAを作る
3. 興味のある部分をPCRで増やして量を測る

ステップ3に関して。