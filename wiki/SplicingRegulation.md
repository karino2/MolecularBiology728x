前: [AlternativeSplicing](AlternativeSplicing.md)

## ExonとIntronのゲノム的なスケールの話

Exonは小さく、Intronはとても大きい事が多い。
だが通常のSplicingの図解ではそのスケールが表されていないので、難しさが分かりにくい所がある。

そこでここではゲノム的な視点でそれぞれのスケールなどを見ていこう。

| 項目 | 人間 | D.melanogaster（ハエ） |
| ---- | ---- | ---- |
| mean exon length | 320nt | 494nt |
| median exon length | 145nt | 272nt |
| mean intron length | 7563nt | 2068nt |
| median intron length | 1964nt | 642nt |

exonはタンパク質の1ドメインや、時には異なるspecifityの為の14AAという場合もあるように、とても短くなりうる。
平均では50〜250 ntくらいの長さ。せいぜい500nt程度に収まる。

intronは数千とかのオーダーでさらにもっと長い事もある。

この大量のintronの中からexonを探す、というのは、なかなか難しいタスクといえる。

## Splice Sitesの決定

[premRNAのsplicing](premRNAのsplicing.md)などでも見たメカニズムから考えると、spliceすることになるintronの両端にタンパク質がくっついてどこをSpliceするかが決まりそうに見えるが、
実際は少なくとも哺乳類に関しては、最初にexonがタンパク質に認識されている証拠がある。

つまり、