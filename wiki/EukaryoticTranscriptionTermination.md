前: [EukaryoticTranscriptionのInitiationとElongation](EukaryoticTranscriptionのInitiationとElongation.md)

## C-terminal Domainのリン酸化によるPost Initiation Eventの制御

C-terminal Domainのリン酸化という視点からPost Initiation Eventの制御を見直す（一部は前のセクションの内容の復習）

### Ser 5 Pi

Serine-5のリン酸化。

- TFIIH により行われる
- Mediatorからのリリースが起きる
- Ser5-Piが 5' end modifying enzymesを動員してアクティベートする（5' capをつけたりする）

**5' capの役割**

- mRNAの5' endをstabilizeする
   - exonucleaseが噛みくだくのを防ぐ
   - mRNAの翻訳機構がmRNAとして認識するElement
   - CappingはCTDと結合していると10^5倍もの増加を示す
      - CTDはRNA exit channelのすぐ隣に配置されている

### Ser 2-Pi

- PTEFbにより行われる
- RNA splicingとpolyA addition machineryを作動させる

PTEFbは転写が25〜50bp進んだあたりでRNA Polをリン酸化する。これがDSIF, NELFをリン酸化し、CTDのSer2もリン酸化する。
これでNELFがpaused RNA Pol IIから離れるのだった。
この時点でmRNAはすでにキャップされている事が期待されていて、
しかも最初のintronの開始よりは手前な事が期待される。

**3' processing machinery**

- リン酸化されたCTDで動員されたCstF、CPSFと言われるファクターが行う
- Open Reading Frameが終了したあとにmRNAを切断する
- 切断した後にpolyA tailを付加する
   - polyAポリメラーゼを動員する事で行われる
   - だいたい200〜250nt (200Åと口頭では言っていたが板書はntだった、ググった感じヌクレオチド数で良さそう）   
- これらはAAUAAAというシグナル配列を識別して行われる
- 3'末端を保護する

Ser5-Piはelongationが進むごとに減っていき、逆にSer2-Piは増えていき最後まで維持されていく。

## Polyadenylationが起きるステップ

[22ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=21)

1. DNAにpolyAシグナルとなる配列がある
2. RNAにpolyAシグナルが転写される
3. CstFとCPSFがpolyAシグナルを認識する
4. CPSFがRNAを切断、CPSFはRNA末端にとどまる
5. CPSFがpolyA polymeraseを動員する
6. polyA polymeraseはテンプレートに無いAMPを追加していく。これがpolyA Binding Proteinのbinding siteとなっていく
7. polyA Binding ProteinがpolyAをどんどんコーティングしていく
8. polyA Binding Proteinが一定以上追加された所でpolyA polymeraseが離される
    - これがpolyA tailの長さを制御している。だいたい200個のAが追加されたあたりで止まる

CPSFとCstFは以下の略。

- CPSF ... Cleavage and Polyadenylation Specificity Factor
- CstF ... Cleavage Stimulation Factor

polyAシグナルとしてはAAUAAAがあるのは間違いないが、他にも何かの条件はあるはず。でも分かっていない。

RNAの切断はCPSFにより行われるが、polyAシグナルを認識するにはCstFとCPSFの両方が必要な事が分かっている。

## RNA Pol IIのリリース

切断されてPolyadenylationされればmRNAは完成だが、RNA Pol IIはそれ以後も転写を続けている。
この無用な転写を終了させるメカニズムはどんなものか。

mRNAが切断されると、残りのRNAはcapされてない5'末端を持つ事になる。
この時点ではSer-5 Piはもう終わってもとに戻っているので、5' end modifying enzymeはCTDにはくっついていないから、
5'末端はcapされないまま保たれる。

するとRat1と呼ばれるexonucleaseが5'末端を保護されていないRNAを分解していく。

**Rat1（Ribonucleic Acid Trafficking）**

- Processive
- RNA 5'ー＞3' exonuclease
- キャップされてない5'末端のRNAしか分解しない
- CTDのSer-2 Piに依存して動員される（Ser-2 Piされてない時はRat1は配置されていない）

このRat 1が高いProcessivityでRNAを分解していく事で、RNA Pol IIのアクティブサイトからRNAを引き出して分解する事になる。
この[バクテリアにおけるTranscriptionのElongation](バクテリアにおけるTranscriptionのElongation.md)の「Rho-Dependent Termination」と似た仕組みで転写が終了する。
（RNAを引き出すとDNAがreannealingされる事でRNA Pol IIが離れていく）

RNA Pol IIが離れるとどこかのタイミングでCTDのリン酸化が解除される（次回のMediatorの動員のために）。

## クロマチンの構造にまつわる転写制御

TSSのupstreamにはnucleosome free regionがある。これはプロモーターとして機能するDNA binding transcription factorによるものと考えられている。

さらにupstreamにはacetylated nucleosomesが見られる。
これはchromatin structuresをオープンしてよりアクセスしやすくするという話だった。

TSSのDownstreamは、deacetylatedな、大なり小なりコンパクトにまとめられたchromatin structureが見られる。
これはDownstreamから転写がinitiationされて欲しくは無いので、initiationを防止するためにこうなっているのではないか。

### Set2とRPD3SによるDownstreamのdeacetylate

このDownstreamのdeacetylationはSet2と呼ばれる酵素により行われる。

- Set2はCTDのSer2, Ser5-Piにより動員される
- Set2はHistone Methyl Transferase
- Set2はH3K36をメチル化する（ヒストン3の36番目のlysine）
- メチル化されたH3K36はRPD3Sと呼ばれるHistone Deacetylaseを動員する（最後のSはSmallを意味する。LargeとSmallがあるらしい）
- RPD3SがH3とH4のアセチル基を取り除く
- 転写される領域をコンパクトにする

Histone修正のアセチル化は側鎖にspecificなものが多いが、Deacetylationはnon specificなものが多い。

## RNA Pol IIはどうやってクロマチンを通り抜けて転写するのか？

DNAの複製と同じSSRP1とSPT16というfactor（合わせてFACTと呼ばれる）が

FACT: Facilitates Chromatin Txnの略

FACTはH2A/H2B ヘテロダイマーをヌクレオソームから取り除く。
そしてこのヘテロダイマーをHistone Hexamer(Hexasomeと呼ばれる）の後ろに置いておく。（Hexamerは6量体）

6量体になる事でRNA Polymeraseが通り抜けやすくなると考えられている。

ただ、残りの6量体がDNAから外れて基質に溶けている様子は見られないので、RNA Polが残りを外すという訳では無さそう。
この辺の仕組みは謎が多い。
ただ6量体になると転写が進みやすくなるのは間違いない。

その後、SPT6と呼ばれるタンパク質がFACTと相互作用してH2A/H2Bをふたたび6量体に組み込んで8量体に戻す。（なお、取り除いたH2A/H2Bと同じH2A/H2Bとは限らない）

なお、このH2A/H2Bが取り除かれて別のものが来るかもしれない事は、多くのHistone ModificationがH3, H4を対象としているのと整合的である。
転写でH2A/H2Bの修正による情報は失われてしまいやすいので。

なお、[クロマチン、ヒストン、ヌクレオソーム](クロマチン、ヒストン、ヌクレオソーム.md)にあるように、ヒストンは通常Histone Octamerで、2つの H2A/H2B/H3/H4から構成されている。

## RNA Pol IIの転写のRate-Limiting Steps

RNAの転写の制御を考えるために、Rate-Limiting Stepの候補となる部分を見る。

1. Nucleosomes/Chromatinによる抑制
   - 30nm fiber  
geneが30nm fiberを形成してしまっていると、general transcription factorsの結合が妨げられ、RNA Pol IIの結合も起こらない。
これが一番基本的なInhibition。
   - NucleosomesがDNA Binding Transcription FactorsやGTFs（TFIIほにゃらら）のbinding siteを占拠してしまっている
2. RNA Pol II/GTFの動員（Closed Complex Formation)
3. Open Complex Formation（TFIIH activity）
4. Promoter Clearance（TFIIHのキナーゼの機能）
5. Promoter Proximal Pol II Pausing （PTEFb）

## The Gal4 Domain Swapping Experiment

25年ほど前に、Mark Ptashneが、イーストのGal4 DNA binding factorを調べた時の実験。

彼はGal4のDNA bindingに必要なドメインと、transcriptionのアクティベーションに必要なドメイン（activating region）を分離する事に成功した。

[23ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=22)

1. Gal4とガラクトースを加えるとlacZの転写がたくさん行われた
2. Gal4のDNAとbindingするsiteだけを残してこれにガラクトースを加えた
    - この修正したGal4はDNAにはbindingしてaffinityなどもGal4と同様だった
    - だが転写は得られなかった
3. Gal4のbinding siteの代わりにバクテリアのLexAというrepressorのbinding siteをDNAに移植して、さらにLexAを加えた  
ー＞転写は行われない
4. LexAにGal4のactivating regionを追加したタンパク質を加えた  
ー＞転写は行われた（！）

この実験は当時いろいろな点で驚きだった。

- DNA bindingなTFは結合自体がDNAの構造を変えてactivationしているのだと思われていたが、そうではないという事が示された
- タンパク質の一部を取り出して他のタンパク質とつなげても一部の機能が保たれるという事が判明した
    - 当時は複雑に折り曲がったタンパク質全体で一つの機能を提供していて、一部だけを切り出しても機能の一部が保たれるとは思っていなかった

two-hybrid assayはこの実験の応用。
DNA Binding Domainとあるタンパク質をくっつけて、Activation Domainと別のタンパク質をくっつけて、両者のタンパク質がくっつくならTFを生み出す、というもの。
転写を調べる事で両タンパク質がくっつくかが調べられる。

## 次: EukaryoticTranscriptionのDNABindingRegulators

[EukaryoticTranscriptionのDNABindingRegulators](EukaryoticTranscriptionのDNABindingRegulators.md)