## double-stranded DNA breaks (DSBs )の修復の概要

ここまでにも、DNAの複製を正しく行うための様々な機構を見てきた。

- DNA replication自体が高いfidelity
- DNA Polymeraseのproofreading機構（3'-5' exonuclease）
- Mismatch Repair
- Nucleotide Excision Repair
- Base Excision Repair
- Translesion Synthesis

ここからはさらにもう一つの損傷とその修復の機構、DSBsとそのrepairを見ていく。
double-stranded DNA breaks (DSBs)。

### DSBsの修復の機構

DSBsの修復の機構には大きく以下の２つのカテゴリがある

- non-homologous end joining (NHEJ)
- recombinational repair

以下ではNHEJについて見ていき、recombinational repairについては[[RecombinationalRepair]]で見ていく。

## double-stranded DNA breaks (DSBs )

修復の前に、まずはDSBsについて見ていく。
strandの両方に損傷が起こると、DSBsと呼ぶ模様。

### 直接的な原因

DSBsの原因は以下のものが挙げられる。

- X線
- γ線

### 一つのstrandの損傷がDSBsにいたるもの

UVなどで片方の損傷が起こるケースがそれぞれのstrandで十分近く起こって、そこでexcision repairの途中でexcisionが起こると、DSBsになってしまう場合がある。

また、片方のstrandにnickがある状態で複製が起こると、nickのある側はnickで止まり、そこの端がDSBとなってしまう。

片方にlesionがある状態での複製でも、違ったメカニズムでDSBになる事がある。
lesionがあるとそちらのstrandは複製が止まる。この時点ではnickがある訳では無いのでDSBにはならないが、
複製がしばらく経っても進まないと、フォークが巻き戻る。
すると複製されてる側のstrand同士が分離されてあまり、この２つがdsDNSを構成して余ってる片方をdegradeしていくとDBSとなる。

こちらのケースではdsDNAが途中で止まっているようなケースを指している模様。

## Classical NHEJ

Non-Homologous End Joining (NHEJ)のうち、良く理解されているclassicalな方についてまず見ていく。

### Classical NHEJで登場するタンパク質と基本的な修復手順

Ku 70-80と呼ばれるタンパク質が、DSBを探してDNAを調べている。
Ku 70-80はヘテロダイマーで、片方が70 kDa、もう片方が80kDa。

Ku 70-80は二重らせんを囲む円形の形をしていて、DNA末端に結合する。

Kuが結合すると、DNA-PK (DNA-denpendent protein kinases）が動員される。

KuとDNA-PKが両端に結合されると、DNA-PKは次にArtemisと呼ばれるタンパク質を引き寄せる。

Artemisはendonucleaseとexonucleaseの両方の機能をもったタンパク質。

その後後述するDNA trimmingを行い、最後にDNA ligase IV complexが両端をつなげる。
DNA ligase IV complexはDNA ligase IVを含む大きなcomplex。

以上の流れをまとめると以下となる。

1. Ku 70-80がDBSを見つける
2. DNA-PKが引き寄せられて結合する
3. DNA-PKがArtemisを引き寄せる
4. ArtemisがDNA trimming
5. DNA ligase IV complexが両端をつなげる

なお、あとの話を聞くとrepair polymeraseが伸張する事もあるっぽい（4と5の間か）。

### DSBsの種類とArtemisによるDNA trimming

X線やγ線が一方のstrandを壊すと、もう片方のstrandも壊れやすくなるので、やがてそちらも壊れる事が多く、DSBsが形成される。
この場合は全く同じ場所が壊れるとは限らず、ちょっと両者がずれている場合もある。

X線やγ線は問答無用で切るので、末端の化学的な状態は不定。
ポリメラーゼは3'末端にOHがある事を期待するし、
リガーゼは3'末端にOHが、5'末端にはPO4がある事を期待している。
だがこれらの前提は満たされないケースがあるという事。

これらの様々な事態に対応する為に、ArtemisはDNA trimmingの機能がある。
これが両端を期待する化学的状態に修正する。

### この修復の結果どういう状態が起こるか

正しく修復される場合もあるが、DSBsがどういうものかによって、結果はいくつかの場合がある。

- 重複したbpが入ってしまう
- bpが抜けてしまう

という訳で、数個のbpについてのscarが出来てしまう場合がありうる。

これはどのくらい酷いのか、というのは、場所による。
重要なgene expressionの中では致命的な結果にもなりうるが、
一方で大多数の場所では2〜3個の塩基の削除や重複挿入は全く問題が無い。

だから全体的にはおおむね問題無く、安全な修復手順といえる。
どちらかといえばhigh fidelity。

## Alternative NHEJ

クラシカルの他に、alternative/error-prone なNHEJがある事が分かってきている。

この修復はclassical pathwayがあまり活発でない細胞で起こるとか。

まず最初はPARP1が末端につく事で始まる。

PARP1がrepair proteinsを動員して、末端をととのえてつなげる、という事は変わらない。

ただclassicalと違うのはいつも同一の染色体同士をつなげるclassicalと違い、
別の染色体をつなげてしまう事が良くあるという事。
２つの末端を見つけ出してとにかくつなげてしまう。
Alternative NHEJは最終手段。

両者の切れ端同士のうち、ある程度の長さ（2〜10bp程度）がペアとして一致する所があると、そこを基準に修復をしていく。
このペアリングする領域をregion of microhomologyと呼ぶ。

microhomologyの両端を削って3'末端を伸張し、最後にDNA ligaseがつなげる。

Alternative NHEJはlow-fidelityで、chromosome loss/translocation が起こりうる。これらは壊滅的な被害を生む。
あくまで最終手段。

## DSBsの修復手段同士の比較


- Non-homologous end joining
   - classical ... 概ね良い結果となってquite high fidelityと言える。だがたまに致命的な結果にもなりうる。
   - alternative ... ボロボロの細胞でclassicalも機能しないような末期的な状況で起こる。
- Recombinational repair ... 最高のfidelityで完璧に修復出来る。ただ細胞分裂のサイクルの特定のフェーズなどでしか行えない。

NHEJとRecombinational repairのどちらが行われるかは細胞の種類、生物の種族、細胞の状態など様々な条件で決まるが、
典型的な哺乳類ではSフェーズの一番活発に複製される時期ではrecombinational repairが良く行われ、それ意外の大多数ではNHEJが行われる。