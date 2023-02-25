- wreak 引き起こす
- havoc 大破壊、大損害
- phage (バクテリオ）ファージ。バクテリアを宿主とするウィルスの事。
- resect 切除する
- awry 不首尾に、斜めに、間違って

## Homologous Recombination概要

Homologous Recombination自体はPart 1の[RecombinationalRepair](RecombinationalRepair.md)でもやった。内容的にかぶる所もあるので向こうも参照の事。

Homologous Recombinationには大きく２つの役割がある

- DSBsの修復
- ゲノムの多様化（Meiosisを通して）

## Homologous Recombination復習

Homologous Recombinationのステップを簡単に見直しておく。

[34ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=33)

1. DSBの5'末端が切除される
2. Recombinaseによりstrand invasionが起こる
    - invadeしたstrandが反対のstrandを押し出し、D-loop (Displacement loop）と呼ばれるループが形成される。そしてHolliday Junctionが出来る
   - invadeしたstrandの端でPTJ(Primer Template Junction）が形成される
3. PTJから合成が行われて、D-loopが大きくなる。伸長しているのと反対側のstrandに2nd invasion siteが形成される
4. extendが十分に行われると上のstrandと結合し、もうひとつのHolliday Junctionが形成される。また、2nd invasion siteもextendされてligateされる。
5. Double Holliday Junction が二種類の方法のどちらかで解決される
     - splice/crossover product ... Aとcが、aとCがつながるケース。
     - non-crossover/patch product ... AとCが、aとcがつながるケース。
     - Aの鎖とaの鎖がanealする領域ではミスマッチリペアの仕組みが起動してどちらかに揃えられる。その結果、gene conversionが起こる。

Gene Conversionって何？と思って以下を見つける。

[General Recombination - Molecular Biology of the Cell - NCBI Bookshelf](https://www.ncbi.nlm.nih.gov/books/NBK26898/)

つまり、両方のgeneをanealした状態からどちらか一方に揃えられる結果、本来なら半々に分かれるはずのgeneが、偏りが出る（父方からのが多くなるとか母方からのが多くなるとか）事をgene conversionと呼ぶらしい。

## EukaryotesのHomologous Recombination

バクテリアはプログラムされたDSBは無いけれど、Eukaryotesにはある。

RAGタンパク質はimmune locusをカットしてVDJ recombinationを引き起こす。これはプログラムされたdouble stranded break。
なお、このDSBsはHomologous Recombinationでは無くNHEJで修復されて、抗体の多様性を産む。

Spo11というタンパク質がある。

### バクテリアとEukaryotesの比較

バクテリアについては[RecombinationalRepair](RecombinationalRepair.md)で見た。ここでは対応するタンパク質のEukaryotesのものを見てみよう。

|  | E. coli | eukaryote |
| ---- | ---- | ---- |
| DSB formation | DNA dmaange | DNA damageまたはSpo11 |
| DSB recognitionとresection | RecBCD | MRX/Sae2/Exo1 またはSgs1とDna2 |
| strand invasion/ homology search | RecA | Rad51（それとmeiosisの時はDmc1） |
| branch migration | RecA, RuvAB | Rad51(それとmeiosisの時はDmc1） |
| Holliday junction resolution | RuvC | ResAか Mus81/Eme1 |

branch migrationではバクテリアはRecAとRuvABのどちらも行う事が出来るが、RecAは遅く、RuvABの方が遥かに効率的に行えるのだった。

一方でEukaryoteではRad51しか無い。このRecombinaseがbranch migrationも行うので、E. coliよりもゆっくり進む。

EukaryotesのHolliday junction resolutionでは、どちらのタンパク質が実際に細胞内で使われているかはまだわかっていない。
どちらもHolliday junctionをカットする事はわかっている。

## 細胞分裂の復習

[細胞分裂の復習](細胞分裂の復習.md)

## Meiotic Recombination

Eukaryoticなrecombinationの一つ、Meiotic Recombinationを見ていく。

### Meiosisにおけるsegregation

meiosisはreplication, segregation I, segregation IIと進む。Iでhomologsが分離され、IIでsister chromatidsが分離される。

Meiosisの時にはまず染色体が複製されてsister chromatidsが出来る。そしてhomologsが対になる。
sister chromatids同士はcohesinが結びつける。
homologs同士はrecombinationで結びつく。
recombinationで反対の足がcohesinに入る。

segregation Iでcohesinの腕の部分がなくなり、真ん中だけ残される。腕の部分が無くなる事でrecombinationしているhomologs同士を結びつけているのが無くなるのか。

染色体一つにつき、少なくとも１つのDSBが必要になる。
recombinationが最低でも一つは無いと、homologsの分離がうまく行かないから。

イースト菌では各ペアの染色体ごとに必ず一つのcrossoverがあり、一つしか無い。
どうやって一つしか無い事を保証しているのかは良くわかっていない。

哺乳類は2〜3個のcrossoverがある。

### メカニズム

recombinationの始まりは、Spo11によるDSBの形成。Spo11はdimerのタンパク質。
これは損傷とは別の、programされたDSBと言える。

[35ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=34)


Spo11はType II topoisomeraseと同じような事をする。dsを、1〜2bpくらいずれた所に切れ目を入れる。
Spo11のtyrosineと5'末端が共有結合を形成する。
こうする事で、DSBの出来たDNAをバラバラにせずに同じ場所に留める。

このまま、recombinationするか、または再結合する。再結合する場合はtopoisomeraseと同じような振る舞いとなる。
（つまりこれは可逆反応）

だが、DSB repair machineryが起動すると不可逆となる。

Sae2とMRX complexが動員されて、これが5'末端に向けてDSBの付近をcleaveしていく。
これは3'から5'へのexonuclease。
これがSpo11が押さえている5'末端へcleaveをしてく。

次にExo1（またはSgs1とDna2）が5'から3'へとcleaveしてく。

これで、3'末端と、resectされた5'末端を持つDNA片が出来た。
ここからは、RecombinaseがRad51である事以外はバクテリアと似た振る舞いをする。
Meiosisの場合はRad51にDmc1も結合してrecombinationする。

どうも3'末端があるとRad51がやってくるっぽい。Dmc1が無いとうまくいかないので何かはやってるっぽいが、
biochemical assayでDmc1を加える事による違いを突き止める事は今の所出来ていない。

以後はstrand invasionが起きてDouble Holliday Junctionが形成されて〜と続く。

なお、Rad51/Dmc1はhomologousをターゲットとする（sister chromatidsをターゲットとしない）。

ここまで述べてきたrecombinationの各反応に配列依存な部分は無さそうだが、
哺乳類の中に大量にあるrepeatされてる配列部分には起こらない事から、何か仕組みはある模様。
リピートしている領域はheterochromatinに入っている事が多く、これはとても凝集していて外からアクセスしづらいので、
そういう構造的なものでブロックされているのかもしれない。

またrecombinationが起こりやすい場所はある。でもメカニズムは良くわかっていない。