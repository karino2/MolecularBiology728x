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
- 3' to 5' Exonuclease ... polynucleotide phosphorylase (PNPase）。これはphosphorylytic exonuclease。phosphorylytic enzymeはそんなにfavorableでは無いので、加水分解と違って可逆。分解すると同時に合成する事もある。ランダムにヌクレオチドを持ってきてつなげるので、だいたいATPとなるからpoly Aを合成する事にもなる（が、ここではexonucleaseとして使われるのが主）
- 3' to 5' RNA helicase ... RhlBと呼ばれる（スペルはLの小文字）
- Enolase ... 何故あるのかは不明。metabolic rateを測るのに使われるenzymeだが。

Enolaseは無くてもin vitroでは機能しているので、上３つがDegradosomeの機能をになっている模様。

図解すると以下のような構成になっている。

[30ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=29)

中心にRNase Eがあって、これが長い尻尾を持っていて他のタンパク質を動員している。

