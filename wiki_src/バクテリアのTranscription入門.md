前: [[Transcription入門]]

## バクテリアのRNAポリメラーゼの構造

まずはRNAポリメラーゼの構造から見ていく。

### 5つのサブユニット

4つのgeneにエンコードされた5つのサブユニットから構成される。

- β 156kDa
- β' 151kDa
- αが２つ 37kDa
- ω 10kDa

βとβ'がメインとなる構造で、この２つの間にactive siteがある。
後ろ側にαの２つのサブユニットがヒンジのようにくっついている。
側面にωがあるが、ωの役割はよくわかっていない。

### 5つのチャンネル

また、これらがいくつかのチャンネルを構成している。

1. Downstream DNAチャンネル
   - dsDNAをactive siteへと導く
2. Templateチャンネル
   - テンプレートをactive siteへ導く
3. Non-Templateチャンネル
   - テンプレートで無い方のstrandをactive siteから離れていくようにガイドする
4. RNA Exitチャンネル
   - RNAをDNAテンプレートから分離する
5. NTP チャンネル
   - Active SiteがNTPsにアクセス出来るようにするチャンネル

## RNAPとRNAP Holo Enzyme（シグマ）

- confer 話し合う、協議する

バクテリアのコアRNAポリメラーゼの名前としてRNAP（「RNAぴー」と発音）という名前がついている。
たぶんRNAポリメラーゼと呼んでいるものの具体的なタンパク質の名前と思われる。

RNAPはnicked dsDNAやDNAの末端からinitiateする事が出来る。dsDNAサークルなどからは開始出来ない。
non sequence specific。

転写のシーケンスのspecificityを担当するのはシグマと呼ばれるもの。
シグマには何種類かありうるが、それらをまとめてシグマファクターと呼んでいる。

Core RNAPエンザイムがあって、これとシグマファクターがくっついたものをRNAP Holo Enzymeと呼ぶ（用語定義としては誤っていてenzymeとしての活動は依然としてRNAPのみなのだがそう呼ばれているらしい）。

| RNA Pol | nicked dsDNA | dsDNAとgene |
| ---- | ---- | ---- |
| Core RNAP | ++++ | - |
| Holoenzyme | - | ++++ |

シグマは以下のように振る舞う

- specificな転写を10^3のオーダーで促進する
- non specificなinitiationを10^4のオーダーで抑制する

### プロモーター

TSSを基準にして、-10というのは10bpだけアップストリームとなる場所の要素を表す。
TSSは1、その一つアップストリームは-1と呼ぶらしい。何故か0は無いらしい。

プロモーターは以下の構成要素から構成される。

1. -10 Element
2. TSS
3. -35 Element 
4. -35 to -10 spacing

-10 Elementは-10から少し前後するものもある。
-10 ElementとTSSは全てのプロモーターに存在する。

-35 Elementは多くのプロモーターに存在するが、この要素が無いプロモーターもあるので全部にある訳では無い。
-35 Elementもぴったり35では無いプロモーターも存在しているが、これも-35 Elementと呼ぶ。
だから-35 to -10 spacingは17〜19bpな事が多いらしい。

-10 Elementとか-35 Elementは最初に見つかった時がその値でずっとそう呼ばれ続けていたのでそれから少しずれたものが見つかってもそう呼び続けたとか。
-35 Elementは-30とか-20の事もあるが、-10 Elementの方は-10が多く、ずれてるものも少ししかずれてないらしい。

多くのプロモーターは上記4つを含むが、他にも以下の要素を含むプロモーターも存在する。（こちらは少数派）

- UP Element (-35のさらにアップストリームにある要素らしい）
- Extended -10 Element （これがあるのはほとんどいつも-35 Elementが無いプロモーター）
- Discriminator Element

[6ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=5)

これらのElementはシグマファクターによって認識される。
シグマファクターには4つのドメインがあり、それぞれシグマ1, シグマ2, シグマ3, シグマ4と呼ばれる。

- シグマ1 : discriminator elementと結合
- シグマ4: -35 Elementと結合（helix-turn-helix motifを持つ、DNA配列を識別する鍵となる構造）
- シグマ2: -10 ElementのNon-Template strandと結合、つまりssDNAとだけ結合。配列というよりはunwindされた場所からの距離を識別している模様。
- シグマ3: extended -10 Elementと結合

UP Elementはシグマファクターでは無く、コアRNAPのαサブユニットのC terminal domainと結合する（α-CTD）。
これもhelix-turn-helix motifを持つらしい。

これらの結合による相互作用がRNAPをプロモーターに配置する。
例えばUP Elementはupstreamにあるから、というだけでは無く、この追加のElementがある場合はより多くのRNAポリメラーゼを動員出来る、という意味でもUPのElementである。

## バクテリアプロモーターのマッピング

やる事は[[ReplicatorMapping]]と似ている。

以下の手順でマッピングする

1. Transcriptの5'末端をマッピング（転写されたRNAの5'末端）  
ほとんどのプロモーターがTSSの50 bp以内に存在しているのでこの情報が重要。[[Transcription入門]]の「Primer Extension AssayでTSSを調べる」を参照。
2. Mutational map promoter seq  
5'末端のupstream。前述のように-10や-35のあたり、その前後、Up elementのあたりなど

Mutationしたものについてのassayとしては、ここまで述べてきたものも使えるが、
他にpromoter fusion assayと呼ばれるassayも良い。

### Promoter Fusion Assay

プロモーターに簡単に検出出来るgene（タンパク質）をfuseする。
in vivoで使えるassayらしい。
（coding regionをこれらのgeneで置き換えるっぽい）

簡単に検出出来るものの例

- GFP
- lacZ (beta galactosidaseをエンコード）
- luciferase (ホタルの光る所で使われる酵素、eukaryoticで使われる）

いろいろなプロモーターをこれで調べて比較する。
同じレポーターを使っている限り、プロモーターの違い以外の要素は同じなので比較可能。

[[Assays]]