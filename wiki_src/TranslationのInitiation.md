前: [[TranslationのElongation]]

## Initiationの目的

バクテリアとEukaryoteではInitiationのステップは大きく異なるが、Initiationの目的は共通である。

1. 特別なtRNA（Initiator tRNAと呼ばれる）をPサイトにロードする。このtRNAだけがAサイトを通らずにPサイトに直接入る。
2. リボソームをmRNAのstart codonに動員する

## バクテリアのInitiation FactorとInitiationのステップ（前半）

バクテリアのケースでは、三つのAuxiliary factors、IF1, IF2, IF3がある。IFはinitiation factorの略。
これらは最初30S側のA, P, Eサイトと結合する。

ステップ1: 最初、50Sと30Sは結合したり離れたりしている。

ステップ2: そこにIF3が30SのEサイトの一部に結合する。IF3が結合すると50Sと30Sは結合しなくなって、両者が離れる。

ステップ3: 次にIF1がAサイトに結合する。

ステップ4: IF2がIF1に結合する。Pサイトのそばに配置されるが、Pサイトをブロックはしない。

ステップ5: IF2がInitiator tRNAとmRNAのstart codonを動員する。両者はどちらが先とかは決まっていない。なお、IF3もtRNAの結合を助けるらしい事が分かっている。

[8ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=7)

要するにAサイトとEサイトをブロックしてaa-tRNAが入ってこれないようにして、Pサイトにだけ入ってくるようにしている。

## Initiator tRNAとMetの修飾

Initiator tRNAはMetのtRNAの一種だが、特別なもの。

Initiator tRNAにmethionineが結合すると、酵素でホルミル基が付加される。（fMetと表記する事が多い）

[9ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=8)

この修正はペプチド結合っぽく見えるので、ペプチド結合があるフリをしているとも言える。

### Initiator tRNAと普通のMetのtRNAの違い

Initiator tRNAは、ACCの下のbpが、C-Aとなっていて、ミスマッチがある。MetのtRNAはG-Cと正しくペアリングしている。
このミスマッチを直すとMetのformyl基の修正が無くなる事が分かっているので、
修正の酵素はここで区別している模様。

D-ループの入り口のA-Uペアもformyl基修正を促進する事が分かっている。

anticodonループにG-Cリッチな領域があり、これがPサイトと結合しやすく、Aサイトとは結合しにくくなているからくり。

## バクテリアのInitiation FactorとInitiationのステップ（後半）

前半でtRNAのリクルートまでは話をした。次はmRNAのリクルートから。

### mRNAのリクルート

mRNAにはRBSとしてGGAGGという配列があり、
RBSには16SのrRNAのCCUCC配列が結合する。

この3〜7baseだけ先のAUGがstart codonとなるのだったが、
この位置がPサイトのそばになる。
Pサイトに配置されてるfMetのtRNAがこのAUGの場所を引き寄せる。

[[Translationの基本と登場人物]]参照。

### 50Sのリクルートと結合の強化

全てのIFが揃い、fMet-tRNAがPサイトに配置され、mRNAが正しく配置され、
このtRNAとAUGがbase pairingすると、まずIF3がdestabilizeされる。これは30Sとの結合が弱くなる、という感じか。

次に50Sがやってくる。IF3があっても50Sが結合するのは、どうもElongation時などの通常の50S-30Sの結合とは違うメカニズムのようで、
これはIF2が大きく関わっている模様。

そしてIF2にはEF-GやEF-Tuと同じGTP binding domainを持っていて、これが50Sのfactor binding site（sarcin-ricin loop）と相互作用してGTPが加水分解される。

IF2はGTPが加水分解されるとIF1ともtRNAとも結合しなくなって離れていく。

そうなるとさらに50Sと30Sが強く結合するようになり、これがIF3とIF1を押し出す。

こうして、50Sと30Sが一つになり、PサイトにはfMet-tRNAがあり、Aサイトは空の状態となる。
こうしてElongationが始まる条件が揃う。

## Initiationのステップの実験による順番の確認

IFやtRNAの結合について、先ほどは、以下のような順番と説明したし、以前はこう考えられていた。

1. IF3が来る
2. IF1が来る
3. IF2が来る
4. tRNAが来る

だが実験で確認してみるとそう確かな順番でも無さそう。

tRNAとIF2とリボソームをラベリングして順番を試す実験があるらしい。詳細は省略されていたが以下に結果を見ていく。

### IF1とIF3無しでのIF2とtRNAの結合の順番

IF1とIF3が無い状態でIF2とtRNAの結合の順番を調べてみると、tRNAが先に来るのが60%以上でIF2が先に来るのは30%くらい（残りは同時）なのが確認された。
これから幾つかの事が推測される。

- IF1とIF3が無くてもIF2が先に30Sと結合する事がある、という事は、IF2はIF1とだけではなくリボソームとも結合する能力がありそう。
- tRNAが結合した後にIF2が結合する方が多いという事は、tRNAはIF2の動員を促進する能力がありそう。

### IF1とIF3アリでのIF2とtRNAの結合の順番

これはIF2とtRNAの濃度によって結果が変わるらしい。

低濃度ではIF2が先でtRNAが後、が過半数。tRNAが先でIF2が後は40%くらい。残りは同時。

高濃度では同時の割合が増えて半分くらいは同時となり、40%くらいはIF2が先。

どちらにせよIF2が先な結果が増える。だが、tRNAが先に来ることもゼロにはならない。

### 実験結果のまとめや補足

これらの実験の結果、当初考えられていた順番はそこまで確かなものでも無いという事が分かった。

また、これはmRNAの種類によっても結果は変わりうる。特にRBSとAUGの間の距離がどれだけのmRNAかによって結果は変わると予想される。

たぶんベストな距離と思われている7nt程度ならtRNA単体のリクルートは効率的だろうし、
3nt程度のギリギリtranslation出来る事が知られているものならtRNA単体のリクルートは非常に非効率的だろうと予想される。

## Eukaryotic Initiation

バクテリアと違うところを中心に見ていく。

### バクテリアと違う所

1. Initiator tRNAはmRNAよりも前にSmall Subunitに結合する（バクテリアでは両者の順番は不定）
2. Small SubunitのmRNAへの動員はベースペアではなくInitiation Factorにより行われる
3. Start Codonの特定は、5'末端からスキャンして探す

なお、Large SubunitはEukaryoteでは60S、Small Subunitは40S。バクテリアから両方10を足せば良い。

### Met-tRNAがPサイトにロードされるステップ

[10ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=9)

1. まずeIF1, eIF3, eIF5, eIF1AがSmall Subunitに結合する
   - 1, 3, 5はEサイトの付近に、eIF1AはAサイトに結合する。1, 3, 5はバクテリアのIF3に似ていて、1AはIF1に似た役割。
   - Large Subunit(60S）が取り外される
2. eIF2+GTPが、Met-tRNAと結合する
3. eIF2+GTP+Met-tRNAがSmall SubunitとeIF1, 3, 5, 1Aと結合する
    - これら全部が結合したものを、43S Pre Initiation Complexと呼ぶ（PICと略す）

eIFはeukaryotic Initiation Factorの略。

### Small SubunitをmRNAに動員するためのステップ

[10ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=9)

1. eIF4EがmRNAの5'-capに結合する
2. eIF4GとeIF4AがmRNA+eIF4Eと結合  
なお、このeIF4E, eIF4G, eIF4Aの三つを合わせてeIF4Fと呼ばれることも（最初はこのcomplexとしてpurifyされた）
3. eIF4AがmRNAの5'側のsecondary-tertiary structureを解体する（eIF4AはmRNA helicaseとしてこの目的を果たす）
   - ribosomeは例外はあるものの基本的にはsingle strandのmRNAに結合しやすいので伸ばす必要がある
   - eIF4Bはかつて、このeIF4Aのhelicaseとしての機能を促進していると考えられていたが、現在ではRibosomeの40Sの構造を変化させて、mRNAとのbinding siteがアクセス可能になるようにしていて、その結果unwindが早く進むと考えられている。
4. 43S PICがmRNA/eIF Complexと結合する
   - eIF3がeIF4Eと結合
   - eIF1AがeIF4Aと結合


