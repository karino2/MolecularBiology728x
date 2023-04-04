前: [TranslationのElongation](TranslationのElongation.md)

- UTR ... UnTranslated Region

## Initiationの目的

バクテリアとEukaryoteではInitiationのステップは大きく異なるが、Initiationの目的は共通である。

1. 特別なtRNA（Initiator tRNAと呼ばれる）をPサイトにロードする。このtRNAだけがAサイトを通らずにPサイトに直接入る。
2. リボソームをmRNAのstart codonに動員する

## バクテリアのInitiation FactorとInitiationのステップ（前半）

バクテリアのケースでは、三つのAuxiliary factors、IF1, IF2, IF3がある。IFはinitiation factorの略。
これらは最初30S側のA, P, Eサイトと結合する。

- ステップ1: 最初、50Sと30Sは結合したり離れたりしている。
- ステップ2: そこにIF3が30SのEサイトの一部に結合する。IF3が結合すると50Sと30Sは結合しなくなって、両者が離れる。
- ステップ3: 次にIF1がAサイトに結合する。
- ステップ4: IF2がIF1に結合する。Pサイトのそばに配置されるが、Pサイトをブロックはしない。
- ステップ5: IF2がInitiator tRNAとmRNAのstart codonを動員する。両者はどちらが先とかは決まっていない。なお、IF3もtRNAの結合を助けるらしい事が分かっている。

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

[Translationの基本と登場人物](Translationの基本と登場人物.md)参照。

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
   - 全て結合したものを48S PICと呼ぶことも

### Start Codonを見つけるためのステップ

1. 48S PICがmRNAを5'末端からスキャンしていき、Met-tRNAがbase pairするまで進める（AUGでペアリングする）
   - ほとんどいつも5'末端に一番近いAUGとペアリングする事になる
   - eIF4Aのhelicaseとしての活動で進められる（ヘリカーゼ無しでもこの反応は起こるが、スキャンというよりはランダムウォークっぽくなる）
2. base pairされると、eIF2のGTPが加水分解される
    - するとInitiator tRNAからリリースされて離れていく
    - すると、多くのeIFもリリースされていく。eIF1Aだけ残る
3. eIF5B-GTPがInitiator-tRNAとeIF1Aと結合する

### Large Subunit (60S)の動員のステップ

1. eIF5B+GTPがLarge Subunitと結合する。バクテリアのIF2と似たような機能。
2. eIF5BのGTPが加水分解される（factor binding siteによるいつもの加水分解）
3. eIF5B+GDPがリリースされる
4. Large Subunitの結合によりeIF1Aが追い出される

以上で、PサイトのInitiator-tRNAが配置されてmRNAも正しくStart Codonとベースペアしていて、Aサイト、Eサイトも空となり、
Elongationの準備が整う。

### バクテリアとEukaryoteのInitiation Factorの比較

 | Eukaryote | バクテリア |
| ---- | ---- |
| eIF1, 3, 5 | IF3 |
| eIF1A | IF1 |
| eIF2 | IF2のうちInitiator tRNAの動員 |
| eIF5B | IF2のうちLarge Subunitの動員 |
| eIF4 | 対応する要素無し |

IF2の役割はEukaryoteでは二つの別々のeIFに分割されている。

eIF4に対応するものはバクテリア側には無い。eIF4はmRNAにくっついて高次ストラクチャーを解体したりAUGのスキャンの為にmRNAを進めたりするヘリカーゼ的な機能。
バクテリアでは単純にRBSと16Sがbase paringするだけ。

## Eukaryoteの例外的なmRNAとIRES

いくつかの例外的なgeneは5'-capを必要としない。これらは代わりにIRESs（Internal Ribosome Entry Site）を使う。
これはmRNAが特殊な構造を作り、通常のinitiationのステップを一部バイパスしたりする。

3種類のIRESが見つかっている。

- Group I ... 80S (full ribosome）を直接動員する。これはeIFを全く必要としない。Initiator tRNA-Metすら要らない。これはウィルス由来のもののみ。コオロギのウィルスに見つかっている。
- Group II ... IRESがSmall Subunitを動員する。一部のeIFとInitiator tRNA-Metを必要とする。
- Group III ... IRES固有のBinding Factorを必要とする。これもeIF（の一部）とInitiator tRNA-Metを必要とする。

### IRESの例その1、CrPV

Group Iのコオロギのウィルス、CrPV（Cricket Paralysis Virus）の例を見ていく。

mRNAの5'末端に、tRNAのような構造があり、それとベースペアするmRNAのように見えるようになっている。
この5'末端の構造が直接Pサイトに結合する。

このままElongationが始まるような感じだが、最初はpeptidyl transferase反応が不要なのでそこだけ特殊。

これは、タンパク質の最初をMet以外の好きなものに出来るという点で応用のあるIRESで、
特定のgeneの前にこのIRESを置くことでMet以外から始まるタンパク質を合成させられる。

この5'末端の構造はコドン-アンチコドンの所は通常のtRNAとそっくりだが、一度Pサイトと結合すると通常のtRNAのclassic stateでは無くP/E-site hybrid stateと似た構造となっている。
acceptor endはEサイトの側に伸びている。

### IRESの例その2、Group IIのIRES

このケースでは、eIF4Gを直接mRNAのIRESが引き寄せて結合する。その後eIF4Aが結合する。eIF4Eは必要としない。
そしてこれが43S PICを結合して、
このIRESのdownstreamをスキャンしていき、IRESの最寄りのAUGをStart Codonとする。

つまり、このケースではeIF4Eをバイパスして、通常のmRNAの動員のステップを行う事で、5'-capを不要としている。

### IRESの例その3、Group IIIのIRES（apoptosisの例）

apoptosisの初期の段階で、eIF4Eが破壊される。これにより通常のtranslationがストップされる。
だが、apoptosisを進めるためのタンパク質は合成されて欲しい。

DAP 5（Death Associated Protein 5）というタンパク質がある。
これがIRES dependent translation association factor (ITAF、アイタフと発音)となっている。

DAP 5は細胞内のRNAの特定の配列（これがIRES）と結合する。

DAP 5はeIF4Gの一部と似た形をしている。eIF4Eと結合する部分に対応する領域は無いが、eIF4Aに対応する領域はある。
つまりDAP 5がeIF4Gの代わりをする事でGroup IIのIRESと似たようなメカニズムで翻訳が開始される。
つまり、DAP 5がmRNAのIRESと結合するとeIF4Aと43S PICと結合し、その後IRESのdownstreamのAUGをスキャンしていく。

この仕組みは、例えば通常はinhibitされたnucleaseのgeneとなっている所に、
アポトーシス時はその途中から翻訳する事でinhibitしている部分を取り除いたnucleaseを合成する、
というように使われたりする。
これでアポトーシス以外ではinhibitされているものが、アポトーシス時にはアクティブな物が合成されて、DNAなどを分解して行ったりする。

## 次: TranslationのTermination

[TranslationのTermination](TranslationのTermination.md)