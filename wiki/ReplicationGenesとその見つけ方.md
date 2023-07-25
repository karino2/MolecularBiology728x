DNA genesとは、いろいろなものが知られているが、例えばDnaAの事である。
これはE. coliのinitiatorタンパク質。

- thaw 解凍する
- immunoprecipitate 免疫沈降させる

## 複製に関わるタンパク質

ここは前のUnitでやっていたが、内容的にはこちらと思うのでこのページに置く。

幾つかの生物ではOriginとReplicatorの特定に成功している。

- SV40 ウィルス (65bp)
- E. coli （245bp）
- S. cerevisiae（イースト） (100bp)

これらの生物でわかっている事として、２つ（または3つ）の構成要素がある。

1. Initiator binding site
2. unwoundしやすいDNAの領域
3. (Eukaryoticでは三番目の構成要素と思われている要素） nucleosomeが無い領域
 
unboundしやすいDNAの領域はATが豊富な領域。

さて、これらの事実はどうやって知る事が出来るだろうか？

## Biochemical Fractionationとその限界

複製に関わるタンパク質をどう特定するのか？最初に考えられるのはBiochemical Fractionation。
単純には以下のような事が考えられる。

- crude extractから始めて、ion exchange columnなどでfractionationしていく
- 得られた溶液の組み合わせで複製が実行される組み合わせを探す

fractionationの手順

- anion exchange column (正に帯電したカラム）を使う
- NaClの濃度を変えて洗い流す（0.1Mで流したA, 0.2Mで流したB、0.5Mで流したC、1.0Mで流したDなど）
- これらの組み合わせを見て、複製が実際に行える組み合わせを探す（だいたい一つに偶然必要なのが全部入るという事は無い）

これで大雑把な候補は絞れるが、より細かく絞っていくのはキリが無い。

[Assays](Assays)

## DNA複製に関わるタンパク質のGenetic screenに求められる事

DNAの複製に関わるタンパク質はそれが無いとそもそも生存出来ないので、
それが失われていたり機能しないalleleのものは、そもそも生存出来ない。

そこで、条件によって活性にしたり非活性にしたり出来る、
Conditional allelesが必要。
だいたいtemperature sensitiveなものが使われる。

- E. coliの場合、30度が生存可能温度、42度が非活性になる温度の変異が多い
- 低い側でinactiveになるgeneもある。10〜12度で非活性になる、とか。
- 低い側だと複製が遅くなるので実験にかかる時間が増えるからいまいち。

## 目的のtemperature-sensitiveなミュータントの作り方

temperature-sensitiveミュータントをtsミュータントと呼んでいるのかな。

1. EMS (ethylmethyl sulfate)でE. coli細胞を変異させる(80%が死ぬほどの変異）
2. 42度（ミュータントは非活性で生存出来ない温度）で細胞分裂の複製時間（doubling time）の1.5倍の時間待つ（30〜45分）
3.  tritiated thymidine (三重水素のthymidine）をgrowth mediaに加える。これはdTTPのprecursor。
4. 42度で3のgrowth mediaをミュータントの細胞に加えてふたたび1.5倍の複製時間待つ
5. tritiated thymidineを洗い流して、大量の通常のthymidineを含んだgrowth mediaを用意する
6. 5で用意したgrowth mediaで、再び42度で1複製時間分待つ
7. 冷蔵庫に入れて6週間とか待つ（-80度）
8. 30度の活性になる温度で培養

ミュータントは42度でも複製出来るので、tritiumを取り込む。これはβ線を放出する。β線はすぐに他のものにぶつかって吸収されてしまうので、
核の中に取り込まれたものだけがDNAを損傷出来て、外部のβ線は核には届かない。

だからステップ7の冷蔵庫の中で長時間置くと、tritiumを取り込んだ細胞だけが、ステップ8で死ぬ。

ステップ5でtritiated thymidineで無いthymidineを大量に含んだgrowth mediaで1複製時間待つ事で、
複製には使われないが細胞に取り込まれてしまっていたtritiated thymidineが取り除かれる。
このおかげでTSミュータントがステップ8で取り込んでしまったりしないという事か。

以上のステップをこなすと、ステップ8ではtsミュータントだけが生き残る。

### なぜtritiated thymidineを加える前に1.5倍複製時間待つのか？

複製に関する変異には、それが非活性になってから複製が止まるまでにかかる時間に違いが出る。
それは複製のメカニズムの何に影響を与えるかの違いがあるから。

tritiated thymidineがどれだけ取り込まれるかを縦軸に、横軸を時間として、特定の時間（20分とか）で30度から42度にした場合、
どういうグラフになるか？
すぐに取り込みが止まるもの(fast stop)と、少し待ってから取り込みが止まるもの(slow stop)がある。
filter binding assayで量は検出出来る。

- elongationに関わるものはすぐに止まる (fast stop)
  - ポリメラーゼ（dnaE）
  - ヘリカーゼ (dnaB)
  - プライマーゼ(dnaG)
- initiationに関わるものは少し時間が掛かってから止まる (slow stop)
  - initiator (dnaA)
  - ヘリカーゼローダー (dnaC)

クイズで、Beta clampとDNA gyrase (gyrA)がfastになっているが、DNA gyraseがなんでfastなのかね？
最初に解く所しか作用してないと思っていたが、これってひょっとしてフォークが伸びる先をずっとnegatively supercoilしているのかしら？

そしてBeta clampってなんぞや？sliding clampの事っぽいな。

## tsミュータントをどう使うか？

以上のステップでtsミュータントが得られた。
では、そのtsミュータントで何をしたいのか。以下のような事に活用出来る。

### fast stop, slow stopの早さでソートする

どんな種類があるかの情報が少し得られる。

### geneをクローンする

ゲノムを切ってplasmidに入れて42度で生きのこるか見る。
こうして増やしたら、 シーケンシングしたり、over expressしてタンパク質を集めたり出来る。

### EPITOPE TAG PROTEINする 

complexで機能するたぐいのタンパク質では、単体のクローンで集めても意味がない。
そういう時にはEPITOPE TAGを付加する手法が使われる。

epitope taggingは抗体を生成する短い塩基配列を遺伝子に付加する手法。（HA, Myc, FLAG, V5などが知られている）

そして合成された目的のタンパク質を免疫沈降させて取り出す。
この方法はタンパク質complexをまとめて取り出せるらしい。タウを免疫沈降すると、デルタやデルタプライムもついてくるとか。

免疫沈降ってなんぞや？antibodyを持つものを取り出す方法なんだろうが。

### Biochemical complementation

1. WTとtsミュータントのextractを得る
2. 複製の活動を計測(WTは活性、ミュータントは非活性のはず）
3. ミュータントのextractにWTのfractionを追加していく

WTを例えばanion exchange column(正に帯電したカラムを通して 濃度の違うNaClで流す）でfractionを得て、それをミュータントのextractに追加する。

以前のBiochemical fractionationとは違い、ミュータントで変異しているのは一つと思われるので、
それが含まれているfractionを探せば良いので、組み合わせが爆発しない。
単にいつもより細かくfractionを絞り込んでいけるはず。

Specific Activityがそれ以上改善しなくなるまでpurificationを続ける。

Specific Activityは以下を参照の事。 [ProteinPurification #Specific Activityを測る - Biochemistry 705x](https://karino2.github.io/Biochemistry705x/ProteinPurification#specific-activity%E3%82%92%E6%B8%AC%E3%82%8B)

## E. coliにおける、複製の始動

[複製の始動](%E8%A4%87%E8%A3%BD%E3%81%AE%E5%A7%8B%E5%8B%95)

