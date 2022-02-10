## ProkaryoticとEukaryoticの複製フォークの比較

[[DNAポリメラーゼの種類とトロンボーンモデル]]では主にE. coliの仕組みを見てきた。
ここではEukaryoticとの比較をする。

### バクテリア(E. coli)

- ポリメラーゼ: DNA Pol III Core
- プライマーぜ: dnaG
- Sliding clamp: β/dnaN
- Sliding clamp loader: タウcomplex

### Eukariotic (イースト菌)

- ポリメラーゼ: DNA Pol イプシロン(leading), DNA Pol デルタ (lagging)
- プライマーぜ: DNA Pol α/プライマーぜ
- Sliding clamp: PCNA 
- Sliding clamp loader: RF-C (ポリメラーゼと相互作用してなさそうで、仕組みはよくわかっていない）

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

## 細胞分裂の用語

細胞生物学の復習。

- [PngNote ページ4, Tautomer Formation](https://karino2.github.io/ImageGallery/MolecularBiology728x.html#lg=3&slide=1)
- [PngNote ページ5, Tautomer Formation](https://karino2.github.io/ImageGallery/MolecularBiology728x.html#lg=4&slide=1)

### G1フェーズ

G1フェーズでは、以下のチェックが行われる

- DNAの損傷は無いか
- 十分な栄養があるか
- 細胞のサイズは十分か

またG1フェーズで細胞分裂を開始する準備が行われる。originがタンパク質によって識別されたりヘリカーゼが付加されたり。

### Sフェーズ

実際に複製が行われるフェーズ。

### Mフェーズ

MITOSIS。４つのサブフェーズに分けられる。

- prophase: sister chromatidsがcondenseされて核の膜も消える
- metaphase: microtublesとcentrosomesによって構成されるspindleがsister chromatidsに付加され、細胞の赤道面に並ぶ
- anaphase: sister chromatidsがスピンドルによって反対極にひっぱられていく
- telophase: 核膜が復活し２つの核になる

なお、このあとにcytokinesisという細胞が実際に分裂するフェーズがあるが、これは厳密にはmitosisのあとのフェーズと解釈されるらしい。

### CyclinとCDKによる制御

各フェーズの間はcyclinと呼ばれるタンパク質によって制御され、cyclinはCyclin Dependant Kinase、CDKによってactivateされる。