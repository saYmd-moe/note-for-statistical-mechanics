#import "../../template.typ": *

== 统计系综理论

=== 系综 几率密度和刘维尔定理

==== 系综和几率密度

一个自由度为 $s$ 的力学系统，其微观状态可以使用 $2 s$ 个变量（$s$ 个广义坐标和 $s$ 个广义动量）来描述：$
q_1,dots.c,q_s,p_1,dots.c,p_s
$在经典力学中，系统的一个微观状态由相空间中的一个点来表示，遵从正则方程；在量子力学中，系统的一个微观态就是一个量子态，遵从 _Schrödinger_ 方程。

接下来我们引入*系综*的概念。在统计力学中，我们认为对系统宏观量的一次测量所需的时间尺度远大于微观状态发生变化的时间尺度，因此对宏观量的测量结果实际上是测量过程中所测得的所有微观状态的平均值。

#highlight[假设我们把系统复制无数份，这些系统彼此独立并处于相同的宏观条件下，每个系统均处于某一个可能的微观态。这些系统的集合就叫做*统计系综*。]把系综中处于某个微观态的数目占系综中系统总数的比值，叫做*统计系综分布*，即可能的微观态的概率分布 $rho$，我们令：$
rho (q_1,dots.c,q_s,p_1,dots.c,p_s;t) dif q_1 dots.c dif q_s dif p_1 dots.c dif p_s = rho (q_1,dots.c,q_s,p_1,dots.c,p_s;t) dif Omega
$代表 $t$ 时刻系统的微观态处于 $dif Omega$ 内的几率。我们把 $rho$ 称作系统微观态的*几率密度*，它满足归一化条件：$
integral rho (q_1,dots.c,q_s,p_1,dots.c,p_s;t) dif Omega = 1 \
sum_i rho_i = 1
$我们观测到的宏观量 $A(q,p;t) $ 就是观测过程中微观态的平均值：$
macron(A) (t) = integral rho (q,p;t) A(q,p;t) dif Omega\
expval(A) = sum_i rho_i bra(Psi^i (t)) hat(A) ket(Psi^i (t))
$下面分别讨论微正则系综 $(N,V,E)$，正则系综 $(N,V,T)$和巨正则系综 $(mu,V,T)$。

==== 刘维尔定理

#text(red)[\#TODO刘维尔定理]

=== 微正则系综

#highlight[*微正则系综*是由大量相同的孤立系统组成的系综。]孤立系满足质量守恒 ($N$ 不变)，体积不变 ($V$ 不变) 和能量守恒 ($E$ 不变)。

==== 经典微正则系综

经典力学下，微正则系综的几率密度表示为：$
rho (q,p) = cases(
  display(C\, quad E lt.eq H(q,p) lt.eq E + Delta E\;),
  display(0\, quad #[_otherwise_.])
)
$常数 $C$ 由归一化条件确定：$
lim_(Delta E arrow 0) C integral_(Delta E) dif Omega = 1\
arrow.double.long C = 1/Omega
$其中 $Omega$ 为能量区间 $(E,E+Delta E)$ 内的所有可能的微观状态数，有：$
Omega = 1/(h^(N r)) limits(integral)_(E lt.eq H(q,p) lt.eq E + Delta E) dif Omega
$其中 $N$ 为系统的粒子数目，$r$ 为系统的维数。

另外对于全同粒子，还需要考虑全同粒子不可分辨，当满足非简并条件时：$
Omega = (Omega_(op("cl")))/(N!) = 1/(N! h^(N r)) limits(integral)_(E lt.eq H(q,p) lt.eq E + Delta E) dif Omega
$如果系统由多种不同粒子组成，第 $i$ 种粒子的自由度为 $r_i$，粒子数为 $N_i$，那么有：$
Omega = product_i (Omega_(op("cl"),i))/(N_i !) = 1/(product_i N_i ! h^(N_i r_i)) limits(integral)_(E lt.eq H(q,p) lt.eq E + Delta E) dif Omega
$

==== 量子微正则系综

与上述内容相似，改写至量子力学体系下，首先是几率密度：$
rho_s = cases(
  display(C\, quad E lt.eq E_s lt.eq E + Delta E\;),
  display(0\, quad #[_otherwise_.])
)
$同样由归一化条件确定常数 $C$：$
attach(sum,b: s, tr: ') rho_s = C (attach(sum,b: s, tr: ') 1) = 1\
arrow.double.long C = 1/Omega(N,V,E)
$其中 $display(attach(sum,b: s, tr: '))$ 表示在 $V,N$ 一定的条件下对能量区间 $(E,E+Delta E)$ 内的一切量子态求和，有该区间内的微观状态数：$
Omega(N,V,E) = (attach(sum,b: s, tr: ') 1)
$

==== 微正则系综计算热力学量

推导过程省略，直接给出结果：$
cases(
  display(S = k ln Omega(N,V,E)),
  display(((diff)/(diff N))_(V,E) ln Omega = alpha = - mu/(k T)),
  display(((diff)/(diff V))_(N,E) ln Omega = gamma = p/(k T)),
  display(((diff)/(diff E))_(N,V) ln Omega = beta = 1/(k T))
)
$

==== $Omega$ 的计算

考虑三维空间中 ($r = 3$) 由 $N$ 个单原子分子理想气体组成的孤立系统。考虑能量区间 $(E,E+Delta E)$，系统的能量满足：$
H = sum_i p_i^2/(2m)
$假设满足经典极限条件 (能级准连续) ，有：$
Omega(E) = 1/(N! h^(3 N)) limits(integral)_(E lt.eq H lt.eq E + Delta E) dif Omega\
$我们先考虑能量小于 $E$ 的微观状态数：$
Sigma(E) = 1/(N! h^(3 N)) limits(integral)_(H lt.eq E) dif Omega\
arrow.double.long Omega(E) = (diff Sigma(E))/(diff E) Delta E
$现在只需要计算出 $Sigma(E)$ 即可得到 $Omega(E)$：$
Sigma(E) &= 1/(N! h^(3 N)) limits(integral)_(H lt.eq E) dif Omega\
&= 1/(N! h^(3 N)) integral dif q_1 dots.c dif q_(3 N) limits(integral)_(sum_i p_i^2 lt.eq 2 m E) dif p_1 dots.c dif p_(3 N)\
&= V^N/(N! h^(3 N)) limits(integral)_(sum_i p_i^2 lt.eq 2 m E) dif p_1 dots.c dif p_(3 N)\
&= V^N/(N! h^(3 N)) (2 m E)^(3N\/2) limits(integral)_(sum_i x_i^2 lt.eq 1) dif x_1 dots.c dif x_(3N)
$最后一步做了无量纲化处理 $p_i = x_i sqrt(2 m E)$，我们令：$
K equiv limits(integral)_(sum_i x_i^2 lt.eq 1) dif x_1 dots.c dif x_(3N)
$这个积分几何上表示 $3 N$ 维空间上的单位球体积， $K$ 是一个无量纲的常数，于是：$
Sigma(N,V,E) = K V^N/(N! h^(3 N)) (2 m E)^(3N\/2)
$ $K$ 可以通过对整个相空间进行积分来确定，这里直接给出表达式：$
K = pi^(3N\/2)/(Gamma(3N\/2 + 1)) = pi^(3N\/2)/(3N\/2)!
$于是有：$
Sigma(N,V,E) &= V^N/(N! h^(3N\/2) (3N\/2)!) (2 pi m E)^(3N\/2),\
Sigma'(N,V,E) &= V^N/(N! h^(3N\/2) (3N\/2)!) (2 pi m E)^(3N\/2) dot (3N)/2 dot 1/E,\
Omega(N,V,E) &= V^N/(N! h^(3N\/2) (3N\/2)!) (2 pi m E)^(3N\/2) dot (3N)/2 dot (Delta E)/E
$使用 _Stirling_ 公式得：$
S = k ln Omega(N,V,E) = N k ln V/N + N k ln ((4 pi m E)/(3 h^2 N))^(3\/2) + 5/2 N k
$由基本微分方程：$
dif S = 1/T dif E + p/T dif V - mu/T dif N
$可以计算其他热力学量：$
cases(
  display((diff S)/(diff E) = 1/T &arrow.double.long E = 3/2 N k T),
  display((diff S)/(diff V) = p/T &arrow.double.long p V = N k T),
  display((diff S)/(diff N) = - mu/T &arrow.double.long mu = k T {ln N/V + ln ((h^2)/(2 pi m k T))^(3\/2)})
)
$可以更换变量写出 $S(N,V,T)$：$
S(N,V,T) = 3/2 N k ln T + N k ln V/N + 3/2 N k {5/3 + ln((2 pi m k)/h^2)}
$注意到使用微正则系综求得的热力学量与使用_Maxwell-Boltzmann_分布得到的 @single-atom-gas-thermo 中一致 (取电子束缚能级的基态简并度 $g_0^e = 1$)。

=== 正则系综

#highlight[*正则系综*是由大量相同的与大热源接触并达到平衡态的系统组成的系综。]与大热源接触并达到平衡态的系统满足质量守恒 ($N$ 不变)，体积不变 ($V$ 不变) 和温度守恒 ($T$ 不变)。

==== 从微正则系综导出正则系综

#grid(
  columns: 2,
  gutter: 5pt,
  box(width: 100%)[
    #h(2em)我们将系统和大热源看作同一个系统，注意到这个复合系统是一个孤立系，因此我们可以复用微正则系综的结论。孤立系的总能量是一个定值：$
    E = E_1 + E_2
    $我们令系统处于能量为 $E_1$ 的某一特定量子态 $s$ 的几率为 $rho_(1s) (E_1)$，下面我们使用微正则系综求出 $rho_(1s)(E_1)$。
  ],
  figure(
    caption: [将系统与大热源看作一个孤立系],
    image("../../assets/figures/canonical-ensemble.svg",width: 90%)
  )
)

#text(red)[\#TODO 推导过程省略。]可以几率密度：$
rho_(1s) (E_1) = 1/Z_N e^(-beta E_1)
$其中 $beta$ 由大热源决定，与系统的性质无关 $beta = beta(T) = 1\/k T$；省略下标 $1$，用下标 $s$ 表示系统处于量子态 $s$：$
rho_s (E_s) = 1/Z_N e^(-beta E_s)
$其中配分函数 $Z_N$ 由归一化条件确定：$
Z_N = sum_s e^(-beta E_s)
$#text(red)[\#TODO实际上也可以从微正则系综出发，将系统看作子系，采用最可几分布法导出正则系综。]

同样有方便计算的经典极限形式：$
Z_N = 1/(N! h^(N r)) integral e^(-beta E) dif Omega
$

==== 正则系综计算热力学量

宏观内能 $macron(E)$ 是微观能量 $E_s$ 的统计平均：$
macron(E) &= sum_s E_s rho_s = 1/Z_N sum_s E_s e^(-beta E_s)\
&= 1/Z_N (-diff/(diff beta) sum_s e^(-beta E_s)) = -diff/(diff beta) ln Z_N
$外界作用力与微观能量有关系式：$Y_l = diff E_s \/ diff y_l$，于是：$
macron(Y)_l = sum_s (diff E_s)/(diff y_l) rho_s = -1/beta diff/(diff y_l) ln Z_N
$熵：$
S = k (ln Z_N - beta diff/(diff beta) ln Z_N)
$通过内能、物态方程和熵，其他热力学函数也一并确定。

==== 正则系综的能量涨落

系统与大热源平衡后，在宏观上没有能量交换，但是有微观上的能量交换，我们称之为*能量涨落*。用 $overline((E-macron(E))^2)$ 代表绝对涨落（方差），$sqrt(overline((E-macron(E))^2))\/macron(E)$ 或 $overline((E-macron(E))^2)\/macron(E)^2$ 代表相对涨落。数学上有：$
overline((E-macron(E))^2) = overline(E^2) - macron(E)^2
$有：$
overline(E^2) &= sum_s E_s^2 rho_s = 1/Z_N sum_s E_s^2 e^(-beta E_s)\
&= 1/Z_N (diff^2)/(diff beta^2) sum_s e^(-beta E_s) = 1/Z_N (diff^2)/(diff beta^2) Z_N \
&= 1/Z_N diff/(diff beta) (Z_N diff/(diff beta)ln Z_N) = macron(E)^2 - (diff macron(E))/(diff beta)
$于是有：$
overline((E-macron(E))^2) = -(diff macron(E))/(diff beta) = k T^2 ((diff macron(E))/(diff T))_(V,N) = k T^2 C_V
$相对涨落：$
overline((E-macron(E))^2)/macron(E)^2 = k T^2 C_V/macron(E)^2 prop 1/N
$宏观系统的相对涨落很小，此时正则系综和微正则系综求得的系统平衡性质结果相同。

==== 正则系综求解单原子分子理想气体

考虑满足经典极限条件的单原子分子理想气体，忽略分子内部的自由度（即忽略束缚电子能量 $E^e$），写出配分函数：$
Z_N = 1/(N! h^(3 N)) integral e^(-beta H) dif Omega
$其中：$
H &= sum_(i = 1)^(N) (bold(p)_i^2)/(2m) = sum_i epsilon_i\
dif Omega &= product_(i=1)^N dif omega_i\
dif omega_i &= dif x_i dif y_i dif z_i dif p_(x_i) dif p_(y_i) dif p_(z_i)
$于是有：$
Z_N &= 1/(N! h^(3 N)) integral dots.c integral e^(-beta sum_i epsilon_i) product_(i=1)^N dif omega_i\
&= 1/N! product_(i=1)^N {1/h^3 integral e^(-beta epsilon_i) dif omega_i}\
&= Z^N/N!
$其中 $Z$ 为子系配分函数，@gas-partition-function 已经给出了单原子分子理想气体的子系配分函数：$
Z = 1/h^3 integral e^(-beta epsilon) dif omega = V/h^3 (2 pi m k T)^(3\/2)
$系统配分函数 $Z_N$ 是子系配分函数的 $N$ 次方乘以 $1\/N!$，这个因子反映了全同粒子的不可分辨性。下面计算热力学量：$
ln Z_N = N ln Z - ln N!
$$
macron(E) &= - diff/(diff beta) ln Z_N = -N diff/(diff beta) ln Z  = 3/2 N k T\
p &= 1/beta diff/(diff V) ln Z_N = N/beta diff/(diff V)ln Z = (N k T)/V\
S &= N k (ln Z - beta diff/(diff beta) ln Z) - k ln N!\
&= 3/2 N k ln T + N k ln V/N + 3/2 N k {5/3 + ln((2 pi m k)/h^2)}\
F &= - k T ln Z_N = - N k T ln Z + k T ln N!\
$

=== 巨正则系综

#highlight[*巨正则系综*是由大量相同的与大热源及大粒子源接触并达到平衡态的系统组成的系综。]与大热源和大粒子源接触并达到平衡的系统满足化学势守恒 ($mu$ 不变)，体积不变 ($V$ 不变) 和温度守恒 ($T$ 不变)。

==== 从微正则系综导出巨正则系综

#grid(
  columns: 2,
  gutter: 5pt,
  box(width: 100%)[
    #h(2em)与从微正则系综导出正则系统的过程相同，孤立系满足：$
    E &= E_1 + E_2\
    N &= N_1 + N_2
    $孤立系的总能量和总粒子数都是不变的，#text(red)[省略推导过程]，直接给出几率密度：$
    rho_(s) = 1/Xi e^(-alpha N - beta E_s)
    $
  ],
  figure(
    caption: [将系统与大粒子源大热源看作一个孤立系],
    image("../../assets/figures/grand-canonical-ensemble.svg",width: 90%)
  )
)

同样由归一化条件确定巨配分函数：$
Xi = sum_(N=0)^infinity sum_s e^(-alpha N - beta E_s) = sum_(N=0)^infinity e^(-alpha N) (sum_s e^(-beta E_s)) = sum_(N=0)^infinity e^(-alpha N) Z_N
$其中 $Z_N=sum_s e^(-beta E_s)$ 是粒子数为 $N$ 的正则系综配分函数，所以可以把巨正则系综理解为*包含许多不同粒子数的正则系综的集合，不同粒子数 $N$ 受到因子 $e^(-alpha N)$ 和 $Z_N$ 的影响，对 $Xi$ 的贡献不同。*

我们同样可以给出巨正则分布的经典极限形式：$
rho_N dif Omega = 1/(N! h^(N r)) e^(-alpha N - beta E_s)/Xi dif Omega_N\
Xi = sum_(N=0)^infinity e^(-alpha N)/(N! h^(N r)) integral e^(-beta E) dif Omega_N
$

==== 巨正则系综计算热力学量

不难得到：$
macron(N) &= sum_N sum_s N rho_(N s) = 1/Xi sum_N sum_s N e^(-alpha N - beta E_s) \
&= - diff/(diff alpha) ln Xi\
macron(E) &= sum_N sum_s E_s rho_(N s) = 1/Xi sum_N sum_s E_s e^(-alpha N - beta E_s) \
&= - diff/(diff beta) ln Xi\
macron(Y)_l &= sum_N sum_s ((diff E_s)/(diff y_l)) rho_(N s) = 1/Xi sum_N sum_s (diff E_s)/(diff y_l) e^(-alpha N - beta E_s)\
&= -1/beta diff/(diff y_l) ln Xi\
S &= k (ln Xi - alpha diff/(diff alpha) ln Xi - beta diff/(diff beta) ln Xi)\
F &= E - T S = - k T ln Xi + k T alpha diff/(diff alpha) ln Xi \
Psi &= F - G = F - macron(N) mu = -k T ln Xi
$

==== 巨正则系综的粒子数涨落与能量涨落

与大粒子源大热源的接触中，系统会产生微观上的粒子数涨落和能量涨落，其中能量涨落计算结果与正则系综能量涨落相同：$
overline((Delta E)^2) &= k T^2 C_V\
overline((Delta E)^2)/macron(E)^2 &= k T^2 C_V/macron(E)^2 prop 1/N
$下面计算粒子数涨落：$
overline((N-macron(N))^2) &= macron(N)^2 - overline(N^2)\
overline(N^2) &= sum_N sum_s N^2 rho_(N s) = 1/Xi (diff^2/(diff alpha^2) sum_N sum_s e^(-alpha N - beta E_s))\
&= 1/Xi diff^2/(diff alpha^2) Xi = macron(N)^2 - ((diff macron(N))/(diff alpha))_(beta, V)
$进而得到粒子数涨落： $
overline((N-macron(N))^2) = -((diff macron(N))/(diff alpha))_(beta, V) = k T ((diff macron(N))/(diff mu))_(beta, V)
$有：$
mu &= G/N = G(T,p(T,V,N),N)/N\
((diff mu)/(diff macron(N)))_(beta, V) &= 1/N ((diff mu)/(diff G))_(N) dot ((diff G)/(diff p))_(T,N) dot ((diff p)/(diff N))_(T,V) \
&+ 1/N ((diff mu)/(diff G))_(N) dot ((diff G)/(diff N))_(T,p) \
&- 1/N^2 G\
&= V/(macron(N)^2 kappa_T)
$进而有粒子数涨落和相对粒子数涨落：$
overline((Delta N)^2) &= k T macron(N)^2/V kappa_T\
overline((Delta N)^2)/macron(N)^2 &= (k T)/V kappa_T
$

==== 巨正则系综求解单原子分子理想气体

考虑满足经典极限条件的单原子分子理想气体，忽略分子内部的自由度（即忽略束缚电子能量 $E^e$），写出配分函数：$
&Xi = sum_(N=0)^infinity e^(-alpha N) Z_N\
&Z_N = 1/(N! h^(3 N)) integral e^(-beta E_N) dif Omega_N = Z^N/N!\
&Z = V/h^3 (2 pi m k T)^(3\/2)
$代入，得：$
&Xi = sum_(N=0)^infinity (e^(-alpha) Z)^N/N! = exp(e^(-alpha) Z)\
&ln Xi = e^(-alpha) Z = V/h^3 (2 pi m k T)^(3\/2) e^(-alpha)
$于是热力学量：$
macron(N) &= -diff/(diff alpha) ln Xi = e^(-alpha) Z arrow.double mu - k T alpha = k T ln [(n h^3)/(2 pi m k T)^(3\/2)]\
macron(E) &= -diff/(diff beta) ln Xi = 3/2 macron(N) k T\
p &= 1/beta diff/(diff V) ln Xi = (macron(N) k T)/V = n k T\
S &= k (ln Xi - alpha diff/(diff alpha) ln Xi - beta diff/(diff beta) ln Xi)\
&= 3/2 macron(N) k ln T + macron(N) k ln V/macron(N) + 3/2 macron(N) k {5/3 + ln[(2 pi m k)/(h^2)]}
$<gas-grand>

==== 巨正则系综求解固体表面吸附率

#h(2em)下面设一个固体的表面有 $N_0$ 个吸附中心，每个吸附中心最多吸附一个气体分子，被吸附的分子相比于自由态分子有能量 $-epsilon_0$。定义吸附率：$
theta equiv macron(N)/N_0 = #[被吸附分子平均数]/#[吸附中心总数]
$设外部气体为处于室温的单原子分子理想气体，求当被吸附分子与外部气体达到平衡时的吸附率 $theta$。

使用巨正则系综，将被吸附的分子看作系统，外部气体看作大热源大粒子源，当达到热力学平衡时，被吸附的分子与外部气体有相同的 $(T,mu)$。当有 $N$ 个分子被吸附时，系统有能量：$
E_(N s) = - N epsilon_0
$被吸附分子的巨配分函数：$
Xi = sum_(N=0)^(N_0) sum_s e^(-alpha N - beta E_(N s)) = sum_(N=0)^(N_0) sum_s e^(beta (mu + epsilon_0) N)
$对于同一个吸附分子数 $N$，系统的能量都是 $-N epsilon_0$，该能量对应的微观态数目为：$
C_(N_0)^N = N_0!/(N! (N_0 - N)!)
$于是巨配分函数有：$
&Xi = sum_(N=0)^(N_0) N_0!/(N! (N_0 - N)!) [e^(beta (mu + epsilon_0) )]^N = [1 + e^(beta (mu + epsilon_0))]^(N_0)\
&ln Xi = N_0 ln[1 + e^(beta (mu + epsilon_0))]
$于是被吸附分子的平均数为：$
macron(N) &= -diff/(diff alpha) ln Xi = 1/beta diff/(diff mu) ln Xi\
&= N_0/(1 + e^(-beta (mu + epsilon_0)))
$吸附率为：$
theta equiv macron(N)/N_0 = 1/(1+e^(-beta (mu + epsilon_0)))
$化学势由 @gas-grand 确定：$
mu = (2 pi m k T)^(3\/2)/(n h^3) = ((2pi m k T)^(3\/2) k T)/(p h^3)
$其中有理想气体物态方程 $p = n k T$：$
theta = macron(N)/N_0 = p\/[p+ (2 pi m)^(3\/2)/h^3 (k T)^(5\/2) e^(-epsilon_0\/k T)]
$

==== 由巨正则系综推导_Fermi_分布和_Bose_分布

巨正则分布有几率密度：$
rho_(N s) = 1/Xi e^(-alpha N - beta E_(N s))
$代表系统处于总粒子数为 $N$，总能量为 $E_(N s)$ 的量子态 $s$ 的几率，有巨配分函数：$
Xi = sum_(N=0)^infinity sum_s e^(-alpha N - beta E_(N s))
$这里的求和 $sum_s$ 代表系统处于总量子数为 $N$ 的情况下，对所有可能的量子态 $s$ 求和。我们要将 $N,E_(N)$ 通过子系能级的分布 ${a_lambda}$ 表达，进一步将 $sum_s$ 拆分为给定 $N,E_N$ 的情况下，对所有可能的量子态的求和：$
Xi &= sum_(N=0)^infinity sum_s e^(-alpha N - beta E_(N s)) = sum_(N=0)^infinity sum_E_N attach(sum,b: s, tr: ') e^(-alpha N - beta E_(N s))\
&= sum_(N=0)^infinity sum_(E_N) attach(sum, b: {a_lambda}, tr: '
) W({a_lambda}) e^(-alpha sum_lambda a_lambda - beta sum_lambda a_lambda epsilon_lambda)
$其中有：$
N &= sum_lambda a_lambda\
E_N &= sum_lambda a_lambda epsilon_lambda
$巨正则系综的粒子数和能量均可变，现在我们可以直接对所有 $N$ 和 $E_N$ 对应的分布求和：$
Xi = sum_({a_lambda}) W({a_lambda}) e^(-alpha sum_lambda a_lambda - beta sum_lambda a_lambda epsilon_lambda)
$注意到有：$
W({a_lambda}) = product_lambda W_lambda\
W_lambda = cases(
  display((g_lambda !)/(a_lambda ! (g_lambda - a_lambda)!)\, quad #[_Fermi_]),
  display((g_lambda + a_lambda - 1)!/(a_lambda ! (g_lambda - 1)!)\, quad #[_Bose_])
)
$于是巨配分函数：$
Xi &= sum_{a_lambda} product_lambda [W_lambda e^(-(alpha + beta epsilon_lambda) a_lambda)]\
&= [sum_a_1 W_1 e^(-(alpha + beta epsilon_1) a_1)] times [sum_a_2 W_2 e^(-(alpha + beta epsilon_1) a_1)]\
&times dots.c times [sum_a_lambda W_lambda e^(-(alpha + beta epsilon_lambda) a_lambda)] times dots.c\
&= product_lambda [sum_a_lambda W_lambda e^(-(alpha + beta epsilon_lambda) a_lambda)]\
&= product_lambda Xi_lambda
$其中有：$
Xi_lambda = sum_a_lambda W_lambda e^(-(alpha + beta epsilon_lambda) a_lambda)
$#text(red)[\#TODO计算过程略]，可以得到：$
Xi = product_lambda Xi_lambda = product_lambda (1 plus.minus e^(-alpha -beta epsilon_lambda))^(plus.minus g_lambda)\
ln Xi = plus.minus sum_lambda g_lambda ln(1 plus.minus e^(-alpha -beta epsilon_lambda)). quad cases(
  + #[_Fermi_],
  - #[_Bose_]
)
$另外可以计算巨正则系综平均 $macron(a)_lambda$：$
macron(a)_k &= sum_N sum_s a_k rho_(N s)\
&= #text(rgb(0,155,255))[$1/Xi$] sum_N sum_(E_s) attach(sum, b: {a_lambda}, tr: ') a_k #text(rgb(0,155,255))[$W({a_lambda}) e^(-sum_lambda (alpha + beta epsilon_lambda) a_lambda)$]
$其中蓝色部分代表分布 ${a_lambda}$ 出现的几率。有：$
macron(a)_k &= 1/Xi sum_{a_lambda} a_k product_lambda [W_lambda e^(-(alpha + beta epsilon_lambda) a_lambda)]\
&= 1/Xi_k [-diff/(diff alpha) sum_a_k W_k e^(-(alpha + beta epsilon_k) a_k)]\
= - diff/(diff alpha) Xi_k
$于是：$
ln Xi_lambda = plus.minus g_lambda ln (1 plus.minus e^(-alpha - beta epsilon_lambda))\
macron(a)_lambda = - diff/(diff alpha) ln Xi_lambda = g_lambda/(e^(alpha + beta epsilon_lambda) plus.minus 1)
$