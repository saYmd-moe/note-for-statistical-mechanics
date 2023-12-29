#import "../../template.typ": *

== 近独立子系的统计应用

=== 二能级系统与负温度

$cal(H)$ 中的核自旋数量子数 $j = 1\/2$ 的粒子。有两个能级：$epsilon_1 = -mu cal(H) equiv -epsilon, quad epsilon_2 = mu cal(H) equiv epsilon$，其子系配分函数、内能和熵均可计算：$
Z = sum_lambda g_lambda e^(-beta epsilon_lambda) = e^(beta epsilon) + e^(-beta epsilon)\
U = macron(E) = -N diff/(diff beta) ln Z = - epsilon (e^(beta epsilon) - e^(- beta epsilon))/(e^(beta epsilon) + e^(-beta epsilon))\
S = N k (ln Z - beta diff/(diff beta) ln Z) = N k [ln(e^(beta epsilon) + e^(-beta epsilon)) - beta epsilon (e^(beta epsilon) - e^(- beta epsilon))/(e^(beta epsilon) + e^(-beta epsilon))]
$温度与熵之间存在关系 $display(1/T = ((diff S)/(diff macron(E)))_(N,V))$，为了方便表示 $1\/T$，我们对 $S$ 进行改写，首先有：$
macron(a)_1 = N e^(beta epsilon)/(e^(beta epsilon) + e^(-beta epsilon)), quad macron(a)_2 = N e^(-beta epsilon)/(e^(beta epsilon) + e^(-beta epsilon))
$又有：$
macron(E) = (macron(a)_2 - macron(a)_1) epsilon\
N = macron(a)_1 + macron(a)_2
$解得：$
macron(a)_1 = 1/2 (N - macron(E)/epsilon), quad macron(a)_2 = 1/2 (N + macron(E)/epsilon)
$于是系统总量子态数：$
W(macron(a)_1, macron(a)_2) = N!/(macron(a)_1! macron(a)_2!) = N!/(1/2 (N - macron(E)/epsilon)! 1/2 (N + macron(E)/epsilon)!)
$由_Boltzmann_关系：$
S = k ln W &approx k {N ln N - 1/2 (N - macron(E)/epsilon) ln [1/2 (N - macron(E)/epsilon)] \
&- 1/2 (N + macron(E)/epsilon) ln [1/2 (N + macron(E)/epsilon)]}
$于是温度有：$
1/T = ((diff S)/(diff macron(E)))_N = k/(2 epsilon) ln (N-macron(E)/epsilon)/(N+ macron(E)/epsilon)
$由上式可以看出：$macron(E) lt 0 arrow.double T gt 0; quad macron(E) gt 0 arrow.double T lt 0.$

- 关于负温度的结论
  + 处于负温度的系统，能量高于处于正温度的系统
  + 负温度比正温度更热
  + $plus.minus infinity$ 是相同的温度
  + $beta$ 越小，系统越热
- 负温度出现的条件
  + 粒子能级有上限
  + 负温度系统必须与正温度系统隔绝；或者内部平衡弛豫时间小于系统于外界之间的弛豫时间

=== 热辐射理论

$
cases(
  display(#[波动观点])cases(
    display(#[经典统计理论：_Rayleigh-Jeans_ 公式]),
    display(#[量子统计理论：_Plank_ 量子理论])
  ),
  display(#[粒子观点：_Einstein_ 光子气理论])
)
$

==== 经典理论

将空窖中的电磁场分解为无穷多*简正模*，每个简正振动相当于一个简谐振子。即将空窖中的辐射场等效为无穷多个简谐振子组成的系统，对该系统使用统计方法处理。考察简谐振子时，从相空间转到波矢量是很有益的，考虑满足周期性边界条件的波矢：$
bold(k)=(2 pi)/(L)(n_1,n_2,dots.c) , quad k_i = (2 pi)/L_i n_i
$每组 $(n_1,n_2,dots.c)$ 与偏振方向 $p$ 共同确定一种单色平面波 $(bold(k),p)$。每一个波矢在波矢空间中占据体积 $(2pi\/L)^r$，$r$ 是自由度的数目。假设 $r = 3$，波矢在 $k$ 到 $k + dif k$ 区间内的总波矢数为：#v(1.25em)$
D(k) dif k = (#pin(1) 4pi k^2#pin(2) dif k #pin(3))/(#pin(4) (2 pi \/ L)^3 #pin(5))=V/(2 pi^2) k^2 dif k
$#v(2.5em)
#pinit-highlight-equation-from((1, 3), 2, height: 1em, pos: top, fill: rgb(0, 180, 255))[
  $(k,k+dif k)$ 区间波矢空间体积，是一个球壳
]
#pinit-highlight-equation-from((4, 5), 5, height: 1.5em, pos: bottom, fill: rgb(150, 90, 170))[
  单个波矢在波矢空间占据的体积
]

现在从波矢空间转到我们关心的频率空间中，由色散关系 $omega = c k$：$
D(omega) dif omega = #pin(10) 2 times #pin(20)  V/(2 pi^2 c^3) omega^2 dif omega = V/( pi^2 c^3) omega^2 dif omega
$#v(3.5em)
#pinit-highlight-equation-from((10, 20), 20, height: 2.5em, pos: bottom, fill: green)[
  正反两个偏振方向引起的修正因子
]
随后就可以计算 $dif omega$ 区间内的能量了：$
U_omega dif omega = epsilon_(bold(k),p)^r (omega) D^* (omega) dif omega = V/(pi^2 c^3) k T omega^2 dif omega
$<Rayleigh-Jeans-formula>该式即为_Rayleigh-Jeans_公式，其中 $epsilon_(bold(k),p)^r$ 为单个单色平面波的能量，包含两个平方项（分别来自电场 $cal(E)$ 和磁场 $cal(H)$），由能量均分定理：$display(macron(epsilon)_(bold(k),p)^r = k T)$。对所有频率积分得到总能量：$
U = integral_0^(infinity) U_omega dif omega = V/(pi^2 c^3) k T integral_0^(infinity) omega^2 dif omega = infinity
$这是由于能量均分定律的使用导致内能密度发散，为了解决这个问题，我们需要 _Plank_的量子理论。

==== _Plank_的波动观点

对能量进行量子化，将谐振子的能量看作最小能量的整数倍：$
epsilon arrow epsilon_(bold(k),p)^r = n_(bold(k),p)^r h nu quad (n_(bold(k),p)^r=0,1,2,dots.c)
$平均能量现在由子系配分函数给出 $macron(epsilon)=macron(E)\/N=- diff/(diff beta) ln Z$：$
Z = sum_n e^(-beta epsilon_n) = sum_n e^(-beta n h nu) = 1/(1-e^(-beta h nu)) \
macron(epsilon) = - diff/(diff beta) ln Z = (h nu)/(e^(beta h nu)-1)
$当简谐振子能量不连续时，能量均分定理  $macron(epsilon)=k T$不成立，此时振子的平均能量与频率有关。此时 $dif omega$ 区间内的能量为：$
U_omega dif omega = macron(epsilon)(omega) D^*(omega) dif omega = V/(pi^2 c^3) (h nu)/(e^(beta h nu)-1) omega^2 dif omega = V/(pi^2 c^3) (hbar omega^3)/(e^(beta hbar omega)-1) dif omega
$<Plank-formula>该式即为_Plank_公式，进而计算辐射场总能量$
U &= integral_0^(infinity) U_omega dif omega = V/(pi^2 c^3) integral_0^(infinity) (hbar omega^3)/(e^(beta hbar omega)-1) dif omega attach(=,t: x equiv beta hbar omega) V/(pi^2 beta^4 c^3 hbar^3) integral_0^(infinity) (x^3)/(e^x - 1) dif x \
&= (pi^2 k^4 V)/(15 hbar^3 c^3) T^4 = a T^4
$其中有积分式 $display(integral_0^(infinity) (x^3)/(e^x - 1) dif x = pi^4/15)$。另外有_Wien_位移定律 $display((hbar omega_max)/(k T) approx 2.822)$。

==== _Bose_的粒子观点(光子气)

将热辐射场看作是由大量全同光子组成的，光子的自旋($s = 1$)，是_Bose_子。与_Plank_的波动观点通过_de Broglie_关系($bold(p) = hbar bold(k), quad epsilon=hbar omega=c p$)相联系。光子可以被空窖的壁面吸收/发射，所以光子数不守恒，化学势为零 $alpha = -beta mu = 0$，于是平衡态的光子气满足最概然分布：$
macron(a)_lambda = g_lambda/(e^(beta epsilon_lambda)-1)
$光子气在 $(omega,omega + dif omega)$ 频率间隔内的能量为：$
macron(E)(omega)dif omega = sum_(dif omega) macron(a_lambda) epsilon_lambda = sum_(dif omega) (g_lambda epsilon_lambda)/(e^(beta epsilon_lambda) - 1) = (sum_(dif omega) g_lambda) (hbar omega)/(e^(hbar omega\/k T)-1)
$<energy>令 $D(omega) dif omega$ 表示频率间隔 $(omega,omega+dif omega)$ 内的光子状态数，$D(omega)$ 代表光子的态密度，对于宏观体积 $V$ 来说，光子频率（及其动量）可以看作是连续变化的，因此可以使用积分代替求和：$
D(omega) dif omega = sum_(dif omega) g_lambda = 2 times limits(integral)_(dif omega) (dif omega^(*))/h^3 = 2 V/h^3 4 pi p^2 dif p = (V)/(pi^2 c^3) omega^2 dif omega
$因子 $2$ 同样是来源于两个不同的偏振方向。代回 @energy 中，可得：$
macron(E)(omega) dif omega = V/(pi^2 c^3) (hbar omega^3)/(e^(hbar omega\/k T)-1) dif omega
$与_Plank_的波动观点得到的_Plank_公式 @Plank-formula 相同。对于光子气我们还可以使用_Bose_子系的巨配分函数研究它的其他热力学性质：$
ln Xi &= - sum_lambda g_lambda ln(1-e^(-alpha-beta epsilon_lambda)) = - sum_lambda g_lambda ln(1-e^(-beta epsilon_lambda)) \
&= - integral_0^(infinity) ln(1-e^(-beta hbar omega)) D(omega) dif omega \
&= - V/(pi^2 c^3) integral_0^(infinity) omega^2 ln(1-e^(-beta hbar omega)) dif omega \
&= V/(pi^2 hbar^3 c^3) (k T)^3 integral_0^(infinity) x^2 ln(1-e^(-x)) dif x
$其中 $x equiv beta hbar omega$，使用分部积分： #v(1.5em)$
ln Xi &= - V/(pi^2 hbar^3 c^3) (k T)^3 quad 1/3{#pin(1) [x^3 ln(1- #pin(2) e^(-x))]_0^infinity #pin(3) - #pin(4) integral_0^infinity (x^3 #pin(5))/(e^x - 1) dif x #pin(6)} \ #v(3.5em)
&=- (pi^2 V)/(45) ((k T)/(hbar c))^3
$
#pinit-highlight-equation-from((1, 3), 2, height: 1.5em, pos: bottom, fill: rgb(0, 180, 255))[
  $=0$
]
#pinit-highlight-equation-from((4, 6), 5, height: 2.5em, pos: top, fill: rgb(150, 90, 170))[
  $=pi^4\/15$
]

然后很快啊，就能写出其他热力学量了：$
cases(
  display(U = - diff/(diff beta) ln Xi = (pi^2 V k^4)/(15 hbar^3 c^3) T^4),
  display(p = 1/beta diff/(diff V) ln Xi = (pi^2 k^4)/(45 hbar^3 c^3) T^4 = U/(3V)),
  display(S = k (ln Xi - beta diff/(diff beta) ln Xi) = (4 pi^2 V k^4)/(45 hbar^3 c^3)T^3),
  display(#[辐射通量密度：]J = 1/4 U c = (pi^2 k^4)/(60 hbar^3 c^2) T^4 = sigma T^4)
)
$

=== 固体热容理论

#align(center)[
#table(
  columns: (auto, auto, auto,auto),
  inset: 10pt,
  align: center,
  [*模型*],[*系统组成*],[*能级连续性*],[*频率*],
  [经典模型],[系统由 $N$ 个原子，可以看作 $3 N$ 个独立简谐振子],[能级连续变化，服从能量均分定律],[不考虑],
  [_Einstein_模型],[与经典模型的假设相同],[量子化的能量$epsilon = (n+1/2)hbar omega$],[所有振子频率相同],
  [_Debye_模型],[将固体看作连续弹性介质，由 $3 N$ 个独立平面波组成],[量子化的能量$epsilon_i = (n_i +1/2)hbar omega$],[不同简正振动的频率不同，有色散关系 $omega = c_i k$，横波与纵波的声速 $c_i$ 不同],
)]

==== 经典模型

$N$ 个原子分别在各自平衡位置作微小简谐振动，共有 $3N$ 个振动自由度。固体微观总能量为：$
E = sum_(i=1)^(3N) epsilon_i + E_0
$其中 $epsilon_i$ 为第 $i$ 个振动自由度的能量，有经典形式：$
epsilon_i = p_i^2/(2m) + 1/2 m omega^2 q_i^2
$$E_0$是固体结合能，只与体积有关。根据能量均分定理：$
macron(E) = 3 N k T + E_0\
C_V = ((diff macron(E))/(diff T))_V = 3 N k
$<Dulong-Petit-Relation>@Dulong-Petit-Relation 也叫做 _Dulong-Petit_关系。

==== _Einstein_的量子理论

辐射场的_Rayleigh-Jeans_公式 @Rayleigh-Jeans-formula 不发散是由于能量均分定理在低温下不适用，由此对上述经典系统的假设进行量子化处理，取量子化的振子能量：$
epsilon_n = (n+1/2)hbar omega, quad (n = 0,1,2,dots.c)
$每个振动自由度都看作是一个子系，_Einstein_模型是一个近独立的定域子系，使用_Maxwell-Boltzmann_分布计算子系配分函数：$
Z = sum_(n=0)^(infinity) e^(-beta epsilon_n) = sum_(n=0)^(infinity) e^(-beta (n+1\/2) hbar omega) = e^(-beta hbar omega\/2) sum_(n=0)^(infinity) e^(-beta hbar omega n) = (e^(-beta hbar omega\/2))/(1-e^(-beta hbar omega))
$于是每个振动自由度的平均能量：$
macron(epsilon) = - diff/(diff beta) ln Z = 1/2 hbar omega + (hbar omega)/(e^(hbar omega\/k T)-1)
$总能量：$
E = 3N macron(epsilon) = (3 N hbar omega)/(e^(hbar omega\/k T)-1) + E_0
$其中固体结合能 $E_0 = 3N hbar omega \/2$，于是固体热容为：$
C_V = ((diff macron(E))/(diff T))_V = 3 N k ((hbar omega)/(k T))^2 e^(hbar omega\/k T)/(e^(hbar omega\/k T)-1)^2
$<Einstein-CV-formula>令 $x equiv hbar omega \/ k T = theta_V\/T$，代入 @Einstein-CV-formula，有：$
C_V = 3 N k (x^2 e^x)/(e^x - 1)^2
$
这就是 _Einstein_固体热容公式。当温度足够高($hbar omega \/ k T lt.double 1$)时，该公式退化为经典统计的结果 $C_V = 3 N k$；当温度足够低($hbar omega \/ k T gt.double 1$)时，固体热容随温度趋于零而趋于零，这也是热力学第三定律（绝对零度不可能达到）。

==== _Debye_理论

把固体看作连续的介质，其中可以传播弹性波，弹性波可以分解为不同的简正模，将简正模作为子系使用 _Maxwell-Boltzmann_分布进行研究，_Einstein_的量子理论将每个振子的频率都看作相同的，_Debye_理论则考虑不同简正模的频率不同。与辐射场的电磁波相比，弹性波有两点不同：
+ 电磁波是横波，弹性波是既有横波也有纵波。$c_t, quad c_l$分别代表横波与纵波的传播速度；
+ 空窖中的辐射场有无穷大多的自由度，而 $N$ 个原子的固体振动总自由度为 $3 N$。所以存在*截止频率(_Debye_ 频率)* $omega_D$。

首先计算频率为 $omega$ 的简正模的平均能量，与 _Einstein_ 的量子理论相同，使用 _Maxwell-Boltzmann_ 分布计算子系配分函数：$
Z = sum_(n=0)^(infinity) e^(-beta epsilon_n) = (e^(-beta hbar omega \/2))/(1-e^(-beta hbar omega))
$于是频率为 $omega$ 的振子的平均能量为：$
macron(epsilon) (omega) = - diff/(diff beta) ln Z = 1/2 hbar omega + (hbar omega)/(e^(hbar omega\/k T) - 1)
$<debye-ave-energy> 由于每个振子都在不同频率下振动，总能量等于每个频率 $omega$ 下的振子数量乘上该频率下的平均能量再求和，为了计算频率在 $(omega,omega+dif omega)$ 区间内的振动自由度，我们首先转到波矢空间中，即 $(k,k+dif k)$区间内的波矢个数：$
D(k) dif k = (4 pi k^2 dif k)/((2 pi)/L)^3 = V/(2 pi^2) k^2 dif k
$三维空间中横波有两个偏振方向，纵波只有一个，$c_t, quad c_l$分别代表横波与纵波的传播速度，由色散关系 $omega = c_t k, quad omega = c_l k$，得到：$
D^*(omega) dif omega = 2 times V/(2pi^2) 1/c_t^3 omega^2 dif omega + V/(2pi^2) 1/c_l^3 omega^2 dif omega = V/(2pi^2) (2/c_t^3 + 1/c_l^3) omega^2 dif omega = B omega^2 dif omega
$<debye-density>其中$
B equiv V/(2pi^2) (2/c_t^3 + 1/c_l^3)
$所有原子的振动自由度为 $3 N$，所以存在一个截止频率 $omega_D$ 使得：$
3 N = integral_0^omega_D D^*(omega) dif omega = integral_0^omega_D B omega^2 dif omega = B/3 omega_D^3 \
arrow.double omega_D = ((9 N)/B)^(1\/3)
$现在我们就可以使用平均能量 @debye-ave-energy 和态密度 @debye-density 计算固体的总能量了：$
macron(E) = integral_0^omega_D macron(epsilon) (omega) D^*(omega) dif omega = B integral_0^omega_D (hbar omega^3)/(e^(hbar omega\/ k T)-1) dif omega + E_0(V)
$令 $y equiv hbar omega\/k T,quad x equiv hbar omega_D \/ k T = theta_D \/ T$，其中 $theta_D = hbar omega_D \/ k$ 称为 _Debye_温度，代入上式，注意到$B = 9N\/omega_D^3$ 有：$
macron(E) &= B ((k T)/hbar)^4 hbar integral_0^x y^3/(e^y - 1) dif y + E_0(V) \
&= 3 N k T 3/x^3 integral_0^x y^3/(e^y - 1) dif y + E_0(V) \
&= 3 N k T C(x) + E_0(V)
$其中 $C(x)$ 是一个无量纲的函数，称为 _Debye_函数，同时也是 $T$ 的函数，于是热容有：$
C_V = ((diff macron(E))/(diff T))_V = 12 N k C(x) - (9 N k x)/(e^x - 1)
$考虑两种极限情况：
+ *高温极限* $(T gt.double theta_D)$ 此时退化为经典统计
+ *低温极限* $(T lt.double theta_D)$ 有 *_Debye_ $T^3$定律*，即 $display(C_V/(3 N k) approx (4 pi^4)/(5) T^3/theta_D prop T^3)$

在足够低的温度下，起主要贡献的是低频（长波长）简正模，当波长满足 $lambda gt.double a$($a$ 为晶格常数)时可以看作连续弹性介质。

=== 非简并理想气体

理想气体是非定域系统，我们考虑满足非简并条件 $e^alpha gt.double 1$，其热力学量可以使用子系配分函数表示如下：$
cases(
  display(macron(N) &= e^(-alpha) Z),
  display(macron(E) &= -N diff/(diff beta) ln Z),
  display(macron(Y)_l &= - N/beta diff/(diff y_l) ln Z),
  display(S &= N k (ln Z - beta diff/(diff beta) ln Z) - k ln N!),
  display(mu &= - k T ln Z/N)
)
$理想气体分子的能量可以表示为四部分之和，分别是分子的平动、转动、振动和束缚电子运动的能量：$
epsilon_lambda = epsilon^t + epsilon^r + epsilon^v + epsilon^e
$同样，分子的配分函数也可以表示为四项配分函数相乘：$
Z &= sum_lambda g_lambda e^(-beta epsilon_lambda)\
&= (sum g^t e^(-beta epsilon^t))(sum g^r e^(-beta epsilon^r))(sum g^v e^(-beta epsilon^v))(sum g^e e^(-beta epsilon^e))\
&= Z^t Z^r Z^v Z^e
$

==== 单原子分子理想气体

对于单原子分子，能量仅有平动和束缚电子运动能量。首先考虑平动，在宏观体积下假设平动能级满足能级准连续 $Delta epsilon^t \/ k T lt.double 1$，因此平动配分函数中的求和可以转化为子相空间中对子相体积元的积分，注意到平动能量 $epsilon^t = (p_x^2 + p_y^2 +p_z^2)\/2m$：$
Z^t &= sum_lambda g_lambda^t e^(-beta epsilon_lambda^t)= integral (dif omega^t)/h^3 e^(-beta epsilon^t)\
&= 1/h^3 integral.triple dif x dif y dif z integral.triple dif p_x dif p_y dif p_z e^(-(p_x^2+p_y^2+p_z^2)\/2 m k T) \
&= V/h^3 (2 pi m k T)^(3\/2)
$<gas-partition-function>对于束缚电子运动能量的配分函数，由于束缚电子基态能级 $epsilon_0^e$ 与第一激发能级 $epsilon_1^e$ 之间能量差远大于 $k T$，所以束缚电子运动能量的配分函数可以只取基态能级：$
Z^e = sum_lambda g_lambda^e e^(-beta epsilon_lambda^e) approx g_0^e e^(-beta epsilon_0^e)
$于是便可计算平动和束缚电子运动的平均能量和热容：$
macron(epsilon^t) = - diff/(diff beta) ln Z^t = 3/2 k T&, quad C_V^t = N (dif macron(epsilon^t))/(dif T) = 3/2 N k\
macron(epsilon^e) = - diff/(diff beta) ln Z^e = epsilon_0^e&, quad C_V^e = N (dif macron(epsilon^e))/(dif T) = 0\
macron(epsilon) = macron(epsilon^t) + macron(epsilon^e) = 3/2 N k T + epsilon_0^e&, quad C_V = C_V^t + C_V^e = 3/2 N k
$同样可以计算其他热力学量，取电子基态能量为能量零点 $epsilon_0^e = 0$：$
p &= N/beta diff/(diff V) ln Z = N/beta diff/(diff V) ln Z^t \
&= N/beta 1/V = (N k T)/V = n k T\

S &= N k (ln Z - beta diff/(diff beta) ln Z) - k ln N! \
&= 3/2 N k ln T + N k ln V/N + 3/2 N k {5/3 + ln [g_0^e ((2 pi m k)/(h^2))]}\

mu &=- k T ln Z/N = - k T ln{((2 pi m k T)^(3\/2)g_0^e)/(n h^3)}\
&= -k T ln{((2 pi m)^(3\/2)(k T)^(5\/2) g_0^e)/(p h ^3)}
$<single-atom-gas-thermo>

==== 双原子分子理想气体

只需添加转动和振动部分的配分函数，平动和束缚电子运动的能量与单原子的情况相同。

首先考虑转动部分，由量子力学，双原子分子的转动能力和简并度分别为：$
epsilon_lambda^r = h^2/(8 pi^2 I) lambda (lambda+1) quad (lambda = 0,1,2,dots.c)\
g_lambda^r = 2 lambda +1 quad (lambda = 0,1,2,dots.c)
$于是可以写出转动配分函数：$
Z^r = sum_(lambda=0)^(infinity) (2 lambda +1) e^(-lambda (lambda+1) theta_r\/T)
$其中 $display(theta_r equiv h^2/(2 I k))$，称为*转动特征温度*。现在考虑两种极限情况：#v(1.5em)
+ *高温极限($T gt.double theta_r$)：*此时满足经典极限条件，配分函数中对于量子态的求和可以用子相体积的积分代替，有经典表达式：$
epsilon^r = 1/(2 I) (p_theta^2 + 1/(sin^2 theta) p_phi.alt^2)
$$
Z^r &= 1/h^2 integral_0^pi dif theta integral_0^(2 pi) dif phi.alt integral_(-infinity)^(+infinity) e^(-beta p_theta^2\/2I) dif p_theta integral_(-infinity)^(+infinity) e^(-beta p_phi.alt^2\/2I sin^2 theta) dif p_phi.alt\
&= 1/h^2 2 pi ((2 pi I)/beta) integral_0^pi sin theta dif theta \
&= (8 pi^2 I)/(h^2 beta)
$于是平均转动能量：$
macron(epsilon^r) = - diff/(diff beta) ln Z = 1/beta = k T\
C_V^r = N (diff macron(epsilon^r))/(diff T) = N k
$
+ *低温极限($T lt.double theta_r$)：* 保留前两项，有：$
Z^r = sum_(lambda=0)^(infinity)(2lambda + 1) e^(-lambda(lambda+1)/theta_r\/T) approx 1 + 3 e^(-2 theta_r\/T)\
ln Z^r = ln(1 + 3 e^(-2 theta_r\/T)) approx 3 e^(-2 theta_r\/T)
$进而：$
macron(epsilon^r) = -diff/(diff beta) ln Z^r = 6 k theta_r e^(-2 theta_r\/T)\
C_V = N (diff macron(epsilon^r))/(diff T) = 12 N k (theta_r/T)^2 e^(-2 theta_r\/T)
$

#h(2em)下面讨论振动配分函数，同样先给出量子力学形式：$
epsilon_n^v = (n+1/2) hbar omega quad (n = 0,1,2,dots.c)\
g_n^v = 1 quad (n = 0,1,2,dots.c)
$振动配分函数为：$
Z^v = sum_n e^(-(n + 1\/2)hbar omega \/ k T) = (e^(-hbar omega\/2 k T))/(1-e^(-hbar omega\/k T))
$于是平均振动能量和热容：$
macron(epsilon^v) = -diff/(diff beta) ln Z^v = (hbar omega)/(e^(hbar omega\/k T) - 1) + 1/2 hbar omega \
C_V^v = N (diff macron(epsilon^v))/(diff T) = ((hbar omega)/(k T))^2 (e^(hbar omega\/k T))/(e^(hbar omega\/k T)-1)^2 = (x^2 e^x)/(e^x - 1)^2
$其中 $x equiv hbar omega\/k T = theta_v \/ T$，$theta_v equiv hbar omega\/k$ 称为*振动特征温度*。可以看到表达式与_Plank_理论下的辐射场能量相同，因为二者使用的都是简谐振子的模型。

==== 多原子分子理想气体

TODO

=== 弱简并理想气体

相较于非简并条件 $e^(alpha) gt.double 1$，弱简并条件为 $e^alpha > 1$。

==== 弱简并理想_Bose_气体

将分子看作质点，忽略内部结构，考虑自旋 $s = 0$ 的_Bose_子；注意到宏观体积下有能级准连续 $Delta epsilon lt.double k T$，用相体积积分代替简并度求和求其巨配分函数：$
ln Xi &= -sum_lambda g_lambda ln(1-e^(-alpha-beta epsilon_lambda))\
&=- integral (dif omega)/h^3 ln(1-e^(-alpha-beta epsilon))
$其中能量 $epsilon = (p_x^2 + p_y^2 + p_z^2)\/2m=p^2\/2m$，我们有*态密度*，粒子能量区间 $(epsilon,epsilon dif epsilon)$ 内的量子态数量为 $D(epsilon) dif epsilon$，有：$
D(epsilon)dif epsilon &= integral (dif omega)/h^3 = 1/h^3 integral.triple dif x dif y dif z integral.triple dif p_x dif p_y dif p_z \
&= V/h^3 4 pi p^2 dif p = (2 pi V)/h^3 (2m)^(3\/2) epsilon^(1\/2) dif epsilon
$带回上式中，我们令 $x equiv beta epsilon$，于是巨配分函数有：$
ln Xi &= - (2 pi V)/h^3 (2m)^(3\/2) integral_0^(infinity) ln(1-e^(-alpha-beta epsilon)) epsilon^(1\/2) dif epsilon\
&= - (2 pi V)/h^3 ((2m)/beta)^(3\/2) integral_0^(infinity) ln(1-e^(-alpha-x)) x^(1\/2) dif x\
$积分部分可以看作是 $alpha$ 的函数 $F(alpha) equiv integral_0^(infinity) ln(1-e^(-alpha-x)) x^(1\/2) dif x$，有热力学量：$
cases(
  display(macron(N) &= - diff/(diff alpha) ln Xi = (2 pi V)/h^3 ((2m)/beta)^(3\/2) F'(alpha) = V/lambda_T^3 g_(3\/2)(z)),
  display(U &= - diff/(diff beta) ln Xi = (3/2 1/beta) (2 pi V)/(h^3) F(alpha) = (- F(alpha)/(F'(alpha))) 3/2 N k T = 3/2 k T V/lambda_T^3 g_(5\/2)(z)),
  display(p &= 1/beta diff/(diff V) ln Xi = -(2pi)/h^3 ((2m)/beta)^(3\/2) F(alpha) = (-F(alpha)/(F(alpha))) (N k T)/V = 1/(beta lambda_T^3)g_(5\/2)(z)),
)
$<bose-gas>其中热波长 $lambda_T equiv h\/(2 pi m k T)^(1\/2)$，逸度 (_fugacity_) $z equiv e^(-alpha)$ 。取一阶小量近似（ #text(red)[\#TODO] 过程略）可以得到：$
U = 3/2 N k T (1 - (n lambda^3)/(4 sqrt(2))) \
p = n R T (1 - (n lambda^3)/(4 sqrt(2)))
$

==== 弱简并理想_Fermi_气体

计算过程与弱简并理想_Bose_气体相同，直接给出结果：$
U = 3/2 N k T (1 + (n lambda^3)/(4 sqrt(2))) \
p = n R T (1 + (n lambda^3)/(4 sqrt(2)))
$

==== 统计关联

对比上述两个结果，我们可以看到$
U/(3/2 N k T) = (p V)/(N k T) = approx (1 plus.minus (n lambda^3)/(4 sqrt(2))) quad cases(
  display(-\, quad)#[弱简并理想_Bose_气体],
  display(+\, quad)#[弱简并理想_Fermi_气体]
)
$
#colorbox(
  title: [统计关联],
  color: "blue",
  radius: 5pt,
  width: auto
)[
  #set list(indent: .5em)
  - 弱简并条件下 $e^alpha gt 1$，气体内能与体积也有关系；
  - 修正项 $display(plus.minus (n lambda^3)/(4 sqrt(2)))$ 是粒子的全同性导致的，全同粒子波函数相互交叠产生*统计关联*；
  - 可以将附加项等效为势能（与体积和距离有关）
  - 弱简并理想_Bose_气体统计关联表现为吸引力($-$)；弱简并理想_Fermi_气体统计关联表现为排斥力($+$)。
]

=== 强简并理想气体

上面已经讨论过非简并 ($e^alpha gt.double 1$)和弱简并 ($e^alpha gt 1$)的情况，现在讨论强简并条件 ($e^alpha gt.tilde 1$) 下的理想气体。

==== 强简并理想_Bose_气体与_Bose-Einstein_凝聚

由 @bose-gas ：$
N = V/(lambda_T^3) g_(3\/2)(z) = V/h^3 (2 pi m k T)^(3\/2) g_(3\/2)(z)\
g_(3\/2)(z) equiv sum_(lambda = 1)^(infinity) z^lambda/lambda^(3\/2) = z + 1/2^(3\/2) z^2 + 1/3^(3\/2) z^3 + dots.c
$级数 $g_(3\/2)(z)$ 存在最大值 $g_(3\/2)(1)=gamma(3\/2)$，给定 $N, V$，当温度 $T$ 下降时该级数会增加，必存在一个温度 $T_c$ 使得：$
N = V/h^3 (2 pi m k T_c)^(3\/2) g_(3\/2)(1)
$即：$
T_c = h^2/(2 pi m k)[n/(g_(3\/2)(1))]^(2\/3)
$当温度低于 $T_c$ 时等式不成立，这是由于对弱简并理想_Bose_气体的计算中从能级求和到相体积元的近似中有 $D(0) = 0$，忽略掉了基态能级 $epsilon_0 = 0$ 的贡献，当 $T lt T_c$ 时处于基态的粒子数量无法忽略（产生凝聚现象）。我们只需要将基态 $epsilon=0$ 的这一项作为修正加回来就可以了：$
ln Xi &= - sum_lambda g_lambda ln (1- e^(-alpha-beta epsilon_lambda))\
&= -ln(1-e^(-alpha)) - sum_(epsilon_lambda gt.eq epsilon_1) g_lambda ln(1-e^(-alpha-beta epsilon_lambda))\
&= -ln(1-e^(-alpha)) - integral_(epsilon_1)^(infinity) ln(1-e^(-alpha-beta epsilon)) dif epsilon\
&= -ln(1-e^(-alpha)) - integral_(0)^(infinity) ln(1-e^(-alpha-beta epsilon)) dif epsilon\
&= -ln(1-z) + V/lambda_T^3 g_(5\/2) (z)
$逸度 $z equiv e^(-alpha)$，热波长 $lambda_T = h\/sqrt(2 pi m k T)$，总粒子数有：$
&N = - diff/(diff alpha) ln Xi = z diff/(diff z)ln Xi = macron(N_0) + macron(N)_(op("exc"))\
&macron(N_0) = - z diff/(diff z) ln(1-z) = z/(1-z)\
&macron(N)_(op("exc")) = V/lambda_T^3 g_(3\/2)(z) = V/h^3 (2 pi m k T)^(3\/2) g_(3\/2)(z)
$其中 $macron(N)_0$ 和 $macron(N)_(op("exc"))$ 分别为基态和所有激发态上占据的粒子数。

#grid(
  columns: 2,
  gutter: 5pt,
  box(width: 100%)[
    当 $T lt.eq T_c$ 时，有：$
    cases(
      display(N_op("exc")/N = (T/T_c)^(3\/2)),
      display(N_0/N = 1 - (T/T_c)^(3\/2))
    )
    $如右图所示，_BEC_ 的能量、动量、熵和压强均为 $0$。实际上是从非零动量态转变到零动量态，是一种动量空间中的“凝聚”；_BEC_发生凝聚的相互作用力来源于量子统计效应。
  ],
  box(width: 100%)[
    #figure(
      image("../../assets/figures/BEC.svg",width: 80%),
      caption: [*_Bose-Einstein_凝聚*：当 $T lt T_c$ 时会在基态上凝聚宏观量级的粒子]
    )
  ]
)

==== 强简并理想_Fermi_气体(金属中的自由电子气)

强简并理想_Fermi_气体满足 $e^alpha lt.double 1$，我们来研究金属中的自由电子气体，这种电子气满足：自旋 $s = 1\/2$，无外磁场时两个取向的能量相等，所以计算态密度 $D(epsilon)$ 时记得乘上因子 $2$。计算巨配分函数$
ln Xi &= sum_lambda ln(1+e^(-alpha-beta epsilon_lambda)) = integral (dif omega)/h^2 ln(1+e^(-alpha-beta epsilon_lambda)) \
&= integral_0^infinity D(epsilon) ln(1+e^(-alpha-beta epsilon_lambda)) dif epsilon\
&= (4 pi V)/h^3 (2m)^(3\/2) integral_0^infinity ln(1+e^(-alpha-beta epsilon_lambda)) epsilon^(1\/2) dif epsilon
$热力学量使用_Fermi_分布函数 $f_lambda = macron(a_lambda)\/g_lambda = sum_lambda 1\/(e^(alpha+beta epsilon_lambda)+1)$ 来表示：$
N = - diff/(diff alpha) ln Xi = sum_lambda 1/(e^(alpha+beta epsilon_lambda)+1) = sum_lambda f_lambda = integral_0^infinity f(epsilon) D(epsilon) dif epsilon\
U = - diff/(diff beta) ln Xi = sum_lambda epsilon_lambda/(e^(alpha+beta epsilon_lambda)+1) = sum_lambda epsilon_lambda f_lambda = integral_0^infinity epsilon f(epsilon) D(epsilon) dif epsilon\
$我们重点考虑 $T = 0 K$ 时电子气的性质，令 $mu(0)$ 为 $T = 0 K$ 时电子气的化学势能，有：$
f(epsilon) = 1/(e^((epsilon - mu)\/k T) + 1) = cases(
  display(1\, quad epsilon lt mu(0)),
  display(0\, quad epsilon gt mu(0))
)
$#text(red)[即 $mu(0)$ 是 $T=0K$ 时电子可占据的最大能级，我们把 $mu(0)$ 叫做_Fermi_能级]，记作 $epsilon_F = mu_0$。通过重整化可以确定_Fermi_能级：$
N &= integral_0^infinity f(epsilon) D(epsilon) dif epsilon = integral_0^(epsilon_F) D(epsilon) dif epsilon\
&= integral_0^(epsilon_F) 2 times (2 pi V)/h^3 (2m)^(3\/2) epsilon^(1\/2) dif epsilon\
$进而得到：$
(8 pi V)/3 ((2m)/h^2)^(3\/2) epsilon_F^(3\/2) = N
$另外定义*费米动量* $epsilon_F = p_F^2\/2m$，于是得到：$
epsilon_F = h^2/(2m) (3 pi^2 n)^(2\/3)\
p_F = hbar (3 pi ^2 n)^(1\/3)
$有 $T=0K$ 时电子气体的内能：$
U(0) = integral_0^infinity epsilon f(epsilon) D(epsilon) dif epsilon = (4 pi V)/h^3 (2m)^(3\/2) integral_0^epsilon_F epsilon^(3\/2) dif epsilon = 3/5 N epsilon_F
$对于非相对论性粒子，压强满足：$
p(0) = 2/3 U(0)/V = 2/5 n epsilon_F
$

$T > 0K$ 时 #text(red)[\#TODO]
