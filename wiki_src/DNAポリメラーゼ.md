## DNAの構造

- proliferate 急速に増殖する

最初の動画は復習という感じでガンガン進むね。クイズには動画に軽くしか触れられていない事もどんどん出てくる。

二重らせんの状態をdsDNA(double stranded)、またはB-form DNAと呼ぶ。

### ヌクレオチド (nucleotide)

ヌクレオチドは3つの構成要素から出来ている

- 5炭糖
- リン酸基
- 塩基

塩基は糖の1'-炭素につながっている。リン酸基は5'。隣のリン酸基とは3'でつながっている。

ヌクレオチドのリン酸基ははphosphodiester結合でつながっている。

なお、図ではしばしば酸素は赤、窒素は青でカラーリングされている。

[[ヌクレオチド]]

### 塩基

- A, Gは２つの環から出来ている。purinesと呼ばれる
- T, Cは一つの環から出来ている。pyrimidinesと呼ばれる

G-Cの間には3つの水素結合が、A-Tの間には２つの水素結合がある。

[PngNote ページ1](https://karino2.github.io/ImageGallery/MolecularBiology728x.html#lg=1&slide=0)

外に出ている二重結合に着目すると塩基の区別がしやすい。

### 幾何構造とbase stacking

1周で10塩基ペア。ペア内の水素結合の他に、隣のペアとの間にも結合があり、これをbase stackingと呼ぶ。pi-pi 相互作用。

バックボーンの間があいているmajor grooveと、詰まっているminor grooveが交互にやってくる。
これらのgrooveがタンパク質とのbinding siteを提供する。
major grooveが塩基関連の情報を、minor grooveが非塩基関連の情報を持つ。

## DNAの複製

- Braille 点字（ルイ・ブライユが発明したからこう呼ばれるらしい）
- pyrophosphate ピロリン酸塩（だけどここではピロリン酸イオンの事）

### 特徴

- 早い： 100-1000 bp/sec
- Complete: 本質的にはゲノム上のすべてのBPが複製される（テロメアは除く）
- 正確： `10^10 bp`の合成につき一回程度のミスしか起こらない

E.coliは`5*10^6 bp`で出来ている。1000個体に一つ程度のミス。E. coliは単細胞の原核生物、いわゆる大腸菌。

人間のゲノムは`3*10^9 bp`。3回の細胞分裂で一回ミスする。細胞一つに1mのDNAが入っている。体全体で90 millionマイルで太陽に届き、一生で光年のオーダーになる。

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

1と2をあわせてprimer template junction、PTJと呼ぶ。

2は良く意味がわからなかったので訳さずそのまま書いたが、
primerとtemplateをあわせたもの、という事は、2はテンプレートの事かな。
ほどいてsingle strandedになったテンプレートのDNA鎖の事か。

[Nucleic acid thermodynamics - Wikipedia](https://en.wikipedia.org/wiki/Nucleic_acid_thermodynamics#Annealing)

annealedの意味が生物だと通常と違いそうだ。ようするに２つの鎖がペアとなってくっついている事をannealedと呼ぶようだ。

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