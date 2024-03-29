## ２つのキーQuestion

- Specificity: RNAポリメラーゼはどのように目的のgenesを識別しているのか？
- Efficiency: どのくらいの頻度でgeneは転写されるのか？

## RNAの転写に必要なこと。

[1ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=0)

1. dsDNAテンプレート
2. rNTP

## RNAポリメラーゼとDNAポリメラーゼの比較

共通の項目

| 同じ項目 | RNAポリメラーゼ | DNAポリメラーゼ |
| ---- | ---- | ---- |
| 3’末端にだけ追加 | Yes | Yes |
| 塩基の追加にはDNAテンプレートが必要 | Yes | Yes |
| 4つのrNTPs/dNTPsのどれに対しても一つのアクティブサイトで賄う | Yes | Yes |

異なる項目

| 違う項目 | RNAポリメラーゼ | DNAポリメラーゼ |
| ---- | ---- | ---- |
| 使われるNTPs | rNTPs | dNTPs |
| プライマーが必要か？ | 不要 | 必要 |
| fidelity | 10^4 bpに一回のミス | もっとずっと少ない |
| rate | 60-100 nt/sec | 1000 nt/sec |
| processivity | 4000 nt/binding 以上 | より低い |
| DNA strandsのコピー | 一方向で、1 strandだけコピー | 両方のstrands |

## Transcriptionを測るassayたち

**Gene by Gene Expression**

- Incorporation Assay
- Primer Extension Assay
- RT-PCR

**Global Transcription**

- RNA-Seq
- GRO-Seq

## Incorporation Assay

[[DNAポリメラーゼの活動の計測]]と同様のassay。
ラベルとしてはrNTPのうちrUTPを使う事が多い。

生産物を分離する方法はDNAポリメラーゼの時と同様にFilter BindingかGel Electrophoresisを使う。

Gel Electrophoresisの場合はRNAが折りたたまれてしまう問題に対処する必要があるので、
denaturing gelを使う事。

denaturing gelとしてはたくさんの尿素をゲルに含めるのが手頃。

また、Transcriptionの結果を分析する場合、initiationはpreciseだがterminationはimprecise（開始地点はいつも同じだが終了場所はばらつきがある、という事か）という事にも気をつける必要がある。

そこで、run-off transcription assayと呼ばれる手法を使う。

[2ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=1)

| メリット | デメリット |
| ---- | ---- |
| 早い | Start siteは分からない |
|定量的| |

## Primer Extension AssayでTSSを調べる

[[DNAポリメラーゼの活動の計測]]と同じようなassayだが、目的も使う道具も違う。今回はTranscription Start Sitesを調べるのに使う。

[3ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=2)

- 生成されるRNAを何らかの方法で分離する
- TSSの下流の部分に対応するRNAの部分に結合するssDNA primerを作り、5'の方にラベルづけする（部位が一意に決まるように25ntとかの長さ）
- reverse transcriptaseで逆転写する
- denaturing gelで分離して生成されたDNAの長さを測る（長さを知りたいので分解能の高いacrylamide gelを使う）

結果の長さを測る事で結合した場所から端までの場所が分かり、シーケンスのどこがTSSかを特定する事が出来る。

reverse transcriptaseはテロメアの所でtelomeraseとして登場していた。他にもレトロウィルスなどで出てくる。

| メリット | デメリット |
| ---- | ---- |
| 5’末端の正確な情報が得られる | 一度に一つのgeneについての情報しか分からない |
|   | sensitivityがlow〜medium程度（少量発現するgeneには向かない） |

## RT-PCR

目的のRNAがどれだけ存在しているかを調べるassay。

Reverse Transcriptase PCR。略してRT PCR。ただしこれはReal Time PCRと組み合わせて使う事も多く、その場合は RT RT-PCRになる。

[4ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=3)

手順

1. RNAを分離
2. 2つのペアになっているDNAプローブを作る。geneの3'末端側をターゲットにする。（3'末端があればtranscriptionが終わっている事が保証出来るから）
3. RNAに２つのDNAプローブをアニールする（片方だけRNAとはアニールする）
4. Reverse TranscriptaseでアニールしたDNAをextend
5. thermophilicなDNAポリメラーゼを使ってPCRする
6. Non-denaturing gelで分離するか、Real Time PCRでモニターする。

これで目的のRNAが相対的にどのくらい多く存在しているかを確認出来る。

| 利点 | 欠点 |
| ---- | ---- |
| とてもsensitive（少量のRNAでも検出出来る） | 一度に一つのgeneしか分からない |
|  | 5’末端がどこかは分からない |

数十のオーダーのRNA分子でも検出出来るらしい。頑張れば一つも可能と言っているlabもあるとか。

少しノートがわかりにくかったので補足。2つのDNAプローブは、ノートの一番上に書いてある、目的の配列を含む左から右と右から左の２つのDNA片。
これでReverse Transcriptaseでどちらか片方のDNA片がextend出来てcDNAが作れて、このcDNAをもう片方のDNAをprimerとしてPCR出来る。


[[Assays]]

### Real Time PCR

dsDNAの生成物を染めるdyeを使って、生成物が増えていく量を時間とともに観測する手法。
no template controlも加えてlinearの範囲を過ぎてない事を確認する必要がある。
少し汚染されてるだけでも大量に増幅するとそれが見えてしまう事があるから。

## RNA-SeqによるGlobal Transcriptionのassay(RNA-seqと書かれる事も)

Deep sequencingを使って細胞全体について調べる。

1. RNAを分離（in-vivo）
   - mRNAをリボソームRNAやtRNAから分離する
   - Eukaryotic cellではRNAにたくさんのAのテールがある（poly A tail）ので、oligo dTのカラム（ビーズ）で分離出来る。
   - Prokaryotic cellsでは5'末端に3リン酸が無いRNAを除去する方法があり、rRNAやtRNAの多くは3リン酸が無いので除去出来る。
2. mRNAのcDNAを作る（6merのRandom primersとreverse transcriptaseで作る）
3. cDNAを300〜500bp程度のサイズに切断する
4. Deep Sequencingする

これで存在しているmRNAの量が測れる。

Deep Sequencingについては[[Originを見つける3つのassay]]の「Nascent Okazaki Fragment Mapping」も参照。
同じようにbinningしてそのbinの中で開始しているフラグメントの数を数える。

| 利点 | 欠点 |
| ---- | ---- |
| 転写された全geneについての情報が得られる | 本質的には定量的では無い（しかしrelative quantitationは出来る） |
|  | steady stateのRNAレベルを測っている（転写の量では無い） |

- relative quantitationとは２つの異なる種類の細胞に同じ手法を使って、相対的な量の違いを調べる事は出来る。
- steady stateの情報は、transcriptionのレートだけでは無く、turnoverのレートも影響したものになってしまっている。

## GRO-Seq

- striatal cell 線条体細胞

Global Run On Sequencingの略。run onはどんどん進む、進行する、というような意味。

RNA-SeqはあるRNAのstabilityが観測結果に影響を与えるので、Transcriptionについて調べたい時には不都合な面がある。
GRO-Seqは転写をしているRNAポリメラーゼを捉える事で転写についての直接的な情報が得られる。

手順

1. 核を単離するか細胞をpermeabilizeするかする
   - 核の外部のrNTPはほとんど無くなる（溶けて薄まってしまってなくなる）
2. BrUTPとrNTPを加える
   - RNAポリメラーゼがこのあとに合成をしたものはBrUTPを含む事になる
   - initiationの所は見ていないが、合成を続けている（run on）RNAポリメラーゼの活動を見ている事になる
3. RNAを分離
4. BrUのantibodyを使ってBrUMPを含んだRNAをimmunoprecipitateする。
5. 3'末端と5'末端で異なるprimerをligateする
6. Reverse transcriptaseを使ってDNAを作り、出来たssDNAにプライマーをつけて通常のDNAポリメラーゼでdsDNAを作る
7. Deep Sequencing

BrUTPはBromoのanalogue（PngNoteの5ページも参照）。
BrUTPを含むRNAを識別するantibodyが作れる。

[5ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x2.html#lg=1&slide=4)

eukaryoticの細胞ではTSSにRNAポリメラーゼがくっついて、そのままとどまっているというケースが凄く多いので、
進んでいるかどうかの違いは重要。

このassayの利点としては、進行中のtranscriptionの情報が得られる、という事。

このassayで、eukaryoticの細胞ではRNAポリメラーゼがTSSからgeneの側に進むものと、反対側に進むものの両方がある事が判明した。
ただgeneの反対側に進んで合成されるRNAはとてもunstableですぐに分解されてしまうからRNA-Seqでは見えない。
eukaryoticの細胞の多くのプロモーターはRNAポリメラーゼを両方に進める模様。

追記: 新しくRNA Polymeraseが合成を開始してしまうのはsarkosylというので防ぐらしい。

- [Nuclear run-on - Wikipedia](https://en.wikipedia.org/wiki/Nuclear_run-on)
- [Global Run-On sequencing (GRO-seq) - PMC](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5880289/)

## 次：バクテリアのTranscription入門

[[バクテリアのTranscription入門]]