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

[Assays](Assays.md)

現代ではnorthern blotよりはRT-PCRを使う方が多くの上方が得られる。

簡単のため、exonが3つ（intronが2つ）あるケースを考えてみる。
RT-PCRを使ってalternative splicingを調べる手順を以下に示す。

1. 目的の細胞（の細胞質）からRNAを分離する
2. cDNAを作る
3. 興味のある部分をPCRで増やして量を測る

ステップ3に関して。
このケースでは、それぞれのexonに相当する部分とhybridizeする3つのプライマーを作る。

[25ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=24)

一つはforward、2つはreverseのプライマーで、forwardのはexon1とhybridizeする。図中の2Rはexon2と、3Rはexon3とhybridizeする。

1Fと3Rを入れてPCRし、例えば適当な放射線ラベルなどでラベルづけして電気泳動すれば、splicingが1, 2, 3を含むケースと1, 3のみのケースで結果の長さが変わる。

また、1Fと2Rを加えてPCRすれば1, 2, 3なら一定量のバンドが見えるが、1, 3のケースならバンドは見られない。

PCRの効率などはシーケンスによって違ったりもするので、バンドの比率をそのままsplicingの比率とみなす事は出来ないが、
それでもどういうsplicingが多いかをある程度はつかむ事ができる。

こうして、組織によってsplicingのされ方が違ったりとか、状況によってsplicingの仕方が変わるようなものを調べる事ができる。

## RNA-seqでalternative splicingを調べる

[Assays](Assays.md)

RNA-seqを使ってalternative splicingを調べる事も良く行われる。

### RNA-seqの手順

1. mature mRNAを取り出す
2. cDNAを作る
3. cDNAを分割する
4. サイズごとに集める
5. サイズごとにhigh throughput sequencingを行う

high throughput sequencingはnext generation methodsとも言っていた。例としてはIllumina sequencing machineなどがあるとの事。

### 結果から分かる事

まず、サイズの情報が無い、single-end RNA-seq readsの場合を考える。

例えばexon1, exon2, exon3の３つがつながったmRNAがあると、RNA-seqを行えば、exon1, 2, 3のそれぞれのreadと、
さらにexon1と2にまたがったread, exon2と3にまたがったreadが得られる。
これでそれぞれのexonがつながって連続している事が保証され、どのようなmature mRNAになっているかが分かる。

一方、exon1とexon3で構成されるmature mRNAの場合、
exon2のreadが得られないだけでは無く、exon1と3にまたがったreadが得られる。

だがこの手法ではまたがった所のreadsが無いと、どちらのsplicingなのかをはっきり決める事は出来ない。

これにサイズによってより分けた結果サイズの付加情報があるsize-selected paired-end RNA-seq readsの場合、
exon1とexon3のreadsがあってさらにサイズがどのくらいかによって、
大きい場合は間にexon2があるケース、小さい場合はexon1と3が直接つながったケースという事が分かるので、
より確実にどちらのsplicingかが判断できる。

と言っていたがいまいち良く分からない。ただ、もっと複雑なgene、それこそexonが50個とかある場合などもあるとの事で、
こうしたサイズ情報も合わせて考える方が構造をより良く理解しやすいのかもしれない。
そういうものは、数百のオーダーのalternative splicingがある場合もあるとか。

## Alternative Splicingがどのくらい使われているか

Metazoan organizmsとは多細胞生物の動物（植物でない）のうち原生動物を除いたものらしい。＞[後生動物 - Wikipedia](https://ja.wikipedia.org/wiki/%E5%BE%8C%E7%94%9F%E5%8B%95%E7%89%A9)

ここまでAlternative Splicingの機構を見てきたので、次に、それがどのくらい重要なのか、をどのくらい使われているかを見ていく事で考えてみる。

| 項目 | 人間 | ショウジョウバエ |
| ---- | ---- | ---- |
| ゲノム中でタンパク質をコーディングしているgenes | 22180個 | 13937個 |
| 2個以上のisoformsがあるgeneの割合 | 88% | 45% |
| geneあたりの平均isoform数 | 3.4個 | 1.9個 |
| 全isoform数 | 215170 | 29173 |

これらの数字もまだまだ研究中で日々新しいデータが更新されている領域らしい。

なんで人間の平均isoform数が3.4なのにgeneの数と全isoform数の間は10倍近い差があるんだろう？

生物種によりこのように大きく違う。また、人間にはAlternative Splicingはすごく大きなインパクトのある重要な機能といえる。