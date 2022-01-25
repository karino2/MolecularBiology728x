## DNAの複製

- Braille 点字（ルイ・ブライユが発明したからこう呼ばれるらしい）
- pyrophosphate ピロリン酸塩（だけどここではピロリン酸イオンの事）
- archaeal 古細菌の

### 特徴

- 早い： 100-1000 bp/sec
- Complete: 本質的にはゲノム上のすべてのBPが複製される（テロメアは除く）
- 正確： `10^10 bp`の合成につき一回程度のミスしか起こらない

E.coliは`5*10^6 bp`で出来ている。1000個体に一つ程度のミス。E. coliは単細胞の原核生物、いわゆる大腸菌。

人間のゲノムは`3*10^9 bp`。3回の細胞分裂で一回ミスする。細胞一つに1mのDNAが入っている。体全体で90 millionマイルで太陽に届き、一生で光年のオーダーになる。

[[ゲノムのオーダー]]

### 化学的な側面

触媒は、3'のOH基が、入ってきたヌクレオチドのアルファ-リン酸にattackするように振る舞う。
そうするとppi (pyrophosphate, ピロリン酸イオン)が分離する。アルファ-リン酸は一番糖に近いもの。

ピロリン酸イオンはその後２つのリン酸イオンに分離する。この反応が不可逆。

- pyrophosphataseがある場合はΔGが-7kcal ... これはほとんど不可逆
- pyrophosphataseが無い場合は-3.5kcal ...これも進行する反応ではあるが可逆

これらの反応を、DNAポリメラーゼが触媒する事になる。

**DNAポリメラーゼが複製を触媒する**

1. 3' OHのprimerが必要
2. Annealed to a longer ss DNA (with ssDNA adj to 3'OH primer)
3. 4種類のdNTP (deoxynucleotide triphosphates)
4. テンプレートとペアになるdNTPだけが触媒される
5. 3'のOHが伸ばされていく

1と2をあわせてprimer:template junction、PTJと呼ぶ。

2は最初良く意味がわからなかったので英語のまま書いたが、
annealedとはbase pairがちゃんとマッチしている状態で二本鎖が結合していることを言うらしい。

[Nucleic acid thermodynamics - Wikipedia](https://en.wikipedia.org/wiki/Nucleic_acid_thermodynamics#Annealing)

ということで2はほどいてsingle strandedの状態になったテンプレートに対して正しくペアがマッチした形でprimerを結合させる、という意味だろう。

5は、5'から3'方向に伸ばされていくという事だが、テンプレートとプライマーのどっちかが曖昧なのでこう覚える方が良いとのこと、なるほど。

### DNAポリメラーゼのactive site

dNTPが4種類、つなぐ元も4種類なので、16通りの反応を触媒出来る必要がある。でもDNAポリメラーゼのアクティブサイトは一つしか無い（！）。

DNAポリメラーゼのbinding pocketは4つのdNTPすべてにaffinityがあるが、ペアがあってないと3リン酸と3' OHが近くに配置されず、
反応が起こらない。

ペアがあっていると、3'のOH基がアルファ-リン酸基にSN2のnucleophilic attackする。（SN2って何？）

正しいbase pairはどのペアも同じdimension (距離とか配置とか）になるので、同じ機構で触媒出来る。

## DNAポリメラーゼの構造と触媒の仕組み

右手の構造になぞらえて部位に名前がついている。fingers, thumb, palmの部位からなる。
fingersが動いて、thumbはあまり動かない。

大まかには以下のようなステップで合成が行われる

1. palmはPTJと新しく合成したDNAに結合する
2. dNTPが入ってきて、fingerが閉じて反応が起こり、終わったら指が開く
3. 1bpスライドして次のペアへ

これらのすべてがとても素早く起こる。
以下各ステップについて詳細に見ていく。

### 1. palmとPTJの結合

- テンプレート側はマッチしてない所の一つ先で45度曲がっている
  - テンプレート側でアクティブサイトのそばにあるヌクレオチドは、マッチしていない最初の一つだけ
- palmは配列によらない形で結合する
  - バックボーンのphosphateと結合
  - Minor grooveの水素結合、これは配列の種類には依存しないが、ワトソン・クリック型のペアである事には依存する（後述）

**grooveの種類と水素結合のdonor、acceptorの配置**

酸素、窒素はacceptor、窒素や酸素につながったHはdonor、それ以外のHやメチル基はどちらでも無い、として、BPの一番外側の原子を見ていく。

[PngNote ページ2](https://karino2.github.io/ImageGallery/MolecularBiology728x.html#lg=1&slide=1)

- major grooveでは、水素結合のdonorとacceptorの配置が、base pairの種類によって変わる。
- minor grooveでは、ADAかAHAで（Hはどちらでも無い）、両端はいつも一致する。＞ワトソンクリック型でさえあれば良い
   - これに結合する事で、正しくマッチングしたペアだと判定出来る！

という事でpalmはminor groove側と結合する事で、正しくマッチングしたペアだけと結合するが、どういう配列かは気にしない。

### 2. dNTPがやってきてfingerが閉じて相互作用する

- まずdNTPがアクティブサイトにやってくる
   - dNTPとの結合はベースペア同士の水素結合で固定されて、3リン酸基側は2価の金属カティオン(だいたいはMg+2)とも結合する
- fingerドメインが結合したdNTPの上に閉じる
  - fingerドメインの中のO-helix (α helixの名前）にある…
    - Tyrが、dNTPの塩基とpi-pi相互作用する
      - プリンの時は6角形の方の環と
      - ピリミジンの時は一つしか無い6角形の方の環と
    - LysとArgがdNTPの3リン酸のうちベータとガンマのリン酸基と相互作用する
      - 水を寄せ付けない事で加水分解を防ぎ、3'のOHとだけ反応するように促す

### 3. 指が開いて1bpだけスライドする

- PPiがリリースされると、LysとArgが離れてO-helixが開く
- 3' OHの位置がちょうど良い所に来るように1 bp分スライドする

以降は2と3を繰り返す。
これら全部がめっちゃ早く起こる。

## 合成の誤り

- fray ほつれさせる

頻度としては、DNAポリメラーゼ単体では、`10^5 bp`に一回のペースで誤りが起こる。

大多数の誤りは、プリンを他のプリンと間違うか、ピリミジンを他のピリミジンを間違えるたぐいの誤り。
tautomer formationのせいで起こる。

[PngNote ページ3, Tautomer Formation](https://karino2.github.io/ImageGallery/MolecularBiology728x.html#lg=2&slide=1)

- enolやイミノはすぐに元の状態に戻るので、二本鎖がちゃんとよじらない状態になる。
- そうするとminor grooveの性質が保たれず、DNAポリメラーゼは動作を停止する
- proofreading exonucleaseによるproofreadingの機構が修正

## Proofreading Exonucleaseによる修正

ミスマッチが起こると、Proofreading exonucleaseという酵素（だいたいはポリメラーゼに含まれている）による修正機構が働く。

### ExonucleaseとProofreading Exonuclease

- ExonucleaseはDNAの片端からdegrade（分解）する
    - 制限酵素であるendonucleaseがDNAの途中の部分をカットするのに対し、exonucleaseはDNAの端をカットする
- Proofreading exonucleaseは3'ー＞5'の方向に機能する

通常このexonucleaseはポリメラーゼと同じポリペプチド内に存在する

### Proofreading Exonucleaseの動作機構

- frayed/non BPな 終端のDNAはポリメラーゼのactive siteとlow affinity
- ssDNAで3'OH終端側のPrimerの終端はexonucleaseのactive siteとhigh affinity（合成側のだいたい10倍）
- exonucleaseのアクティブサイトはpalmのドメインにある（事が多い）

ミスマッチが起こると手のひら側に移動して、ここで1〜3つのヌクレオチドが切断される。
だいたいの生物機構と同様に、ちょっと多めにカットしてやり直す。

### この修正機構による改善度合い

proofreadingにより、だいたい100倍くらいのオーダーで正確になる＞ `10^7bp`に一回程度の誤りになる

残りの`10^3`は別の修正機構で達成されている。
[[ゲノムのオーダー]]も参照。

このproofreadingは端にしか機能しないので、ひとたび誤った状態で合成が進んでしまうと、もうこのproofreadingは機能せず合成が進んでしまう。