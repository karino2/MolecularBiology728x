修復のメカニズムには以下のようなものがある。

- Direct Repair
- Base Excision Repair
- Nucleotide Excision Repair
- Translesion Synthesis

## Direct Repair

UV lightでpyrimidine dimerが出来たケースなどを修復する、photolyaseなどがこの機構。

photolyaseはpyrimidine dimerと高いaffinityをもって結合し、通常の可視光を使ってFADHという部分が自由電子を生み出し
cyclobutaneを通常のnon-pyrimidine dimer状態に戻す。
もとの状態に戻すとaffinityが低下するので離れていく。

つまりDNAの損傷した場所を直接修復する。

他にもO6-methylguanineを、メチル基を取り除く事で修復するケースもある。
この場合は反応の過程でこの修復を行うenzymeが殺されてしまう。

### photolyaseのaffinityの仕組み

photolyaseはpyrimidine dimerをフリップさせて自分側に向けて結合する。
通常はbase pairが水素結合でつながっている所、pyrimidine dimerが形成されるとstrand間の結合が弱まるのでフリップしやすくなる。
そしてフリップしたdimerとphotolyaseが結合する。

だからフリップしやすい部分の方が高いaffinityを示す。

## Base Excision Repair

glycosylaseは損傷したbaseを除去する。

[DNAの損傷](DNA%E3%81%AE%E6%90%8D%E5%82%B7)の加水分解の所で記したように、CがdeaminateされるとUになる。
また、dUMPが組み込まれてUが入る事もある。

glycosylaseはこのUを（塩基部分だけ）除去する。
このまま複製されると片方が無い部分（apurinicかapyrimidinicのsite、つまりAP site）の片方がランダムに選ばれてしまうので、
複製の前に修復される必要がある。

glycosylaseもUの部分をフリップしてactive siteに近づけて反応を行う（この場合は加水分解）。

### 修復手順

1. glycosylaseがUの塩基部分を除去（AP siteとなる）
2. AP-EndonucleaseがDNAのAP siteの5'側を切断する
3. 5' to 3' ExonucleaseがAP phosphodiester backboneとさらに1〜3 base程度を除去する
4. DNAポリメラーゼとDNAリガーゼがDNAを再合成してニックをシールする

### いくつかのglycocylase

- Uをターゲットにするもの
- G:TペアのTをターゲットにするもの（5-methylcytidineがdeaminateするとThymidineになるのでG:Tペアが誤って出来る）
    - CpG methylationのある人間などの細胞にしか無い（バクテリアには無い）

### rNMPが組み込まれた場合の修正

1. RNaseH2がrNMPに向かう5'をカットする
2. ポリメラーゼが5'末端を伸ばして新しく合成した3'OHで置き換える
3. FEN1がflap DNAを認識してカットする（FEN1はFlap Endonucleaseの略）
4. ligateしてつなげる

flapは上に折れて突き出た部分の事か。

## Nucleotide Excision Repair

- lesion ... 損傷
- adduct ... 付加物

BulkyなDNAのmodificationが起こった部分に作用する（pyrimidine dimerなど）。
二重らせんが崩れるような大きな損傷で使われる。

### Uvr A, B, C, Dによる修復の例

1. Uvr A/B がA2B2 complexを形成して、DNAをスキャンし続けてBulky adductsを探す
   - どうやってスキャンが移動していくのかは良く分かってない
   - 普通のDNAだと比較的早く離れる事くらいは分かってる
2.  損傷が検出されると、以下が起こる
    - 結合が強化される
    - Uvr Aが自身に結合しているATPを加水分解し、UvrA-ADPが離れる
3. Uvr Bだけが残ると、ヘリカーゼのような挙動でDNAを開く(meltと言っていた）
4. 損傷している方のstrandのUvr Bが離れる（どちらが損傷しているかが分かるらしい）
5. 残ってる方のUvr BがUvr Cと結合する
    - Uvr CはEndonucleaseで、損傷したbaseから 5'側を8bp、3'側を4〜5bpの部分をカットする(つまり12〜13baseが削除される）
6. Uvr D(またの名をヘリカーゼII）がexcised ssDNAを取り除く（ニックが入った間って意味か）
7. DNAポリメラーゼとリガーゼが間を合成してシールする

### Transcription Coupled Repairによるコーディングリージョンの優先

RNAポリメラーゼを使ってDNAの損傷を検出する。

RNAポリメラーゼは損傷のあるあたりで良くstallしている。
これがシグナルとなって、Transcription Coupled Repair Factor、通称TCRFを連れて来る。

TCRFは２つの事をする

1. ATPの加水分解を使ってRNAポリメラーゼを追い出す
2. Nucleotide excision repair proteinを動員する（例えばE. coliの場合はUvr A）

以後は損傷と結合して通常のNucleotide excision repairのプロセスが始まる。

### E. coliとEukaryoticのNERタンパク質の比較

| 役割 | E. coli | eukaryotic |
| ---- | ---- | ---- |
| 損傷の検出 | UvrA | XPC + DDBI/XPE |
| DNA opening | UvrB | XPA/TFIIH |
| DNA cleavage | UvrC | XPF (3’)、XPG(5’) |
| oligo removal | UvrD (Helicase II) | TFIIH |
| DNA合成 | Pol I | Pol デルタ か Pol イプシロン |

TFIIH (TF2H）は転写で詳しく扱うらしい。

## Translesion Syntesis

Y-familyのポリメラーゼが担当する。

1. 通常のポリメラーゼがstallする（ポリメラーゼIIIとか）
2. Sliding Clampは残るがポリメラーゼは離れる（横についている）
3. translesion DNA ポリメラーゼが代わりにはまる（ポリメラーゼスイッチング）
 4. baseを適当に合成していく（processivityはpoorで2とか3baseとか）

Aが多めらしい。

### labeled primerとテンプレートにpyrimidine dimerのあるものを使ってassayする

labeled primerを使って通常のprimer extension assayと同じ手順で、
テンプレートの方にpyrimidine dimerを作れば良い。

E. coliだとポリメラーゼI, II, IIIではpyrimidine dimerまでしか伸びないが、
translesion polymeraseであるポリメラーゼIVかVを加えておけば端まで合成が続くので長さの違いで検出出来る。

