## ProkaryoticとEukaryoticの複製フォークの比較

[DNAポリメラーゼの種類とトロンボーンモデル](DNAポリメラーゼの種類とトロンボーンモデル.md)では主にE. coliの仕組みを見てきた。
ここではEukaryoticとの比較をする。

| |  バクテリア(E. coli) | Eukariotic (イースト菌) |
| ---- | ---- | ---- |
| ポリメラーゼ | DNA Pol III Core | DNA Pol イプシロン(leading), DNA Pol デルタ (lagging) |
| プライマーゼ | dnaG | DNA Pol α/プライマーゼ |
| Sliding clamp | β/dnaN | PCNA |
| Sliding clamp loader | タウcomplex | RF-C (ポリメラーゼと相互作用してなさそうで、仕組みはよくわかっていない） |


## 複製のRepliconモデル

複製の方式として提案されたものの一つにRepliconモデルがある。
かつて遺伝子発現はinhivitorで抑制されてそれがなければ発現する、と考えられていた時に、
DNAの複製はinitiatorで始まると考えた所が新しい。

### OriginとRepliconの用語の定義

DNAの複製は幾つかのウィルスを除いて、端からは始まらない。DNAの途中のどこかから始まる。

- Origin: DNAのunwindが最初に起こって合成が始まる物理的な場所(サイト)
  - これはgeneticな用語「では無い」事に注意。
- Origin Efficiency: そのオリジンが細胞分裂をinitiateする割合 (％）
- Replicon: 1つのOriginから複製フォークによって複製される範囲

### Repliconモデルの２つの構成要素

1. Replicator: 染色体の複製を開始するのに必要なDNA配列(これはgeneticな意味で定義された用語）
2. Initiator: Replicatorを認識してactivateするタンパク質

このモデルはすべての生物である程度は正しそうだが、単細胞生物よりも複雑な生物に関してはReplicatorが具体的にどういうものなのかは良くわかっていない。

### OriginとReplicatorの違い

転写で例えると、promoterと転写の開始位置の違いに相当する。
Originは複製の開始位置であって、Replicatorはプロモーターに相当する配列。

だいたいはReplicatorの方が広い範囲でOriginはより狭く、オーバーラップしている。
ものによってはほとんど同じ範囲な事もある。

## 細胞分裂

[細胞分裂の復習](細胞分裂の復習.md)

## 様々な生物のOriginの比較

|生物種|染色体の本数|originの数|ゲノムのサイズ（`10^6`）|
|-----|-----|----|----|
| E.coli | 1本 |  1個 | 4.6 |
|S. cerevisiae(イースト)| 16本 | 350個 | 13 |
|Drosophilia| 4本 | 1200-2万個 | 80 |
|人間| 22+X/Y | 3万個くらい | 3000 |

eukaryoticな生物はだいたいオリジンで30kbくらいに分割される。
複製を高速に行う必要がある生物はもっとoriginが多い。

originの場所は胎児か成人かなどによって変わるが、濃度はあまり変わらない。

eukaryoticなoriginは、それぞれinitiateされるタイミングについて、S-phaseの中の特定のタイミングがある。
S-phaseの初期にinitiateされるorigin、中期にinitiateされるorigin、末期にinitiate されるoriginなど。

序盤のoriginからのフォークが何らかの理由で止まっても、後半のoriginが続きを合成出来る。

## Originを見つける3つのassay

[Originを見つける3つのassay](Originを見つける3つのassay.md)

## Replicator Mapping

[ReplicatorMapping](ReplicatorMapping.md)

