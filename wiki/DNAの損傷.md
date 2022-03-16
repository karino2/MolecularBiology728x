ミスマッチ修復の他に、損傷の修復の機構もある。
損傷の修復を見るにあたり、まずはどういう損傷があるのかを見ていく。

- mutagenesis 突然変異生成

## 損傷や変異の原因

- baseの化学的不安定性（自然発生）
   - 加水分解 (水の存在）
   - oxidation
- ionizing radiation
   -  紫外線 (UV light) ー＞ pyrimidine dimersを形成
   - X-rays ー＞ double-strandedのbreak
- alkylating agents (ケミカル）
- base analogs
   - dUMP (ウラシル) deoxyuracil triphosphateが出来るとdTTPの代わりにDNAに組み込まれる
   - rNMPs... `10^3`〜`10^4`に一回程度でrNMPが入る事がある。
        - イーストの一回の分裂で10000個のリボヌクレオチドが入る頻度
- DNA intercalating agents ... baseの間に挟まる試薬

## どのような損傷が引き起こされるか？ ー misincorporationとなる例

加水分解やメチル化やbase analogsは、複製時に誤った塩基を合成してしまう損傷を導く。
なお正常と誤りの組み合わせがプリン同士、またはピリミジン同士のものをtransition、プリンからピリミジン、または逆をtransversionと呼ぶ。

misincorporationはそのまま複製が走る事が出来て、複製されると変異となってしまう。

### 加水分解

シトシン（C)が加水分解してdeaminates（NH3が遊離）するとウラシル(U)になる。
UはTのように見えるのでAとマッチングしてしまう。

頻度はそれほど多くは無い変異。

また加水分解で塩基が単に分離して切り離されてしまう場合もある。無くなった場所は、プリンがなくなるとapurinic site、ピリミジンがなくなるとapyrimidinic siteと呼ぶ。

### methylation

シトシン（C）の5番目の炭素がメチル化する場合がある。5-methylcytdidine。

真核生物のCpG islandsなどではCがメチル化する事が知られている。

これがdeaminatedするとTが生成される。

グアニン（G)の6番目のOがメチル化する場合もある。O-6-methylguanine。
ここがメチル化するとCにもTにもペアリングするようになってしまい、相手がランダムに選ばれる。

8-Oグアニンや7,8-dihydro 8-oxoguanineはアデニン(A) とペアリングするようになってしまう。（本来のシトシン、Cではなく）

### Base analog

5-bromouracil。labeld heavy DNAを作る時に使われで通常はAとペアリングするが、
これはketoのtautomerであるenol状態をとる頻度がTより多い。
Tが自然にenol状態になって誤った合成を行ってしまう頻度である`10^5`に一回の頻度に比べるとずっと多くenol状態のペアリングとして誤ってGを選んでしまう。（それでもAが選ばれる方が普通、頻度が増えるとは言えレアケース）

## どのような損傷が引き起こされるか？ ー 複製不能になるケース

DNAポリメラーゼが止まる損傷には以下のようなものがある。

### pyrimidine dimerが形成されるケース

紫外線で引き起こされてポリメラーゼがこれ以上進まなくなる。
ピリミジンが２つ連続で並んでいる所に紫外線が当たると起こる（つまり良く起こる）。

ピリミジンの並んだ二重結合がcyclobutane ringになってしまって、くっついてしまう。
こうなるとポリメラーゼがこれ以上進まなくなる。

### rNTPsが組み込まれるケース

rNMPがテンプレートに存在すると、DNAポリメラーゼはそこで止まる。

これらの誤りは以下の頻度で起こる

- Pol エプシロン（Leading） ... 1:1250 base (1250ベースに一回rNMPが混ざる）
- Pol デルタ (Lagging) ... 1:5000 base
- Pol α ... 1:600 base 
    - Pol αが合成する部分は[岡崎フラグメントrepair](岡崎フラグメントrepair.md)で置き換わると思われる

rNTPはdNTPの10倍から100倍の濃度で存在する。

凄く良くある。

## intercalating agents ー insertion-deletionのmutation

ethidium bromide、proflavin、acridine orangeなど。

これらの物質は塩基の間に挟まる。

偶然3'プライマーの端に挟まるとそのまま合成が進み、あとでintercalating agentsがどこかに行くとそこの部分がdeletionとなる。

template側に挟まると、使っている試薬によって異なる何かしらのbase pairが選ばれて、その後この試薬がどこかに行くとinsertionとして振る舞う。

## mutagenの確認 ー Ames test

ミスマッチやinsertion deletionを引き起こす試薬をmutagenと呼ぶ。

ある化合物があった時に、それがmutagenかどうかをどう確認するか？＞Ames testで確認

Ames testはReversion assayの亜種。

### Ames testの手順

1. selectableなミュータントのバクテリアから始める
   - Histidin合成経路のミュータントが使われる
   - 検出したいMutagenの種類によってmutationを選ぶ(ins-delなのかpoint mutationなのか、等）
2. His-のミュータントとさらに肝臓の細胞のextractを（加える or 加えない）の両方で培養する
   - 単体では無害だが体内で有害な物質に変えるケースがあるから肝臓の細胞のextractを加えるケースを試す
3. 2にさらにmutagen候補を入れて培養する
4. His-のselective mediaで2と3を比較する
   - His+の細胞だけが生き残る
   - mutagenだったら、変異が多いだろうからHis+を復活するようなものが多いと思われる
