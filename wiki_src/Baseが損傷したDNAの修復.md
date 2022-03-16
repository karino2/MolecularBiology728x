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

[[DNAの損傷]]の加水分解の所で記したように、CがdeaminateされるとUになる。
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