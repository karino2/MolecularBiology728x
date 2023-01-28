ヒストンやヌクレオソームについては[[クロマチン、ヒストン、ヌクレオソーム]]も参照。

## Histone Modifying Enzymes

特定のヒストンに分子を追加するEnzyme。
追加する分子は小さなものもあれば大きなものの場合もある。

大きなものとしてはUbiquitinなど。
Ubiquitinについては[UbiquitinationとDegradation - CellBiology706x](https://karino2.github.io/SubWiki/CellBiology706x/Ubiquitination%E3%81%A8Degradation)を参照。76AA。ヒストンと同程度の大きさ。

小さなものとしては、アセチル基やメチル基などが主でこちらが主流。

これらは多くはヒストンのunstructured N-terminal tailに付加される。（つまりヒストンのN-terminal tailはunstructuredで外に出ている、[[クロマチン、ヒストン、ヌクレオソーム]]を参照）。（ただし例外的な数ではあるがtailじゃなくてヒストンコアに修正を行う酵素も存在する）

これらのtailは多くはとても正に荷電されていて、DNAと相互作用している。
そしてmodificationはこれらのうちのlysinesやargininesを対象にする事が多く、
これはまさに正に荷電されている側鎖を持つ。

これらのmodificationはダイナミックで、付加されたり取り除かれたりする。

## Histone Modificationの種類

一番良く見られるのが以下の２つ

- アセチル化 ... Lysine（K）を対象
- メチル化 ... KやArginine(R)を対象

他にもたくさんのmodificationの種類はある。

なお、アセチル化をする酵素をacetyl transferaseと呼ぶ。アセチル化とメチル化でそれぞれ追加と除去があるので4種類のカテゴリの酵素がある。

|  | 付加 | 除去 |
| ---- | ---- | ---- |
| アセチル基 | histone acetyltransferase(HAT) | histone deacetylase(HDAc) |
| メチル基 | histone methyltransferase(HMT) | histone demethylase(HDMe) |

HATといっても一種類じゃなくてたくさんの種類のHATがあり、それぞれ特定のヒストンの特定の場所（つまり酵素ごとに別々の場所）に作用する。

例えばH3の4番目のK（K4）に作用するHMTがある（H3K4 methyltransferaseと呼ばれる）。

これらの酵素の多くは単体のヌクレオソームじゃなくていくつかのヌクレオソームにまとめて作用する。

## Histone Modificationの直接的な影響

まず明らかな事としては、以下の２つの影響がある。

- Kのアセチル化は+の側鎖を+-ゼロに近づける
- KやRのメチル化は+の電荷で固定される（通常は+になったりニュートラルになったりを行ったり来たりしているのが）

これらがどうヌクレオソームの機能に影響を与えるか？

### アセチル化の直接的効果1, DNAをよりaccessibleにする

まず事実として知られている事として、アセチル化は対応するDNAの領域をよりaccessibleにする。

とりあえず思いつく事としては、電荷がニュートラルになれば負に荷電しているDNAとの相互作用が弱くなる（affinityが減る）からaccessibleになる、というメカニズム。これは理解できる。

だがそれでいけばメチル化はより強固に結びつくようになるのでDNAのaccessibilityが低下しそうなものだが、実際にはメチル化もactivationとして働くケースはinhibitionとして働くケースと同じ程度には多い。

### アセチル化の直接効果2, 30nm ファイバーの形成の阻害

特にH3、H4のアセチル化が起きると見られる現象として、30nmファイバーの形成を妨げるというのがある。

[14ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=13)

メカニズムを考えるヒントとしては、クロマチンの構造の結晶解析を行うと、どうもヌクレオソームの側鎖は相互に相互作用している事が見て取れる（上記ノート14ページの図参照）。
アセチル化がこの相互作用を壊しているため30nmファイバーの形成が行えないのかもしれない。
ただ結晶を作る時に偶発的に相互作用しているだけで30nmファイバーの形成に本当に側鎖の相互作用が影響あるかは良く分かっていない。

メカニズムは議論があるにせよ、アセチル化が30nmファイバーの形成を妨げるという事自体は間違いない。

これら２つの直接効果は、クロマチンを開いて、DNAをよりアクセスしやすくする方向に働く。

## Histone Modificationの間接的な影響

先に見た直接的な影響、つまりmodification自体の性質よりも、それが他のタンパク質を引き寄せたりする事で起こる影響の方がずっと多い。

### Small domains

間接的な影響の多くは、特定の場所に結合するsmall domainによって引き起こされる。

アセチル化を識別するドメイン。

- bromodomains ... 特定の場所にあるアセチルlysineを識別する。例えばあるbromodomainはH3K27を認識する、など。

メチル化を識別するdomain。

- chromodomains ... 特定の場所にあるメチルlysinやメチルarginineを識別する
- TUDOR
- PHD finger
- BAH

メチル化の方がそれ自身の影響が少ない分、こうしたよそのタンパク質を動員するケースが多い模様。

これらはHistone Modification readersと呼ばれる。
なお、writerは当然histone acetyltransferase（HAT）などとなる。

### Histone Modificationを「読む」タンパク質たち

先に述べたsmall domainたちは、より大きなタンパク質やタンパク質complexの一部となっている。
これらのタンパク質が持っている性質が、間接的なHistone Modificationの影響となる。

多くはHATやHDAc、HMTなどや、ヌクレオソーム remodeling complexなど。Nucleosome Remodeling Complexについては[[EukaryoticTranscriptionとヌクレオソーム]]を参照。

### HDAcの例

例えばあるHDAcにはH3K9のメチル化を読むchromodomainがあるものがある。
アセチル化されているヒストンのH3のK9がメチル化されるとこのHDAcのchromodomainがそれを検出して、
周辺のアセチル化されたlysineのアセチル基を取り除いていく。

その結果30nm ファイバーの形成が促進されて、DNAはアクセスしづらくなる。

### HATの例（DNA複製時のヒストンのmodificationを保つメカニズム）

あるHATにはbromodomainがあって、特定のアセチル化を検出するとこのHATがやってきて、周辺のlysine（K）をアセチル化して、
さらに隣接するヌクレオソームのヒストンまでアセチル化するものがある。

DNAの複製時には、[[クロマチン、ヒストン、ヌクレオソーム]]でも述べたように、H3/H4 tetramerは半分が元のstrandから来たものが使われるが、この時にたくさんアセチル化されている領域を再現する為に使われるメカニズム。

### 転写のactivatorのメカニズムを考える

このbromodomainなどの仕組みは、DNA転写のactivatorやrepressorの仕組みの一部になっていると考えられる。

ヌクレオソームになっているDNAにそのままbind出来るような特殊な性質を持つactivatorが目的のDNAの領域をよりaccessibleにするメカニズムを見てみよう。

1.  activatorがヌクレオソームになっている目的のDNAの領域にattachされる。
2.  activatorがHATを動員する。
3.  周辺のヒストンをアセチル化してヌクレオソームを開いてプロモーター領域周辺をアクセス可能にする。

このように、Histone Modificationがactivatorの機能を実現するケースがある。

activatorが皆ヌクレオソームになっている部分に直接結合出来るという訳では無く、クロマチンをなんらかの方法で開いて対象領域をアクセス可能にしないと機能しないactivatorが普通である。

とにかく、このようにプロモーターの近くにあるヒストンをmodifyすると、周辺のDNAの（相対的な）accessibilityを変更出来る。

### 転写に直接関わるタンパク質がbromodomainsやchromodomainsを持つ事も

転写に直接関わるタンパク質、sigma factorにもbromodomainsやchoromodomainsを持つものがある。
例えばTFIID（IIは2）と呼ばれるfactorは、RNAポリメラーゼIIをlocalizeするタンパク質だが、
これはbromodomainを持っている。
つまりアセチル化されている場所を認識する。

sigma factorについては[[バクテリアのTranscription入門]]や[[バクテリアにおけるTranscriptionのRegulation]]を参照。

その他、ヌクレオソーム Remodeling Complexもbromodomainやchromodomainを持つものがある。

このようにbromodomainやchoromodomainは、ヒストンmodificationを行うタンパク質だけでなく実際に転写を行うタンパク質を持ってくる役割も果たしている。

## Histone Code Hypothesis

どうもHistone modificationの組み合わせを読むタンパク質があるのは確からしいので、
ある時点でのこのmodificationの組み合わせによるコードが、どのgeneがactivateされているかの全情報を表すのでは無いか？
という仮説が考えられた。
これをHistone Code Hypothesisと言う。

実際にショウジョウバエの18種類のもっとも一般的なヒストン modificationの組合わせを調べてみた。
それぞれのmodificationはあるか無いかの2択なので全体としては2の18乗通りの組み合わせがあるはずだが、
実際に見られたのは9種類の組み合わせのみだった。

## ヌクレオソームの位置

TSSの手前にはヌクレオソームフリーな領域がある、という話だった。の[[EukaryoticTranscriptionとヌクレオソーム]]の「MNase-seqとヌクレオソームとTSS」を参照。

### ヌクレオソームはどこに配置されるか？

**1. DNAの塩基配列による影響**

DNAのシーケンスに依存して配置されている。
ATリッチな領域とGCリッチな領域にはヌクレオソームは配置されない傾向にある。

配列だけからアルゴリズム的にかなりの精度でヌクレオソームの位置を予測するのに成功している。
だからDNAの塩基配列だけでかなりの程度ヌクレオソームの位置は決定されるらしい。
特に、どこに「無いか」はかなりの精度で予測出来るとか（どこにあるかの予想はそこまで正確でも無いとか）。

この事からも、プロモーターやオリジンはAT-richな領域がある方が、unwindしやすいので望ましいと言える。

**2. Protein Dependent Positioning**

DNA Bound Proteinはヌクレオソームと結合しているDNAの領域には結合出来ない、と言ったが、これは逆も真で、
すでにDNA Bound Proteinが結合している所にはヌクレオソームは配置出来ない。

だから２つのDNA Bound Proteinが、間が145bp以内でboundしていると、その間にヌクレオソームが形成される事は無い。
これが一番良くあるDNA Bound Proteinによるヌクレオソームの配置に影響を与える形態。

よりレアなパターンとして、ヌクレオソームと親和性の高いタンパク質がDNAと結合する事で、そこの隣接する領域にヌクレオソームが形成される、というものもある。

## Nucleosome RegulatorsのAssay

以下ではここまで見てきたRegulatorsのassayを見ていく。主に以下の２種類。

1. Histone Modifying EnzymesのAssay
2. Nucleosome PositioningのAssay
3. Nucleosome Remodeling ComplexのAssay

順番に見ていこう。

### Histone Modifying EnzymesのAssay

特定のModificationを検出する抗体を作り出して調べる。
抗体があればChIPなりChIP-Seqなり出来て、抗体の結合した場所がわかる。[[Assays]]

全modificationを知る事だけではあまり意味は無く、
InducerなりTranscription Factorなりをオン-オフした時にmodificationがどう変わるかを調べるのが普通。

例: ガラクトースがある時のプロモーター制御を理解したいとする。その場合はまずガラクトース無しでChIP-Seqして、そのあとガラクトースを足してChIP-Seqする。

### Nucleosome PositioningのAssay

- circadian ... 24時間周期の。circadian rhythmで日内リズムとか概日リズム。

これはすでに見た、MNase-seqで調べる事が出来る。＞[[EukaryoticTranscriptionとヌクレオソーム]]

これもHistone Modifying Enzymesの時と同様に、inducerやactivatorを加える前と後を調べて差分を見る。

これらはin vivoのAssay。

### Nucleosome Remodeling ComplexのAssay

これはin vitroのAssay。

**1. ヌクレオソームが結合しやすいDNA片を用いて、DNA上にヌクレオソームを構築する**

AT-richとGC-richを5bpごとに交互に繰り返すとそういうDNA片となる。

ヒストンをDNA片に構築する方法としては、

1. ヒストン（4種類）をpurifiyする
2. positioning signalとrestriction siteを持つDNAを用意する
3. high-salt bufferに入れて、ゆっくりsaltを減らしていく＞ヌクレオソームが形成される

DNA片が長すぎなければ（両方の足が147bp未満）、ヌクレオソーム一つを持つDNA片が作れる。

**2. Remodeling Complexのある無しで、restriction enzymeによる切断の有無を調べる** 

restriction siteがヌクレオソームの中にある場合、restriction enzymeではほとんど切断されない。
けれどこのrestriction siteがスライドされてヌクレオソームの外に出てしまえば、restriction enzymeによって容易に切断されるようになる。

けれど、例えばHATなどではDNAのアクセスが多少改善してもそれほどカットの違いは出ないと思われる。

これは移動だけではなくてヌクレオソームを取り除くenzymeの活動を調べるのにも使える。

## Mass Spectrometry

これは対応する動画は無かったが、フラッシュカードとクイズにあったのでメモしておく。

mass spectrometryは対象とするタンパク質を、特定のAA配列を切断するプロテアーゼを使って、4〜10 AAくらいの短いペプチドに分ける。
これをクロマトグラフィーでサイズに分割し、それをイオン化して検出器に飛ばす。

以前Biochemistryでやった、Protein Fingerprintingという奴かな。。 [タンパク質の一次構造の決定 - Biochemistry 705x](https://karino2.github.io/Biochemistry705x/%E3%82%BF%E3%83%B3%E3%83%91%E3%82%AF%E8%B3%AA%E3%81%AE%E4%B8%80%E6%AC%A1%E6%A7%8B%E9%80%A0%E3%81%AE%E6%B1%BA%E5%AE%9A)

メチル化やアセチル化で質量が変わるので、特定のペプチド配列がメチル化されてるか、アセチル化されているかがペプチドの質量を測るとわかる。