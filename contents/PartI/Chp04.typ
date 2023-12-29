#import "../../template.typ": *

== 多元复相系的平衡与热力学第三定律

=== 多元均匀系的热力学函数与基本微分方程

==== 化学变量

单元均匀系中添加了系统总摩尔数 $N$ 作为独立变量。在此基础上引入多元均匀系，设系统包含 $k$ 种不同的分子，每种分子称作一个组元，每个组元的摩尔数称为*化学变量*：$N_1, N_2, dots.c, N_k$。

==== 广延量的数学性质与偏摩尔量

当 $p,T$ 不变时，系统各组元物质量同时增加为 $lambda$ 倍，则所有广延量也增加为 $lambda$ 倍： $
U(p,T;lambda N_1, lambda N_2, dots.c, lambda N_k) = lambda U(p,T;N_1, N_2, dots.c, N_k)\
V(p,T;lambda N_1, lambda N_2, dots.c, lambda N_k) = lambda V(p,T;N_1, N_2, dots.c, N_k)\
S(p,T;lambda N_1, lambda N_2, dots.c, lambda N_k) = lambda S(p,T;N_1, N_2, dots.c, N_k)\
$也就是说#highlight[广延量是其广延变量的一次齐次函数]。*齐次函数*满足*欧拉定理*：$
U = sum_i N_i ((diff U)/(diff N_i))_(T,p,n_j) = sum_i N_i u_i\
V = sum_i N_i ((diff V)/(diff N_i))_(T,p,n_j) = sum_i N_i v_i\
S = sum_i N_i ((diff S)/(diff N_i))_(T,p,n_j) = sum_i N_i s_i\
$定义*偏摩尔量*：$
u_i equiv ((diff U)/(diff N_i))_(T,p,n_j)\
v_i equiv ((diff V)/(diff N_i))_(T,p,n_j)\
s_i equiv ((diff S)/(diff N_i))_(T,p,n_j)\
$也就是说*多元均匀系的广延量等于各组元的偏摩尔量与各自物质的量的乘积之和*。

==== 多元均匀系的热力学基本微分方程

以 $S,V,N_i (i=1,dots.c,k)$ 为变量：$
dif U = ((diff U)/(diff S))_(V,N_i) dif S + ((diff U)/(diff V))_(p,N_i) dif V + sum_i ((diff U)/(diff N_i))_(S,V,N_j) dif N_i
$其中：$
((diff U)/(diff S))_(V,N_i) = T, quad ((diff U)/(diff V))_(p,N_i) = - p
$定义*化学势*：$
mu_i equiv ((diff U)/(diff N_i))_(S,V,N_j)
$于是有多元复相系的基本微分方程：$
dif U &= T dif S - p dif V + sum_i mu_i dif N_i\
dif H &= T dif S + V dif p + sum_i mu_i dif N_i\
dif F &=-S dif T - p dif V + sum_i mu_i dif N_i\
dif G &=-S dif T + V dif p + sum_i mu_i dif N_i\
dif Psi&=-S dif T- p dif V - sum_i N_i dif mu_i
$其中对于吉布斯函数有_*吉布斯-杜安*_关系：$
G = sum_i N_i mu_i, quad dif G = sum_i mu_i dif N_i + sum_i N_i dif mu_i, quad dif G &=-S dif T + V dif p + sum_i mu_i dif N_i \
arrow.double.long S dif T - V dif p + sum_i N_i dif mu_i = 0
$

=== 多元复相系的平衡

==== 多元复相系的平衡条件

简单起见，我们考虑一个两相($alpha,beta$)，多组元($i=1,2,dots.c,k$)的系统的平衡条件，考虑吉布斯函数判据：$
cases(
  display(delta G = 0),
  display(delta^2 G > 0),
  display(delta T = 0\, delta p = 0\, delta N_i = 0 quad (i = 1,dots.c,k))
)
$有约束条件：$
delta N_i = delta N_i^alpha + delta N_i^beta = 0 arrow.double.long delta N_i^alpha = - delta N_i^beta
$又有基本微分方能 $dif G^alpha = - S^alpha dif T^alpha + V^alpha dif p^alpha sum_i mu_i^alpha dif N_i^alpha$，可以得到：$
delta G^alpha = sum_i mu_i^alpha delta N_i^alpha \
arrow.double.long delta G = delta G^alpha + delta G^beta = sum_i (mu_i^alpha - mu_i^beta) delta N_i^alpha
$得到多元复相系的平衡条件（相变平衡条件）：$
mu_i^alpha = mu_i^beta
$如果相变平衡条件不满足，在 $(T,p)$ 不变的条件下，过程会向 $dif G < 0$ 的方向进行。对每个组元 $i$，都有：$
(mu_i^alpha - mu_i^beta) dif N_i^alpha < 0
$如果 $mu_i^alpha > mu_i^beta$，那么 $dif N_i^alpha < 0$，组元 $i$ 从化学势高的相向化学势低的相转变。

==== 化学平衡

热力学观点下，化学反应表示为：$
sum_(i=1)^k nu_i A_i = 0
$其中 $k$ 表示组元总数，$A_i$ 表示第 $i$ 个组元，$nu_i$ 表示组元 $A_i$ 对应的系数。化学反应会引起各组元物质的量发生改变，注意到这个改变与系数呈正比：$
dif N_1 : dif N_2 : dots.c : dif N_k = nu_1 : nu_2 : dots.c : nu_k
$因此我们可以通过吉布斯函数判据推导出化学反应平衡条件，假设化学反应引起各组元物质的量产生虚变动 $delta N_i$，我们令 $delta N_i = epsilon nu_i$，在等温等压条件下，有吉布斯函数判据：$
delta G = sum_i mu_i delta N_i = epsilon sum_i mu_i nu_i = 0\
arrow.double.long sum_i mu_i nu_i = 0
$该式就是化学平衡条件，当不满足该条件时，化学反应会向化学势小的一侧进行。

==== 吉布斯相律

- *热力学系统的自由度：系统能独立改变的强度变量的个数*；
- *相律：一个复相系在平衡态时的自由度等于独立组元数 $k$ 加其他外参量的数目 ($2$) 再减去平衡共存的相数 $sigma$ *：$
f = k + 2 - sigma
$
- 说明：
  - $k$ 是系统中的总组元数，一组的组元可少于 $k$；
  - 其他外参量的数目根据实际系统也会不同；
  - 系统中没有化学反应

=== 混合理想气体的性质

==== 物态方程

由道尔顿分压定理：*混合气体的压强 $p$ 等于各个组元的分压 $p_i$ 之和*：$
p = sum_i p_i
$和化学纯理想气体物态方程：$
p_i V = N_i R T
$不难推广出混合理想气体的物态方程：$
p V = (N_1 + N_2 + dots.c + N_k) R T
$<mix-gas-states>

==== 化学势与吉布斯函数

考虑仅允许组元 $i$ 通过的半透壁分开的混合理想气体 $(p_i,mu_i)$ 和纯组元 $i$ 理想气体 $(p'_i,mu'_i)$，由相变平衡条件，达到平衡时有 $mu_i = mu'_i$，化学势有（为表达简单，以下计算均假设 $c_p_i$ 与温度无关）：$
cases(
  display(mu'_i &= R T {ln p'_i + phi_i (T)}),
  display(phi_i (T) &= (h_(i 0) - T s_(i 0))/(R T) + 1/(R T) integral c_p_i dif T - 1/R integral c_p_i (dif T)/T \ &= mu_(i 0)/(R T) + 1/R c_p_i - 1/R c_p_i ln T )
)
$有 $mu'_i = mu_i, p'_i = p_i = x_i p$ 可以得到吉布斯函数：$
G = sum_i N_i mu_i = sum_i N_i R T {ln (x_i p) + phi_i (T)}
$

==== 内能、熵与焓

由基本微分方程：$
dif G = - S dif T + V dif p + sum_i mu_i dif N_i
$把上式代入，得：$
V = ((diff G)/(diff p))_(T,{N_i}) = sum_i (N_i R T)/p
$重新得到了混合理想气体的物态方程 @mix-gas-states ，同样的方法计算熵：$
S &= - ((diff G)/(diff T))_(p,{N_i}) \
&= sum_i N_i {integral c_p_i (dif T)/T - R ln (x_i p) + s_(i 0)}\
&= sum_i N_i {c_p_i ln T - R ln (x_i p) + s_(i 0)}
$<εντροπια>计算内能：$
U &= G + T S - p V = G - T ((diff G)/(diff T))_(p,{N_i}) - p ((diff G)/(diff p))_(T,{N_i}) \
&= sum_i N_i {integral c_v_i diff T + u_(i 0)}\
&= sum_i N_i {c_v_i T + u_(i 0)}
$同样可以计算焓：$
H &= G + T S = G - T ((diff G)/(diff T))_(p,{N_i})\
&= sum_i N_i {integral c_p_i diff T + h_(i 0)}\
&= sum_i N_i {c_p_i T + h_(i 0)}
$

==== 吉布斯佯谬

改写混合理想气体的熵 @εντροπια：$
S = sum_i N_i {c_p_i ln T - R ln p + s_(i 0)} + C
$其中常数：$
C = - R sum_i N_i ln x_i > 0
$熵表达式中第一项可以看作各组分未混合前在相同 $(T,p)$ 下的熵之和；第二项常数 $C$ 代表混合后的不可逆扩散引起的熵增，即：$
Delta S = C = - R sum_i N_i ln x_i > 0
$如果混合的是完全相同的气体，根据上述结论也会产生熵增 $Delta S = C$，但显然熵增应该为零 ($Delta S = 0$)，这被成为*吉布斯佯谬*。下面根据统计力学，基于全同粒子的不可分辨性给出解释。

#note[
  #h(2em)设初态 ($i$) 相同的两种单原子分子理想气体分别处于由隔板分开的容器的两部分中，两气体的 $(T,p)$ 相同，总分子数和体积分别为 $(N_1,V_1),(N_2,V_2)$。现在抽出隔板，求平衡后 ($f$) 的熵变，并讨论两部分气体完全相同的情况。

  不同于由热力学基本微分方程推导出来的熵表达式 @εντροπια ，这里需要使用统计力学中考虑了粒子全同性后得到的熵表达式\@single-atom-gas-thermo：$
  S = 3/2 N k ln T + N k ln V/N + 3/2 N k {5/3 + ln [g_0^e ((2 pi m k)/(h^2))]}
  $由上式，熵增为：$
  Delta S &= S_f (N_2,V_2) - S_i (N_1,V_1)\
  &= N_1 k ln V/N_1 + N_2 k ln V/N_2 - N_1 k ln V_1/N_1 - N_2 k ln V_2/N_2\
  &= N_1 k ln V/V_1 + N_2 k ln V/V_2
  $其中 $V=V_1 + V_2 > V_1, V_2$，所以 $Delta S > 0$。当两部分为相同气体时：$
  Delta S = N ln V/N - N_1 k ln V_1/N_1 - N_2 k ln V_2/N_2
  $由于初、末态有相同的 $(T,p)$，所以：$
  p/(k T) = N_1/V_1 = N_2/V_2 = N/V
  $于是：$
  Delta S = 0
  $基于量子统计的全同粒子不可分辨即可解决吉布斯佯谬。
]

=== 热力学第三定律

==== 热力学第三定律的三种表述

热力学第三定律有三种表述：
- *能斯特定律：系统的熵在等温过程中的改变随绝对温度趋于零*：$lim_(T arrow 0) (Delta S)_T = 0$
- *系统的熵随绝对温度趋于零：*$lim_(T arrow 0) Delta S = 0$
- *不可能使物体冷却到绝对零度*。

==== 绝对熵

绝对零度时系统的熵与其他参数无关，以此 $(S(0,y) = S_0 = 0)$ 为基准定义绝对熵：$
S(T,y) = integral_0^T C_y(T,y) (dif T)/T + S_0 = integral_0^T C_y (dif T)/T
$

==== 能斯特定理的推论

由_Maxwell_关系结合能斯特定理，在趋于绝对零度的情况下：$
lim_(T arrow 0) ((diff V)/(diff T))_p &= - lim_(T arrow 0) ((diff S)/(diff p))_T = 0\
lim_(T arrow 0) ((diff p)/(diff T))_V &= lim_(T arrow 0) ((diff S)/(diff V))_T = 0
$