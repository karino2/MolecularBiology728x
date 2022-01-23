これは、705xのProtein Purificationと似た話になっている。＞[ProteinPurification - Biochemistry 705x](https://karino2.github.io/Biochemistry705x/ProteinPurification)

## 単語

- assay 分析、検査
- incorporate 取り入れる、組み込む
- sequester 隔離する
- smear シミ

## DNAポリメラーゼの合成活動の計測(assay)

DNAポリメラーゼの活動の計測には以下のような手法がある

- Incorporation assay
- Primer extension assay

## Incorporation assay

- ポリマー（この場合はDNA）とビルディングブロック(この場合はdNTPs)を分離出来る必要がある
- DNA複製の他に転写やプロテイン合成など、ポリマー全般に使える手法

以下、Incorporation assayを行う手順について。

### 1. Primer template junctionを作成する

M13というファージを使う。
これはssDNAの円環のDNAで、5000 baseの長さ。 ＞ [ゲノムのオーダー](ゲノムのオーダー.md)

まず20〜25 base pairのprimerを合成。これはネットで注文すると翌日には50baseくらいの長さのprimerは届くらしい。

このprimerが届いたら、ssDNAとprimerを入れた溶液を100度の熱源に3分くらい接しておいて、
そのあと熱源から離してランチに行って帰ってくるとannealedされているらしい。

ssDNAは一本でも塩基同士の水素結合で折り曲がるらしい。熱するのはこの水素結合をほどいてannealeしやすくする為らしい。

### 2. BUFFERとDMAポリメラーゼを追加

バッファは以下のようなもの

- 中性のpH
- 50〜100 mMのsalt (NaClの事か？)
- マグネシウムアセターテか塩化マグネシウムを1〜2 mM

### 3. dNTPsを追加して反応を開始

この手法のためには、少なくとも１つのdNTPはラベルづけされている必要がある。
ラベルは蛍光ラベルか放射線ラベルが使われる。

**蛍光ラベル**

蛍光ラベルはだいたいはthymidine analogが使われる、つまり塩基に付与される。
thymidineはチミンの塩基の名前＞[ヌクレオチド](ヌクレオチド.md)

メチル基がありさえすれば付与出来るらしい。

**放射性ラベル**

NHのHをトリチウム（三重水素）にしたものや、リン酸基をP32にしたものが使われる。

### 4. Take time point、そして反応を止める

ちょっと訳がわからなかったので英文のままで。たぶん時間を計測しつつ特定の時点で溶液を分けておき、計測するって事だと思うが。

取り分けたらEDTAかSDSを使って反応を止める。

- SDSについては705xのノート参照＞[SdsPage - Biochemistry 705x](https://karino2.github.io/Biochemistry705x/SdsPage)
- EDTAは[BloodClotting - Biochemistry 705x](https://karino2.github.io/Biochemistry705x/BloodClotting)でCa2+を血液から取り除くのに使っている

### 5. DNAとdNTPsを分離する

幾つか方法がある。

- Filter Binding (古いやり方) 
- Gel Electrophoresis

### Filter Binding

DNAとdNTPを分離するのに使われる、古くからあるやり方。

- 正に荷電した紙のフィルタを使う(DE-81というフィルタが良く使われる)
- 紙の上に反応物が残る（すぐに乾燥するから反応が止まるというメリットも、反応には水が要る）
- dNTPは流すがDNAは流さないような濃度の塩を含んだバッファで洗い流す

例えばNaClを含んだバッファを使って洗い流すと、Na+がDNAやdNTPと結合してフィルタから離れようとする。

ここで、dNTPは3つの-電荷で、DNAは何千もの-電荷（塩基一つにつき1つの負電化）。
同時にどれだけの-イオンとNa+が結合できるかはNa+の濃度、ひいてはバッファのNaCl濃度に依るので、
この濃度を調整してdNTPはだいたい洗い流せるが、DNAは流せないようなバッファを作る事ができる。

放射線ラベルを使っている場合は、数秒流して結果に放射線が検出できるか？を何度か繰り返して検出できなくなるまで行えば良い。

典型的にはNaClの濃度は50 mMくらいが良く使われる。DNAを流すには2〜3 Mの濃度が必要なので、50mMだとだいたいは残る。

あとは残ったDNAのラベルを計測する。
だいたいfemtomole (`10^-15`モル)とかattomole(`10^-18`モル)とかのオーダーで組み入れられている。

ヌクレオチド一つあたりのラベルの量を知っていれば、とても高い精度でどれだけのヌクレオチドが組み込まれたかが計測出来る。

- メリット: 早い。全行程を8分とかで出来る。
- メリット: 定量的
- デメリット: 長さの情報が無い　(10 bpが1000本出来たのか、1000 bpが10本出来たのかが区別出来ない）

これらの性質から、とりあえずポリメラーゼがどこにあるのかを確認するのに使われたりする。

### Gel Electrophoresis（ゲル電気泳動）

長さの情報が欲しい時はゲル電気泳動。

通常ゲル電気泳動ではゲルとしては寒天(agarose)かアクリルアミド(acrylamide)が使われるが、
合成したDNAを分離したい時は、テンプレートとくっつかないように分離してしかもまっすぐにしないといけないので、

- NaOH (寒天の場合) 
- 尿素(アクリルアミドの場合） 

を加える必要がある。これらを加えたゲルで、95度くらいに熱してtemplateから分離すると、
NaOHや尿素がふたたびannealすることを防いでくれるので、生成物だけを分離することが出来る。

これらを加えたゲルを denaturing gel、これらを加えたゲルを使った電気泳動をdenaturing gel electrophoresisというらしい。

電気泳動をする時は、ラベルを識別するか、ethidium bromideで着色する。
ethidium bromideはDNAならなんでも着色出来る物質。

- メリット: 生成物の長さの情報が得られる
- デメリット: より遅い (使うゲルに依るが、20分〜数時間）
- デメリット: 定量的な情報が得られにくい（ゲルの中のバンドの定量情報は得られにくい）

## Primer extension assay

Incorporation assayではProcessivityなどが計測出来ない。
Processivityを計測したい場合はPrimer extension assayというのを使う必要がある。

Primer extension assayの特徴は以下。

- primerをラベリング
- dNTPsやテンプレートにはラベリングしない
- ゲル電気泳動で分離して計測

このようなassay全般をPrimer extension assayと言う。Template challenge assayはその亜種。

具体的にどう実験を設計するかは何を測るか次第だが、その前にProcessivityの定義を見ておく。

### Processivity

Processivityとは、一般にポリマーを合成する酵素に対して使われる概念で、以下が定義。

```
Number of Enzyme cycles/Polymer binding
```

DNAポリメラーゼの場合は以下になる。

```
追加されたdNTPの数/PTJ binding event
```

動画を見た感じだと、ようするに一度primerにポリメラーゼが結合した後にどこまでそのまま合成が進むか、という概念の模様。

つまり、一度外れてまた別のポリメラーゼが続きを合成する、みたいなものは除外して、
一回結合したらどこまで連続で合成出来るか、というものを測る指標がProcessivityというらしい。

これを測る為にはなんらかの Primer extension assayが使われる。

ProcessivityはDNAポリメラーゼの種類によって大きく異る。

- DNA Repairポリメラーゼの場合：  10〜20 bp /PTJ Binding
- ゲノムDNA複製ポリメラーゼの場合: 50000 bp /PTJ Binding以上
  - 計測不能なくらい長い。 50000bのPTJを合成して使うと、 50000 bp /PTJ Binding を達成出来ることが知られている。

よってこれらの数値を計測出来れば、そのポリメラーゼが何に使われるかの情報を得ることが出来る。

### Processivityの意味を具体的な数字で考える

以下の２つの数字を考える。

1. DNAポリメラーゼがPTJに結合するのに1秒かかる
2. DNAポリメラーゼがPTJに結合したら、dNTPを一つ付加するのに1 msかかる

1は拡散によって支配される過程の話で、2はDNAポリメラーゼの合成の速さを表すと考えられる。

結合するのに掛かる時間で1000個のdNTPを付加出来るので、もしたくさんのDNAを合成したいなら、高いProcessivityのポリメラーゼを使う方が良いと考えられる。結合には多くの時間が掛かるので、一度結合したら長く合成出来る方がいいからだ。

### Template challenge assay

Primer extension assayの一種で、processivityを測るのに行われる分析。

1. ラベルづけされてるPTJ (P*TJと呼称）とされていない普通のPTJ の２種類のPTJを作成
2. P*TJに、その２倍のDNAポリメラーゼを加える
   - 例えばP*TJが2 pico molの時、DNAポリメラーゼは4 pico mol加える
   - 全部のP*TJにDNAポリメラーゼがくっついていると期待出来る
3. バッファなど、反応に必要なものを(dNTP以外）すべて加える
4. ラベル無しのdNTPと、P*TJの1000倍の量のPTJを加えるー＞反応開始
5. 全テンプレート(5000bpとか)の合成に十分な時間だけ待つ
   - 早いDNAポリメラーゼなら1secで1000bp合成出来るので、この場合は5sec待つ
   - 普通はもっと合成が遅いので、30secとかくらい待つ
6. 反応を止めてdenaturing gelで生成物を分離

一度P*TJから外れたら、次に結合する相手は、999/1000はラベル無しのPTJになるので、
だいたいはそうでないと期待出来る。

追加されるラベル無しのテンプレートをchallenged templateと呼ぶらしい。挑戦相手って意味かね。

## シークエンスの最初の問題を解き直す

おー、ちゃんと全部分かるぜ。一問間違えたが、間違えたあとに選択肢を見直したらどれが正解かちゃんとわかった。
このシークエンスの内容はちゃんと消化出来た模様。