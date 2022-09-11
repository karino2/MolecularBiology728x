## MM Repairの概要

Repair(修復)には幾つかのケースがある。

### Repair が必要になるケース

- 複製エラー
- DNAへの攻撃

今回は複製エラーについてを見ていく。

[DNAポリメラーゼ](DNAポリメラーゼ.md)の「Proofreading Exonucleaseによる修正」も参照の事。

### 損傷の修復の一般的な手順

1. 損傷を検出する
2. 損傷をカットする
3. 再合成する

これらの手順は[岡崎フラグメントrepair](岡崎フラグメントrepair.md)と似ている。
岡﨑フラグメントではRNAがdamagedであり、それをRNaseやexoでカットして、再合成していた。

この手順を一般にExcision repairと呼ぶ。損傷部をexciseして再合成する。

## ミスマッチの修復 (MMR)

複製エラーの修復の一つ、ミスマッチのrepairについてをここでは見ていく。

ミスマッチの修復には幾つかの論点がある。

1. どのようにミスマッチを検出するか？
2. ミスマッチのうちどちらが誤ったstrandかを、どうやって判断するか？
3. ミスマッチ修復のassayはどのようなものになるか？

複製は、proofreading exonucleaseの仕組みで`10^7`に一回のミスを達成していた。
残りの`10^3`の改善がこのMismatch Repairの仕組みで達成される

また、組み換え（genetic recombination）でもミスマッチは発生する。

遺伝性の結腸がん（colon cancer）の原因はこのmismatch repairのgeneの変異な事が知られている。

### MMRの重要性、ミスマッチは潜行性だから

ミスマッチは、その状態でもう一回複製されると、wild-typeのdsとmutantのdsの２つが生まれるが、
どちらのdsも正しくマッチングしていてミスマッチでは無くなってしまい、異常を検出するのが難しくなる。

だからミスマッチは素早く見つけてすぐに直す必要がある。

## MutSによるミスマッチの検出

MutSはE. coliのミスマッチ検出タンパク質でdimer。Eukaryoticではもっと複雑だが、凄く似た構成の同種のタンパク質がある。

### DNAを曲げて、曲がりやすさでミスマッチを検出

MutSはDNAを結合する時に、DNAを曲げる。
この曲がりやすさでミスマッチを検出する。
ミスマッチがあるか無いかで2〜3 kcal くらいのエネルギー差があるとか。

### ゲノムのスキャン方法-ADPとbindして行う

MutSはADPまたはATPと結合している。
スキャン時はADPと結合した状態。
この状態では以下のような特徴がある。

 - 1秒程度DNAとbind
 - この間、DNA上をランダムにスライドする
 - 700bp程度の範囲をスキャンする
 - 1秒後にDNAから離れて、別の場所に結合する
 - エネルギーを使わずランダムに移動

### MM（ミスマッチ）を検出した時（ATPと結合)

- ADPをATPに置き換える(サブユニット2つなのでATP 2つになる)
- DNAともっとタイトにbindするようになり、600 secくらいのhalf lifeになる
- この状態でスライドし続けるが、MMと高いaffinityを示すのでその付近に偏在する
    - MutS-ATPがMMをマークする

こうして、MutSはMMを検出してマークする。

## どちらのstrandが誤ったstrandか？ - Nascent Strandの検出

複製時のエラーを考えると、MMのうち片方が合成で作られたもので、こちらが誤りと考えられる。
２つのstrandのうちどちらを新しく合成されたstrandだと認識するのか？

- Methyl Directed
- Nick Directed

これはE. coliとEukaryoticで大きく異る所なので順番に両者を見ていく。

## E. coliのNascent Strand検出 - Methyl Directed Nascent Strand Detection

E. coliやサルモネラ菌などの一部の生物は、特定の塩基配列をメチル化する。
これは本来は外部からの侵入者と自身のDNAを区別して、侵入者を切り刻んで分解する為の仕組みと思われるが、
それを利用してNascent strandを検出する。

GATCの場所を識別する。これはstrandのどちら側にもアデニンがある回文（palindrom）。

メチル化する酵素をDAM methylase（DNA Adenosine Methyl methylase）と呼ぶ。
メチル化するのにメチラーゼは命名規則に従ってないが、そういうふうに呼ばれている。
本来はmethyltransferaseと呼ばれるべきらしい。

DAM methylaseとSAM (S-Adenosylmethionine）が揃うと、
２つのstrandの両方のアデニンにメチル基を付加する。

複製時には、複製前に両方のstrandがメチル化されていて、
複製する時には合成される側はメチル化されてない鎖となる。
（片方だけメチル化されている状態をhemimethylatedと呼ぶ）。

数分後に合成された方の鎖もDAM methylase+SAMでメチル化される。

この数分の間はメチル基の有無でどちらが合成された鎖かを知る事が出来る。

- メチル化された鎖 - Parental
- メチル化されてない鎖 - Nascent

これを誰が認識するか、というとMutHとなる。

### E. coliのNascent strandの検出 - MutHによる切断

MutHはメチル化されてないstrandのGATC部分を切断するendonuclease。

MutHはMutS+MutLコンプレックスがある所に動員される。

GATCは256回に一回程度の頻度で現れる配列なので、大雑把にはMMの両側に128bpくらい探索すればそれぞれ見つかる。

## EukaryoticなどのNascent Strand検出 - Nick Directed Nascent Strand Detection

E. coliやサルモネラ菌などの一部の例外を除けば、メチル化はされない。
別のメカニズムが必要になる。

- 使うのは新しく合成されたDNAはnickがある、という事実（すぐに埋められてしまうが）
- 実際に検出するのはSliding Clampが存在している、という事
   - nickはPTJと同様にsliding clampのloadingを推進する
   - sliding clampは合成の進む向きと反対の面で構造が違う（どちらの面かでどっちが合成されるstrandかがわかる）

### EukaryoticなどのMutLの役割 - 特別なEndonucleaseを含み、ATPで制御される

これらの生物（E. coli等の少数の例外を除いた大多数）では、MutL内にendonucleaseがあって、
このendonucleaseはsliding clampが示す合成鎖の方をカットする。

MutLもATPで制御される。

- ATP bound MutL ... Endonucleaseは不活性
- ADP bound MutL ... Endonucleaseは活性

両者の状態の遷移はどうなっているか？
MutLのATPaseとしての機能はMutSと結合している時に有効になる。
つまりMutSと結合している時はADPの状態になる。

MutLのEndonucleaseは配列を特に認識せず、そこらへんをランダムにカットする（ただしどちらのstrandかは正しく識別している）。

### Nick directed nascent strand detection

Sliding clampには面の向きがあって、その向きとポリメラーゼが合ってないと機能しない。

それと同様に、sliding clampとMutLは向きによって振る舞いを変えて、MutLはいつもニックがある側のstrandをカットしていく。

新しく作られるニックは複数個作られて、少なくとも一組くらいはMMを挟む事が期待される。

この間隔はE. coliに比べると大きくなる場合がある。
だがsliding clampが残ってさえいればニックが埋められたあともどっちのstrandかは判別出来るので、time windowはE. coliのシステムより長い。

## 削除と再合成

MMとnascent strandを検出出来た。次は問題の箇所を削除して再合成したい。

1. Methyl directed: MutHが入れたカットが5'側か3'側かでメカニズムが違う
2. Nick directed

### メチルdirectedでの削除の２つのメカニズム

MMの5'側にnickが入っている場合、5'-3' exonucleaseがMMまでを分解していく(ExoVIIかRecJ)。
どうもhelicase IIもこの作用に関わっていそう。

どこまで分解されるかの制御は良くわかってないが、MutSがprocessivityに影響を与えているとは予想されている。
MMから数十bpくらい行き過ぎた所でfall offしているようで、kbpまで行く事は無い。
一方MMまでは100bp以上あっても分解し続けるので、何かしらのprocessivityの制御はありそう。

nickがMMの3'側の場合、使われるExonucleaseは別のもので、Exo Iで、これは3'-5' exonuclease。
この過程もhelicase IIは関わっている模様。

削除が適切に行われれば、残りはTPJとなるので通常のポリメラーゼが5'から3'側に伸張してリガーゼがnickを埋める。
（ポリメラーゼは通常のポリメラーゼIII。伸ばす範囲が長かればホロエンザイム）。

### Nick directed MMRにおける削除のメカニズム（は良くわかってない）

Exo Iしか使われていない模様。いつも5'側から3'側に分解されていく。
どうやって最寄りの5'側nickを見つけているのかとかは良くわかっていない。

