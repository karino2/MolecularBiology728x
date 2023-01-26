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

