- lesion 傷害、傷

## E. coliの様々なDNAポリメラーゼ

- DNA Pol I
  - exonucleaseは5' to 3'と3' to 5'の両方
  - subunitは一つ
  - processivityはlow (10-100)
  - [岡崎フラグメントrepair](岡崎フラグメントrepair.md)用
- DNA Pol II
  - exonucleaseは3' to 5'でproofreading用
  - subunitは一つ
  - processivity はlow
  - DNA repair用
- DNA Pol IV, V
  - exonucleaseは無し
  - low processivity
  - bypass repair用らしい
- DNA Pol III Core
  - exonucleaseは3' to 5'
  - subunitは3つ
  - processivityはlow (10-100)
- DNA Pol III Holoenzyme
  - subunitは10
  - proessivityはとてもhigh (`10^5`以上)
  - 染色体複製用

最初にArthur Kornbergが見つけたポリメラーゼはDNA Pol I。これは大量にある。

3' to 5'のexonucleaseはproofreadingで一般的に使われる。
5' to 3'はこれから合成しようとする部分の先にある末端を分解する訳だが、これが[岡崎フラグメントrepair](岡崎フラグメントrepair.md)でRNase Hがプライマーを分解した後の残りを取り除くのに使われる。

なお5万bp以上のprocessivityは計測不能。

## DNA Pol III Holoenzyme

Holoenzymeは複数のタンパク質の集合体で、複数の酵素が関連して機能する複合酵素の事。

### 構成要素

1. 3つのDNA Pol III Core（一つがleading、２つがraggingに使われる）
2. Sliding DNA clamp loader
   - 3つのタウと呼ばれるタンパク質は、それぞれがDNA Pol III Coreと結合する
      - このタウは柔軟性があって、動く
   - 1つのデルタタンパク質と、一つのデルタ'タンパク質
3. Sliding DNA clamps（リング）
   - リング状で、後ろからポリメラーゼを押さえてprocessitivyを高める役割
   - 2つか3つのサブユニットで出来てる（生物によって違う）
   - αヘリックスが真ん中に輪を作っていて、ここにDNAの二重螺旋が入る

### DNAと結合する時のメカニズム

1. Clamp loaderにATPが結合
2. ATPが結合している状態だと、sliding clampとclamp loader（のデルタ'）が結合する
3.  Sliding clampのリングが開く（もともとストレスの掛かっている状態で閉じられているので、ちょっと何かあるとすぐ開く）
4. PTJと結合する、PTJはリングの中に入る
5. PTJのprimerがClamp loaderと相互作用してATPを加水分解する
   - primerの3' OHがATPを加水分解できるのは、ちょうどsliding clampのリングの中を通った状態で結合した場合のみ
6. ADPとPiが放出される
7. リングとPTJがClamp loaderから離れ(ATPが無くなったので）、リングが閉じる

## これまで登場したタンパク質をまとめたトロンボーンモデル

### これまで登場したタンパク質の相互作用（バクテリアの場合）

1. ポリメラーゼholoenzymeのタウサブユニットがDNAヘリカーゼの活動を促進する（合成が遅れてヘリカーゼから遅れると、ヘリカーゼの活動が停滞して追いつくのを待つ）
2. DNAヘリカーゼは、そばにあるDNA Primaseの活動を促進する
3. Sliding clampsがPol III Coreのprocessivityを促進する（後ろから押さえて再開するまでその場に留める）
   - PTJが終わるとすぐにポリメラーゼを解放する

### トロンボーンモデルのメカニズム

1. ヘリカーゼがDNAをunwindしていく
2. Leading strandはDNAポリメラーゼが合成をしていく（後ろにはSliding clampのリングが押さえる）
    - clamp loaderのタウとヘリカーゼの相互作用がヘリカーゼの活動を促進する（さきほどの相互作用の1で述べた）
        - この相互作用がholoenzyme全体をヘリカーゼのそばのちょうど良い位置に留める
3. Lagging strandのポリメラーゼはprimerを延長していくが、それはフォークの進む向きとは反対
    - lagging strand側にはフォークから出てくるsingle stranded DNAが溜まっていく
    - そこには[複製フォーク](複製フォーク.md)で述べたSSBが結合してこの単鎖が他にくっついたり自身と折れ曲がってくっつくのを防ぐ
4. single strandedなDNAがkbくらいの量になると、プライマーゼがヘリカーゼと相互作用してprimerを合成する
5. PTJが出来たと認識されて、PTJがデルタの所に、Sliding clampがやってきてPTJを覆う、という先の「DNAと結合する時のメカニズム」で述べた事が起こる
6. 活動していなかったもう一つのDNAポリメラーゼがこのcliding clampとともに合成を始める

### トロンボーンモデルのアニメーション

[Molecular Visualizations of DNA - Original High Quality Version - YouTube](https://www.youtube.com/watch?v=OjPcT1uUZiE)

めちゃよく出来ていて感動するな。
まずprimaseがどこからともなく飛んできてprimerを作り、そのあとsliding clampがやってきてポリメラーゼとくっついで複製を始める。
lagging strand側に２つある理由も分かる感じになっていて、
これが一つのholoenzymeの働きというのは驚異的だよなぁ。

## Problem Set

置き場が無いのでここに置く。

quinolonesは抗生物質。ParC-ParE fusionはtopoisomerase IVで、これはtype IIとの事。

forkのcollapseのあたりは全然わかってないなぁ。これ、結局どうやって復旧するのかね？