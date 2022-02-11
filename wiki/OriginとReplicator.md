## ProkaryoticとEukaryoticの複製フォークの比較

[DNAポリメラーゼの種類とトロンボーンモデル](DNAポリメラーゼの種類とトロンボーンモデル.md)では主にE. coliの仕組みを見てきた。
ここではEukaryoticとの比較をする。

| | バクテリア(E. coli) | Eukariotic (イースト菌) |
| ---- | ---- | ---- |
|ポリメラーゼ| DNA Pol III Core | DNA Pol イプシロン(leading), DNA Pol デルタ (lagging)|
|プライマーゼ| dnaG | DNA Pol α/プライマーゼ |
|Sliding clamp| β/dnaN | PCNA |
|Sliding clamp loader| タウcomplex | RF-C (ポリメラーゼと相互作用してなさそうで、仕組みはよくわかっていない） |

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


## Nascent strand mapping (High throughput assay)

Originを見つけるassayの一つ。

- [PngNote ページ6, Origin周辺の図解](https://karino2.github.io/ImageGallery/MolecularBiology728x.html#lg=1&slide=5)

originを見つけるassayは、originと関連する何らかのssDNAを検出するのが基本。

### Nascent strandの特徴

長いleading strand DNAをマップする。どうやってnascent strand DNAだと判定するか？

1. 岡崎フラグメントより長い
2. RNA primerがついている

の条件を満たすものがnascent  strand DNAと思われる。
これらの特徴を持つssDNAをどう検出するか？

### 検出方法

1. 細胞分裂している細胞から始める（asynchronousで構わない)
2. DNAをdenatureする（温度+denaturant （尿素が良く使われる））
3. lambda exonucleaseで処理する
   - これは5'ー＞3'の DNA exonuclease
   - RNAが5'側の端に残っているものは分解されない
   - 処理には12〜24時間かかる
4. denaturing agarose gelでゲル電気泳動して長いssDNAを分離する
5. 岡崎フラグメントより長いものを残す
   - 岡崎フラグメントの長さは生物によって違う
       - E. coliなら1kbくらい。だから1.5kbより長いのを残す。
       - Eukaryoticなら200-400bpくらい。なので0.6kb以上とかで残せば良い。

ステップ3でRNAプライマーが残っているDNA片だけが残る。
分解残りのゴミなども残るが、長いものがnascent strand DNAなのは間違いないので長い方だけ見れば良い。

これでnascent strandが得られる。分析には幾つかの方法がある。

**originがどこかを知っているならPCR**

originがどこかをすでに知っている場合は、PCRのプライマーをoriginのそばにセットする事でPCRで調べる事が出来る。
originからどれくらい離れているかを8段階くらいに分けて、PCRしてみるのが典型的。

**originがどこか知らない場合はDNAシーケンシングかmicroarray analysis**

最近はDNAシーケンシングしてしまうのが主流。

### どうやってnascent strandをDNAシーケンシングするか？

nascent strand DNAはssDNAだが、シーケンシングは普通dsDNAに対して行うもの。
どうやってdsDNAを作るか？

1. ランダム9-mersとannealing
2. DNAポリメラーゼを加えてprimerをextend
3. シーケンス用プライマーを加える為に、dsDNAを4bp recognizing restriction enzymeで1〜3bpカットする
4. DNAリガーゼを使って両端にoligosを追加
5. シーケンシングする

ランダムな9 bpの配列のDNA片を作ってアニーリングさせる。全種類が無くても十分多ければだいたいマッチする、的な考え方。

30bpもあればほとんどの生物の配列の中でユニークに位置を特定出来るので十分。

オリゴヌクレオチド... 20塩基程度の短いDNA配列の事。

シーケンシング出来れば、あとはゲノム配列全体のどこに対応するかをマッピングすれば、originがどこかが分かる。

### Nascent strand mappingの長所、短所

- 長所: 前提知識がほとんど要らない（全体のゲノム配列だけ知っていれば十分）
- 短所: Low resolution - 2〜5kb

Drosophilaの例では、200kbのうち10箇所くらいのoriginが見て取れる。20kbに一回くらいの割合でoriginがある。
各ピークの幅は5kb程度。

なぜlow resolutionかと言えば、nascent strandは割合がすごく少ないから。岡崎フラグメントとつながってしまえば、originの情報は一部失われてしまう。

## Nascent Okazaki Fragment Mapping

DNA ligaseの適切なミュータントが必要だが、もし行えれば高い解像度が得られる手法。

### 手順

strandednessを識別する必要がある（ワトソン側かクリック側か）。

- DNA ligaseの活動を抑制する（あまり長く抑制していると細胞が死んでしまうが、30分とか1時間とかなら平気ないきものが多い）
   - イーストでDNA ligaseのちょうど良いミュータントが知られている
   - 他の生物でも探されていて、見つかりそうと期待されている
- denatureしてサイズでOkazakiフラグメントを分離する（ゲルでも出来るが、ion exchange columnで分離するのが普通）
- dsDNAにしてシーケンシングする
   - strandednessの情報を維持する必要がある

人間のY染色体のような例外を除けば、dsDNAの二本はそれぞれ違う配列になっているので、単にマッピングを行えばどちらかは分かる。

### シーケンスして行う事

- フラグメントのシーケンシングをして、それをゲノム配列にマッピングする（最初に一致した位置を使う）
- 50bpとかでbinningして、そこで始まっているフラグメントの数を数える（30〜50bpのビンが良く使われる）
   - binningする事でフラグメントの数がそこまで大量でなくてもbinを十分カバー出来る
   - 各塩基でカウントしようとすれば、十分の頻度を稼ぐ為には全ゲノムの数百倍のDNAをシーケンスする必要がある。
- 上をワトソン、下をクリックとしてカウントしたヒストグラムをプロット  
＞ワトソンからクリックへと急激に遷移している所がオリジン
   - フォークがぶつかる所(terminatorと呼ぶ)では、okazakiフラグメントはお互いに離れる側に伸びているのでそれも分かる（originと比較すると徐々にstrandednessが変わる）

解像度は200bp〜500bpの高解像度が得られる！
シグナルの量も多い。ちょうどRNA primaseが残っているタイミングを得る、というようなタイミング的厳しさが無いから。

### 長所と短所

- 長所: 高解像度
- 長所: Efficiencyの情報も得られる
- 短所: DNA ligaseを抑制出来る必要がある

30bpは平均して`4^30`ゲノムに一回当たる頻度なので、ほぼ一意。
現実的には8bpくらいでもだいたいユニーク。

## Replication Timing Assay

originは付近のDNAよりも先に複製されるという事実を利用する。

### 手順

1. synchronousな細胞群でreplication開始前のものたちを用意する
2. 開始前の時点で幾つかのサンプルを取得（unreplicated DNA）
3. synchronouslyにSフェーズを開始する
4. 複製の間、定期的にサンプルを取っていく（複製にかかる時間は生物によって数分から15〜20時間までまちまち）
   - 6〜12回くらいサンプルを取得する
5. unreplicatedを赤に、replicatedなタイミングで取得していったものを緑にラベルする
   - Denature DNA
   - ランダム9-mer DNAプライマーを追加
   - fluorescent dTTPとDNAポリメラーゼでextend
6. unreplicatedとreplictedのDNA量を同じ量にして混ぜて、microarrayにかける(個々が60bpの配列）
   - 260の吸光で量を同じにするか、同じナノグラムを加えるかする

microarrayは、replicatedとunreplicatedが同じ数なら黄色、repliatedが多ければ緑の度合いが増す。
色から両者の比率が分かる。

unreplicatedな方は染色体のどの位置も同じ数だけある。
replicatedな方は複製中の範囲は、他の場所の2倍ある。

originのあたりは緑の度合いが高いはず。

hybridizeしやすい配列としにくい配列があるが、ratioを比較しているので問題無い。

### 長所と短所

- 長所：前提知識が要らない
- 長所：特殊なミュータントを必要とせずどの生物でも使える
- 短所：解像度はいまいち（1〜3kb）