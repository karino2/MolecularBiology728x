前: [RNATurnover入門](RNATurnover入門.md)

mRNAの半減期について、ここではバクテリアについて見ていく。

## バクテリアのRNAをdecayから守っているものは何か？

半減期の前に、そもそも全てのRNAがすぐに分解されてしまわないのは、なんらかの保護のメカニズムがあるからだ。
それはどういったものか？

### 5'末端側の保護

5'側は、末端のtriphosphateが保護している。
また、RNAの2次構造が5'末端のdecayを防いているケースもある。（とてもとても長い半減期のRNAの場合）

eukaryoteではtranslateの都度RNAはunwindされるが、バクテリアでは5'側のstructureはそのままに直接ribosomeのbinding siteにribosomeが結合するので、この2次構造が保存される。（[TranslationのInitiation](TranslationのInitiation.md)も参照）

### 3'末端側の保護

3'末端側は、おもに2次構造で保護される。

[バクテリアにおけるTranscriptionのElongation](バクテリアにおけるTranscriptionのElongation.md)で見たように、TranscriptionのterminationにはIntrinsic TerminationとRho-Dependent Terminationがあるのだった。
そしてIntrinsic Terminationのケースでは、
Transcriptionの時点で3'末端側にあるGC-richな領域がヘアピンを形成するのだった。
これが3'末端側のdecayから保護する二次構造となる。

Rho-dependentなterminationでは、terminationのメカニズムには2次構造は無いが、stableなRNAなら何らかの方法で3'末端側に二次構造（ヘアピン）を形成する事で、同様にdecayから保護する。

## バクテリアのRNA Degradosome

ほとんどのRNAの分解は、multi-enzyme complexであるRNA degradosomeが行っている。

RNA degradosomeは複数の機能を持っている

- Endonuclease ... 通常はRNase Eが担当。
- 3' to 5' Exonuclease ... polynucleotide phosphorylase (PNPase）。これはphosphorylytic exonuclease。
- 3' to 5' RNA helicase ... RhlBと呼ばれる（スペルはLの小文字）
- Enolase ... 何故あるのかは不明。metabolic rateを測るのに使われるenzymeだが。

PNPaseもそうであるが、phosphorylytic enzymeはそんなにfavorableでは無いので、加水分解と違って可逆。
分解すると同時に合成する事もある。ランダムにヌクレオチドを持ってきてつなげるので、だいたいATPとなるからpoly Aを合成する事にもなる（が、ここではexonucleaseとして使われるのが主）

Enolaseは無くてもin vitroでは機能しているので、上３つがDegradosomeの機能をになっている模様。

図解すると以下のような構成になっている。

[30ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=29)

中心にRNase Eがあって、これが長い尻尾を持っていて他のタンパク質を動員している。

### バクテリアのRNAのDecayのメカニズム（Degradationの仕組み）

1. RNase E がmRNAを切断
    - RNAのAU-リッチな領域を好んで切断する
    - 2次構造によってブロックされうる（二次構造はtranslateで伸ばされるので影響は少ないが、3'末端と5'末端のnon coding regionは影響がある）
    - 5'がmonophosphateなRNAを好んで切断
2. 裁断結果の分解
    - 3' to 5'の分解はPNPaseがPhlBの補助のもと分解出来る
    - 5' to 3'の分解は、E. coliならRNase Eで繰り返し切断する事で、それ以外のバクテリアではRNase Jで分解される
    - この分解では、5'のtriphosphate付近と3'側のヘアピンだけ残る
3. 5' end dependent mechanism
    1. RppH（RNA pyrophosphohydrolaseの略）が5'末端のtriphosphateからpyrophosphateを切断し、monophosphateを残す
    2.  RNase Jから5'側から分解されるか、RNase Eで分解される

1, 2をあわせてdirect access mechanismという。

E. coliなどは5' to 3'のexonucleaseを持たないが、どこかを切断すると3'側がmonophosphateになるので、ますます切断されやすくなってオリゴに分解される。
オリゴはoligo RNaseに分解される。

そのほかの生物ではRNase Jと呼ばれる5' to 3' exonucleaseを持つ。ただTriphosphateは分解出来ない。

RNase Jはhydrolytic exoで、5' to 3' exo。