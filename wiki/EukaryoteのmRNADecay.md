前: [バクテリアのmRNADecay](%E3%83%90%E3%82%AF%E3%83%86%E3%83%AA%E3%82%A2%E3%81%AEmRNADecay)

## そもそもdegradationから保護される仕組みはどうなっているか？

degradationを考えるにあたり、まずすぐに分解されてしまわない為の保護のメカニズムがどうなっているかを見て、
それがどう解除されるのか、という順番で見ていく。

mRNAがすぐに分解されないのは、5'末端と3'末端それぞれに仕組みがある。

- 5'末端 ... 5' cap
- 3'末端 ... poly-A tail

5' capは[EukaryoticTranscriptionTermination](EukaryoticTranscriptionTermination)の「C-terminal Domainのリン酸化」に少し登場していた。
これら２つがdegradationのenzymeをブロックする。

クイズではm7Gppp capとも書かれていた。

### Eukaryoteのdecay概要

バクテリアとの違いに着目して簡単に概要を見る。

[32ページ](https://karino2.github.io/ImageGallery/MolecularBiology728x3.html#lg=1&slide=31)

1. deadenylaseによるpoly-A tailの除去（150〜200程度のAが12未満とかに）
2. 5'側cappingのdecappingが起こる
3. 5'と3'の両端から分解していく
   - 5'側は5' to 3' exonucleaseが分解
   - 3'側はexosomeが3' to 5'の向きで分解していく

バクテリアはendonucleaseが途中を切断して、その中から外に向かって（inside-out）exonucleaseが分解していくが、
Eukaryoteでは両端から中に向かって分解していく。

### ステップ1: Deadenylation

Eukaryoteでは、いつもpoly-A tailの除去から始まる（deadenylation）。
decappingで5'側から分解するケースでも必ずその前にdeadenylationが起こる。

このステップでは、典型的には12未満くらいまで削られる。もっと削られる事もあるが、
何にせよ12未満くらいになるとpoly-A binding proteinが結合できなくなるので、そこまでで十分。

この12という数字は生物種によって違いはあり、20くらいの生物も存在する。

このステップでpoly-A binding protein（頭文字でPABPとも呼ばれる）が全てリリースされるのが重要。
PABPのリリースがdecapping をアクティベートする。

PABPの存在がこのステップを遅くして、これがdegradationのrate limiting stepとして分解の速度を調整する。

### ステップ2: 5'のdecapping

PABPがリリースが5' capのdecappingをstimulateする。

### ステップ3: 両端からdegrade

3'末端側からは、RNA exosomeと言われるものが分解していく。
これは複数のRNaseやヘリカーゼなどを持つmulti protein complex。

uncapな5'側からは、Xrn 5' to 3' exoが分解していく。これは単独のタンパク質。（あとでXrn1と言っているが種類があるのか同じものなのか）

### どう抑制されているかの関係（保護のメカニズム）

PABPがexosomeをinhibitする。またsecondary structureもinhibitする。

5' cappingがXrn1をinhibitする。

## Eukaryotic Deadenylases

最初のステップとなるdeadenylationを行う酵素を見ていく。
Eukaryoteには複数のDeadenylaseがある。
抑制や活性されるメカニズムに違いがある。

- CCR4-Not ... PABPによって抑制される
- Pan2-Pan3 ... PABPによってstimulateされる（constitutive turnover rateを決定）
- PARN ... PABPによって抑制されるが、5' capによってstimulateされる

constitutiveとはいつも起こっているという意味で、なにかの刺激が無くとも発生している通常のなにかを表すらしい。

CCR4-Notは動員されて使われる類のenzymeで、micro RNAsなどに使われたりする。
残り２つはいつも偏在している類のenzyme（constitutive）。

これらのenzymeが、RNA binding proteinによって動員されて使われる事もある。