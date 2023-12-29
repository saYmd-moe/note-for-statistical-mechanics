#import "../../template.typ": *

== 单元系的相变

=== 热动平衡

==== 热动平衡判据

+ *熵判据：* $dif S = 1\/T dif U + p\/T dif V quad (U,V)$ 等能等容下，对于各种可能的变动来说，平衡态的熵为极大。有数学表述：$
cases(
  display(delta S = 0 quad #[平衡的必要条件]),
  display(delta^2 S < 0 quad #[平衡稳定条件]),
  display(delta U =0\, delta V = 0\, delta N = 0 quad #[限制条件])
)
$
+ *自由能判据：* $dif F = -S dif T - p dif V quad (T,V)$ 等温等容下，系统达到平衡态时自由能取极小值：$
cases(
  display(delta F = 0),
  display(delta^2 F > 0),
  display(delta T =0\, delta V = 0\, delta N = 0)
)
$
+ *吉布斯函数判据：* $dif G = - S dif T + V dif p quad(S,p)$ 等温等压下，系统达到平衡态时吉布斯函数取极小值：$
cases(
  display(delta G = 0),
  display(delta^2 G > 0),
  display(delta T =0\, delta p = 0\, delta N = 0)
)
$
+ *内能判据：* $dif U = T dif S - p dif V (S,V)$ 等熵等容下，系统达到平衡态时内能取极小值：$
cases(
  display(delta U = 0),
  display(delta^2 U > 0),
  display(delta S =0\, delta V = 0\, delta N = 0)
)
$
+ *焓判据：* $dif H = T dif S + V dif p (S,p)$ 等熵等压下，系统达到平衡态时焓取极小值：$
cases(
  display(delta H = 0),
  display(delta^2 H > 0),
  display(delta S =0\, delta p = 0\, delta N = 0)
)
$

==== 开系（粒子数可变系统）

开系是指*可以与外界发生能量和物质交换的系统*，考虑只有一种粒子（单元系），有热力学基本微分方程：$
dif U = T dif S - p dif V + mu dif N
$其中 $mu$ 为*化学势*，定义为 $1 op("mol")$ 的吉布斯函数：$
mu = G/N = u - T s + p v
$其中：$
cases(
  display(U &= N u),
  display(S &= N s),
  display(V &= N v)
)
$类似的，可以写出其他热力学基本方程(其中有巨势 $Psi equiv U - T S - mu N$)：$
cases(
  display(dif U &= T dif S - p dif V + mu dif N\, quad &(S,V,N)),
  display(dif H &= T dif S + V dif p + mu dif N\, quad &(S,p,N)),
  display(dif F &= -S dif T- p dif V + mu dif N\, quad &(T,V,N)),
  display(dif G &= -S dif T+ V dif p + mu dif N\, quad &(T,p,N)),
  display(dif Psi&=-S dif T- p dif V - N dif mu\, quad &(T,V,mu))
)
$

==== 热动平衡条件

热动平衡分为四种：
- *热平衡条件：* 不发生热量交换 $(T,S)$
- *力学平衡条件：* 不发生宏观位移 $(p,V)$
- *相变平衡条件：* 各相之间不发生物质转移（不发生相变） $(mu,N)$
- *化学平衡条件：* 化学反应不再进行

以吉布斯函数判据为例，考虑一个拥有 $A,B$ 两个子系统的系统，对系统施加一个微扰，根据吉布斯函数判据的限制条件，有：$
delta T = delta T_A + delta T_B = 0 &arrow.double.long delta T_A = -delta T_B \
delta p = delta p_A + delta p_B = 0 &arrow.double.long delta p_A = -delta p_B \
delta N = delta N_A + delta N_B = 0 &arrow.double.long delta N_A = -delta N_B \
$再根据吉布斯函数判据的必要条件，有：$
delta G &= delta G_A + delta G_B \
&= (- S_A delta T_A + V_A delta p_A + mu_A delta N_A) + (- S_B delta T_B + V_B delta p_B + mu_B delta N_B)\
&= (S_A - S_B) delta T_B - (V_A - V_B) delta p_B - (mu_A - mu_B) delta N_B \
&= 0
$由于虚变动 $delta T_B, delta p_B$ 可以独立变动，所以有平衡条件：$
S_A = S_B, quad V_A = V_B, quad mu_A = mu_B
$上述三个条件分别为热平衡、力平衡和相平衡条件，其他判据推导过程同理。

另外，如果是粒子数不守恒的系统，则有：$
delta G = (S_A - S_B) delta T_B - (V_A - V_B) delta p_B + mu_A delta N_A + mu_B delta N_B = 0 \
S_A = S_B, quad V_A = V_B, quad mu_A = mu_B = 0
$
#note[
  #h(2em)系统的平衡由强度量 (与质量无关的密度量，即 $V\/N, S\/N$ 等) 决定，与广延量无关。
]

==== 热动平衡稳定条件

以吉布斯函数为例：$
Delta G &= delta G + 1/2 delta^2 G + dots.c \
&= [(diff/(diff T))_p delta T + (diff/(diff p))_T delta p] G \
&+ 1/2 [(diff/(diff T))_p delta T + (diff/(diff p))_T delta p]^2 G + dots.c
$考虑有多个子系统：$
G = sum_s G_s
$有吉布斯判据平衡稳定条件 $delta^2 G > 0$：$
delta^2 G &= sum_s [(diff/(diff T_s))_p_s delta T_s + (diff/(diff p_s))_T_s delta p_s]^2 G_s \
&= sum_s [(diff^2/(diff T_s^2))_p_s delta T_s^2 + #text(rgb(150, 90, 170))[$2 (diff^2)/(diff T_s diff p_s) delta T_s delta p_s$] + (diff^2/(diff p_s^2))_T_s delta p_s^2] G_s \
&= sum_s [(- (diff S_s)/(diff T_s) delta T_s^2 #text(rgb(150, 90, 170))[$- (diff S_s)/(diff p_s) delta T_s delta p_s$]) + (#text(rgb(150, 90, 170))[$(diff V)/(diff T_s) delta T_s delta p_s$] + (diff V)/(diff p_s) delta p_s^2)]
$这里我们有：$
cases(
  display(delta S_s = (diff S_s)/(diff T_s)delta T_s + #text(rgb(0, 180, 255))[$(diff S_s)/(diff p_s)$]delta p_s = (diff S_s)/(diff T_s)delta T_s #text(rgb(0, 180, 255))[$- (diff V_s)/(diff T_s)$] delta p_s),
  display(delta V_s = #text(rgb(150, 90, 170))[$(diff V_s)/(diff T_s)$]delta T_s + (diff V_s)/(diff p_s)delta p_s = #text(rgb(150, 90, 170))[$-(diff S_s)/(diff p_s)$]delta T_s + (diff V_s)/(diff p_s)delta p_s)
) arrow.double.long cases(
  display((diff S_s)/(diff T_s)delta T_s = delta S_s + (diff V_s)/(diff T_s)delta p_s),
  display((diff V_s)/(diff p_s)delta p_s = delta V_s + (diff S_s)/(diff p_s)delta T_s)
)
$代回上式，得：$
delta^2 G &= sum_s [- (#text(rgb(150, 90, 170))[$(diff S_s)/(diff T_s) delta T_s^2$] + (diff S_s)/(diff p_s) delta T_s delta p_s) + ( (diff V)/(diff T_s) delta T_s delta p_s + #text(rgb(0, 180, 255))[$(diff V)/(diff p_s) delta p_s^2$])]\
&= sum_s [-(#text(rgb(150, 90, 170))[$delta S_s delta T_s + (delta V_s)/(delta T_s) delta T_s delta p_s$] + (diff S_s)/(diff p_s) delta T_s delta p_s) \
&+ ((diff V)/(diff T_s) delta T_s delta p_s + #text(rgb(0, 180, 255))[$(diff S_s)/(diff p_s) delta T_s delta p_s + delta V_s delta p_s$])] \
&= sum_s (- delta T_s delta S_s + delta p_s delta V_s)
$注意到 $S_s = n_s s_s, V_s = n_s v_s$：$
delta^2 G = sum_s n_s (-delta T_s delta s_s + delta p_s delta v_s) > 0 \
arrow.double.long - delta T delta s + delta p_s delta v_s > 0
$其他判据同理。

=== 单元复相系平衡

==== _Le Chatelier_ 原理

#highlight[*当处于平衡态的系统受到外界扰动后，系统会向抵消这一扰动的方向转移。*]下列推导过程使用熵判据，有基本微分方程：$
dif S = 1/T dif U + 1/T p dif V - 1/T mu dif n\
dif U_A = - dif U_B, quad dif V_A = - dif V_B, quad dif n_A = - dif n_B
$

+ *热平衡被打破 $T_A eq.not T_B$：*假设有 $dif V_A = 0, dif n_A = 0$ 则有$
dif S = (1/T_A - 1/T_B) dif U_A
$由熵增原理 $dif S > 0$，则$
T_A > T_B arrow.double.long dif U_A < 0
$*能量从高温物体转向低温物体*。
+ *力平衡被打破 $p_A eq.not p_B$：*假设有 $T_A = T_B = T, dif N_A = 0$ 则有$
dif S = 1/T (p_A - p_B) dif V_A
$同样由熵增原理 $dif S > 0$：$
p_A > p_B arrow.double.long dif V_A > 0
$*压强高的部分体积膨胀*。
+ *相平衡被打破 $mu_A eq.not mu_B$：*假设有 $T_A = T_B = T, p_A = p_B = p$ 则有$
dif S = - 1/T (mu_A - mu_B) dif n_A
$熵增原理 $dif S > 0$：$
mu_A > mu_B arrow.double.long dif n_A < 0
$*化学势高的相向化学势低的相转变*。

==== 单元复相系相图

假设单元系有两个相同时存在并达到平衡，则可以确定一条*相变曲线*：$
mu^alpha (T,p) = mu^beta (T,p)
$如果有三相存在并达到平衡，则可以确定一个*三相点*：$
mu^alpha (T,p) = mu^beta (T,p) = mu^gamma (T,p)
$

#grid(
  columns: 2,
  gutter: 5pt,
  box(width: 100%)[
    发生一级相变时体积和熵会发生突变，根据突变来定义相变潜热：$
    L equiv T(s_beta - s_alpha) = h_beta - h_alpha
    $可以得到描述相变曲线斜率的_Clausius–Clapeyron_方程：$
    (dif p)/(dif T) = (s_beta - s_alpha)/(v_beta - v_alpha) = L/(T(v_beta - v_alpha))
    $_Clausius–Clapeyron_方程只适用于一级相变（体积、熵均发生突变）。
  ],
  figure(
  caption: [三相图],
  image("../../assets/figures/p-T-states-image.png")
  )
)

#h(2em)与凝聚相（固相和液相）达到平衡的蒸汽称为*饱和蒸汽*。饱和蒸汽的压强和温度之间的关系被称为*蒸汽压方程*：$
(dif p)/(dif T) = L/(T (v-v'))
$现在做两点假设：
+ 凝聚相体积相比于蒸汽相可忽略 $v' lt.double v$
+ 蒸汽相可看作理想气体
于是有：$
dif p = (L)/(T v) dif T \
ln p = -L_0/(R T) = integral (dif T)/(R T^2) integral (c_p - c'_p) dif T + A \
ln p = A - B/T + C ln T
$计算过程是将相变潜热 $L = L(T)$ 看作 $T$ 的函数，省略过程，另外给出相变潜热 $L$ 看作常数时的蒸汽压方程：$
ln p = - L/(R T) + A
$

==== _Maxwell_ 等面积法则

#text(red)[\#TODO]范德瓦尔斯气体等温线理论在 $T lt.eq T_c$ 时出现偏差，_Maxwell_通过_Maxwell_等面积法则进行了修正（参考第三章作业 二、5.）

==== 相变的分类与_Ehrenfest_方程

- *一级相变：在相变点，两相的化学势相等，但化学势的一级偏微商存在突变（例如一般物质的气-液-固相变；外磁场中的超导相变等）：*$
Delta mu = 0, quad Delta s = (diff mu)/(diff T) eq.not 0, quad Delta v = (diff mu)/(diff p) eq.not 0
$
- *二级相变：在相变点，两相的化学势和化学势的一级偏微商均相等，但化学式的二级偏微商发生突变（例如没有外磁场的超导相变；大部分磁相变等）：*$
Delta mu = 0, quad Delta s eq 0, quad Delta v eq 0 \
Delta c_p = (diff^2 mu)/(diff T^2) eq.not 0, quad Delta alpha = (diff^2 mu)/(diff T diff p) eq.not 0, quad Delta kappa_T = (diff^2 mu)/(diff p^2) eq.not 0
$
- *普遍的：$n$ 级相变是指在相变点， $mu$ 到 $mu$ 的 $(n-1)$ 级偏微商连续，但 $n$ 级偏微商发生突变。*

- 习惯上把*二级以上的高级相变*称作*连续相变*或*临界相变*。实际上，发生这类相变时，因为没有潜热发生和体积的变化，所以系统的宏观状态不发生任何突变，而是连续变化的。因此才称为连续相变。
- 连续相变的特征是：没有两相共存，也不存在过冷和过热等亚稳态。系统发生此类相变时，系统的对称性发生突变，称之为*对称破缺*。

#h(2em)对_Clausius–Clapeyron_方程使用洛必达法则，得到二级相变中的_Ehrenfest_方程：$
(dif p)/(dif T) = (Delta s)/(Delta v) = (diff Delta s \/ diff T)/(diff Delta v \/ diff T) = (Delta c_p \/ T)/(v Delta alpha) = (Delta c_p)/(T v Delta alpha) = (Delta alpha)/(Delta kappa_T)
$其中有关系式：$
(Delta alpha)/(Delta kappa_T) = (Delta c_p)/(T v Delta alpha)
$