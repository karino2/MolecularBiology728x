## ProkaryoticとEukaryoticの複製フォークの比較

[DNAポリメラーゼの種類とトロンボーンモデル](DNA%E3%83%9D%E3%83%AA%E3%83%A1%E3%83%A9%E3%83%BC%E3%82%BC%E3%81%AE%E7%A8%AE%E9%A1%9E%E3%81%A8%E3%83%88%E3%83%AD%E3%83%B3%E3%83%9C%E3%83%BC%E3%83%B3%E3%83%A2%E3%83%87%E3%83%AB)では主にE. coliの仕組みを見てきた。
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

[細胞分裂の復習](%E7%B4%B0%E8%83%9E%E5%88%86%E8%A3%82%E3%81%AE%E5%BE%A9%E7%BF%92)

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

[Originを見つける3つのassay](Origin%E3%82%92%E8%A6%8B%E3%81%A4%E3%81%91%E3%82%8B3%E3%81%A4%E3%81%AEassay)

## Replicator Mapping

[ReplicatorMapping](ReplicatorMapping)

