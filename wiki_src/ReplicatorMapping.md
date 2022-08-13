前: [[Originを見つける3つのassay]]

originと比較すると、replicatorの方が難しい。

1. plasmid based mapping
2. mutational mapping

## 1. Plasmid Based Mapping

これは単細胞生物でしか実現できていない。理由は良く分からないが、多細胞生物ではプラスミドは不安定だからか？

手順。

1. selectable markerを持つプラスミドからreplicatorを取り除く (EcoRIなどの制限酵素で）
2. プラスミドを含んでいた生物のゲノムを取り出す
3. 同じ制限酵素でゲノムをカットする(だいたい4kbサイズになる、6bpカッターなので、`4**6=4096`）
4. 片っ端からこの断片をプラスミドにligateする
5. このプラスミドを形質転換（transform）する
6. selectable mediaで形質転換したホスト細胞を選択（ura3 geneを持つプラスミドなら、uracilの欠けたメディアで培養する）
7. 生き残った細胞のDNAをシーケンシングする

細胞にプラスミドを加えて、正の電荷のイオンを加えて温めると、DNAが合成される。良くメカニズムはわかっていない。
8〜10 kbのDNA片が得られる。メガダルトンくらいのサイズ。

コロニー1つでだいたいmillionのオーダーの細胞が居る。

- 長所: 素早くreplicatorを見つける事が出来る
- 短所: 単細胞生物でしか使えない

## 2. Mutational Mapping

必要な前提条件

- 細胞の特定のDNAをmutagenize出来る必要がある
- origin function（またはreplicator function）についてのassayが出来る必要がある

実際の手順

1. replicatorの機能を持つと思われるターゲット領域の中の一部を順番に変異させる（plasmid based mappingなどで特定されている領域）
2. 特定の領域を変異させてoriginのactivityが機能する かを見ていき、機能しなくなる領域の変異を特定する（ここでorigin functionを判定するassayを使う。replicatorでも良い）
3. 機能しなくなる領域の和が必要な領域と分かる（必要とは分かるがそれだけで十分かは分からない）
4. 領域の和の範囲を使ってoriginが機能するかを見る（十分な領域の判定）

