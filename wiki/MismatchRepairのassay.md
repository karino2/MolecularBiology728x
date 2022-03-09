ミスマッチ修復(MMR)のassayを見ていく。

- lysed 溶解する

## ファージを使ったMethyl directedに関するin vivo assay（Heteroduplex DNA Analysis）

ファージを使う。E. coliにファージを感染させて培養する。

まずファージはE. coliに感染すると自身を複製して最後にE. coliを溶解して破裂させて周りに飛び散る。
そして周りに感染する。ペトリ皿で培養すると破裂したあたりにplaqueという白い領域が出来る事でファージのいる場所がわかる。

普通の強いファージと、変異して感染力が弱く、cloudyなplaqueが出来る２つのファージを使う。

こんなファージとE. coliを使って、MeselsonとStahlの半保存的複製の実験と似たアイデアでファージのdsDNAを作る。

### MeselsonとStahlの半保存的複製の実験での重さによる分離

MeselsonとStahlの半保存的複製の実験については、700xも参照。＞ [MITx 7.00x Introduction to Biology - The Secret of Lifeの受講記録](https://karino2.github.io/2021/07/19/the_secret_of_life.html)

DNAが半保存的に複製される事を示した実験。
重いNを使ったDNAと、軽いNを使ったDNAをハイブリッドしたものを、ほぼDNAと同じ密度だが微妙に濃さで違いが出るようなCsCl内で遠心分離する事で、密度で分離出来る。
長さは関係ないというのがポイント。

これを使う事で、

- 重いN２つのdsDNA
- 重いDNAと軽いDNAのハイブリッド
- 軽いdsDNA

の３つに分離する事が出来る。

このアイデアを応用する。

### 一箇所だけ違う、methylatedされているものとされてないもののdsDNAを作る

２つのphageを使う。

- phage I: ワイルドタイプ、クリアなplaqueになる
- phage II: ポイントミューテーションで一点だけ異なり、あまり繁殖力が強くないミュータント (cloudy なplaqueになる）

この２つのファージを、以下の２つの条件で培養する

1. MethylatedなE. coli(wild-type)でheavy（N15とかC13で培養）
2. non methyl containingなミュータントのE. coli（DAM methylaseが無い変異体とか）

1で培養するとファージのDNAはmethlateされる。2で培養されるとファージのDNAはmethlateされない。
この２つをハイブリダイズして、この２つがハイブリダイズされたケースをMeselsonとStahlの実験と同様に重さで分離する。
(heteroduplexと呼ぶらしい）

ハイブリダイズは両方入れて茹でて冷ます。

半分重くて半分軽いDNAは、一箇所だけミスマッチのあるdsDNAとなる。

### ハイブリッドのdsDNAを培養した結果はどうなるか

ファージIIはcloudyになりファージIはクリアになる。
この２つをハイブリッドしたものを培養するとどうなるか？

MMRでmethlatedでない方が修復されるとすると、どちらのE. coliで培養するかで結果を予測出来る。
no methyl containingなE. coliをdam-と書くと、

1. phage IIをdam-で培養した場合、MMRでIになるのでクリアなplaque
2. phage IIをdam+で（つまりIをdam-で）培養した場合、MMRでphage IIになるのでcloudyなplaque
3. どちらもdam-の場合はどちらもカットされて修復されうるのでIとIIになる可能性は50%なので、cloudyとクリアが50%ずつになる
4. どちらもdam+だとMMRされず、そのあと複製されるとそれぞれIとIIになるのでmixedとなる

## Reversion assay - Nick Directedに使う

Reversion assayに必要な条件。

- ampicillinなどの選択出来るgeneのpoint mutationの細胞が必要
- MMの比率をあげる必要がある
   - ミスマッチを起こすmutagenを使う
   - ミスマッチを良く起こすDNAポリメラーゼの変異を使う

これらを使って、

1. selective mediaで生き残れないpoint mutationの細胞を培養する
2. selective mediaで（死ぬはずのpoint mutationを）選択
3. 生き残りを探す、これをwild typeへのreversionとみなす

ほとんどのケースでは全滅する訳だが、MMの比率が高ければ偶然生き残る率が上がる。
具体的には以下のようなオーダーの話。

| STRAIN | Wild-Typeへのinversion |
| ---- | ---- |
| WT(ミスマッチを防ぐ機構に関して正常) | 1/10^10 |
| ポリメラーゼmut | 1/10^8 |
| MutSの変異 | 4/10^6 |

Wild-Typeに複数の意味があるのでややこしいが、MMを起こすような変異が無いという意味のWTと、selective mediaで生き残れるという意味でのWTの２つの意味があるので注意。

良く分からないので補足。

MutSなどの Nick DirectedなMMRが正常に働いているかどうかを検出するassay、という事だろうか。
でもこれではNickがどうとか全然関係なく見えてしまう。
ただMMRの比率のようなものはこれで測れている気はする。

## Restriction Site Repair - In vitro MMR assays

MMRのassayをin vitroで行う場合には、制限酵素の作用する配列に関してのMMが非常に使いやすい。
というのは一箇所でも変異があれば、制限酵素は一切カットしないから。

EcoRIはGAATTCをカットするが、一箇所でもMMが起こればカットしない。とてもsensitiveなので使いやすい。

### Methyl directedでの例を考えてみる

例えばGAATTCのうち片方がpoint mutationしている場合に、片方がmethylatedでもう片方がmethylatedでないようなハイブリッドに対してMMRが起こるようなケースを考える。

例えば変異が起きた方がun-methylatedで、正常な方がmethylatedな場合、MMRではun-methylatedな方が修正されるので、
修正後は制限酵素でカットされるように戻ると期待される。

例えば正常な場合に2箇所でカットされて、MMによってそれが一箇所になっている場合、
MMRされたかどうかは制限酵素を加えてカットしてみて、カットされた場所が一箇所か２箇所かで判定出来る。

MMRをassayしたい場合はMMRに必要なタンパク質をpurifyしてincubateしてから、制限酵素でカットしてみる事になる。

カットが何箇所でされているかを検出するのはnon-denaturing gelで分離してみれば良い。

### Nick directedでの例を考えてみる

Methyl directedとほとんど同じだが、片方にmethylatedじゃなくてニックを入れてみてMMRすれば良い。
他の手順は同様。

## Incision assay - MMRの開始の時にどこにカットが入るかを調べる

MMのあるcircularなdsDNAに対してMMR proteinを入れてカットされるかを調べる。
methyl directedでもnick directedでも出来る。

Indirect end labeling法と同じような事をする。Indirect end labelingは[複製の開始に関わるassay達](複製の開始に関わるassay達.md)を参照。

今回は少し状況は簡単で、nickの場所がある程度予想出来る。
MMの一番近くのMethylatedされている所にnickが入ると思われるので、そこに合わせたprimerをannealすれば良い。

ニックがあればextendしていった時にニックで止まる。
ニックが無ければずっと伸びてしまう。

どちらであるかをdenaturing acrylamide gelで分離して調べれば良い。（合成されるDNAが凄く短いのでこの場合はdenaturing gelを使う。600bp以下くらいを検出する場合はdenaturingが適切な場合が多い）。

このassayを行う注意点としては、MMRのプロセスをニックが入る所までで止まるようにしておく必要がある。
フルにリペアが行われてligaseがつなげてしまえば検出出来ないから。
だからMMRに必要な全てを入れるのでは無く、MutH, MutL, MutSなどだけを入れる。

## Methylationの度合いを検出するenzymeたち

Dpn1, Mbo1, Sau3AIの３つがある。

| ターゲット | DpnI | MboI | Sau3AI |
| ---- | ---- | ---- | ---- |
| unmethlated(両方) |  | v | v |
| hemimethylated |  |  | v |
| fully methylated | v |  | v |

つまり、Sau3AIはmethylatedされてようとされてなかろうとGATCをカットし、
DpnIは両方メチル化されてる時だけカット、MboIは両方メチル化されてない時だけカットする。

