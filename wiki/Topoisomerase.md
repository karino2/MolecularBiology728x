DNAヘリカーゼが[複製フォーク](複製フォーク.md)を進めていくと、フォークの前方のよじれはどんどんきつくなっていく。
どこかでほどかないといけない。

DNAのよじれを一旦ちぎって戻すのがTopoisomerase。

- thermophile 好熱性細菌

## 理想的なDNA構造とそこからの歪み

理想的には、1 turnで10.4bpがある状態がちょうど良い。
この状態をunstrainedと呼ぶ。

- optimal(またはunstrained) ... 1 turnで10.4bp
- owerwound(またはsupercoiled、巻きがキツすぎる状態） ... 1 turnで10.4bp未満
- underwound(またはnegatively supercoiled、巻きがゆるすぎる状態） ... 1 turnで10.4bpより大きい

よじれが多すぎる状態、overwoundとかsupercoilとか言うが、
そういう状態は、1 turnにつき、 10.4bpより少ない状態。

少ない、多いの判定はややこしいが、bp間の距離は一定であることを考えると良い。
そして1 turnあたりにどれくらいの距離があるかは、bp間の距離の和となる。

少ないbpということは1 trunの端から端までの距離が短いということを意味する。
多いbpということは1 turnの端から端までの距離が長いことを意味する。

topoisomeraseはoverwounded DNAをunwindして、underwounded DNAをrewindすることでoptimalな状態にする。

## 2種類のTopoisomeraseとその動作機構

topoisomeraseはDNAを切り離して、他の鎖を越えて再結合する。
長縄跳びを飛ぶような感じ。

切り離すのは[endonuclease](endonuclease.md)と似た機構。

topoisomeraseには２種類ある。

### Type I Topoisomerase

Type Iのtopoisomeraseは2重螺旋の片方の鎖を切り離して、反対側の鎖を越えて再結合する。

topoisomeraseはネックピローみたいな形で、２つの手がある。
片方の手のTyrのOH基と5'末端のPが共有結合し、もう片方の手は3'末端のOHと非共有結合をする。
そして切り離して、反対側の鎖を長縄跳びのように一回越えて再結合する。

飛び越える向きによって、
linking number (DNAの巻きの数で、twist+writheが定義）を1増やすか減らすかする操作となる。

通常Type IはATPやNADHなどのエネルギーを必要としない。

### Type II Topoisomerase

Type IIは二重らせんの2本をまるごと切り離して、他のdsDNAを越えて再結合する。
linking numberは2変わるらしい。

円環タイプのDNAは、複製が終わった時に、２つのDNAのリングが鎖がつながってるような状態になっている。
これをcatenane(カテナン）と言う。

Type II Topoisomeraseがcatenaneを切り離して２つのバラバラのリングに出来る。

ちなみに逆、つまり２つのリングを持ってきて、catenateすることも出来るらしい。

Type IIはATPやNADHなどのエネルギーが必要。

## GyraseとAnti-Gyrase

通常のTopoisomeraseは基本的にはよりリラックスな状態にDNAの巻きを調整するが、幾つかのバクテリアにはGyrase（ジャイレースっぽく発音する）と呼ばれるtopoisomeraseが存在し、
これはATPを使ってnegative supercoil側にunderwindする。種別としてはTopoisomerase IIの一種。

これは二重らせんをほどくのを容易にすると考えられる。これは複製や翻訳を助けるためと考えられている。

また、Thermophilesでは、anti-gyraseと呼ばれる、positive supercoil側に巻くtopoisomeraseも知られている。
これは95度のような極端な環境でDNAがほどけてしまわないようにする為と考えられている。
これもATPかNADHのエネルギー源を必要とする。

## DNAトポロジー

unstrained、またはrelaxed DNAとは、10.4 bp/turnの状態を言う。

DNAの構造を表す指標の一つにlinking numberがあるが、これはtwistとwrithe（よじれ）の和と定義される。

twistはDNAの片方の鎖が、もう片方を何周しているか、で定義される。

writheは二重らせんが何回自分自身と交差するか、と定義される。
正負は上のstrandがrightからleftへ向かっている時に正と定義される。
右とか左はややこしいが、交差しているところを見て、上を通る二本鎖が右上から左下に向かっている時は+1、左上から右下に向かっている時は-1の模様。

## Topoisomeraseのassay

- nick 小さな切り傷、小さな刻み目

通常、E. coliに対して、non-denaturing gelでゲル電気泳動すると、2箇所のバンドが観測される。
これは片方はnegatively supercoiledなDNAで、もう片方はrelaxedなDNA。
たいていのplasmidからはsupercoiledなDNAが得られる。

supercoiledなのはgyraseのせいだが、
relaxedなDNAがなぜ出来るかというと、切れ目が入ると自然の力で戻ってしまうから。

supercoiledの方が短いので、ゲルを早く移動する。relaxedが一番遅い。
円じゃなく線になっているものはその間くらい。

### topoisomeraseをE. coliのDNAに加える

topoisomeraseを加えてゲル電気泳動すると、supercoiledなDNAはだんだんとrelaxed状態になっていくので、
supercoiledとrelaxedの間にバンドが出来、時間とともに下側のバンドが上に移動していく感じになる。

### Type IとIIの違いを観測するassay

Crithidiaという生物は、kDNAと呼ばれる、大量にcatenatedされたplasmidを持つ。

Type Iではこのcatenateを分離しないのでゲルの移動は遅いまま。
Type IIではこのcatenateを分離するので移動が早くなる。