#import "../../template.typ": *

== 均匀系的平衡关系

=== _Maxwell_ 关系

通过热力学基本微分方程 $dif U = T dif S - p dif V$ 二阶微商可换序的性质，我们可以得到一系列_Maxwell_关系式：$
&dif U = ((diff U)/(diff S))_V dif S + ((diff U)/(diff V))_S dif V = T dif S - p dif V\
arrow.double& T = ((diff U)/(diff S))_V, quad p = - ((diff U)/(diff V))_S
$
考虑二阶微商：$
((diff T)/(diff V))_S = (diff^2 U)/(diff S diff V) = (diff^2 U)/(diff V diff S) = -((diff p)/(diff S))_V
$
#align(
  center,
  table(
    columns: (auto, auto, auto),
    inset: 10pt,
    align: horizon,
    [*微分方程*], [*变量*],[*_Maxwell_ 关系*],
    [$dif U = T d S - p dif V$], [$(S,V)$],[$((diff T)/(diff V))_S=-((diff p)/(diff S))_V$],
    [$dif H = T dif S + V dif p$], [$(S,p)$],[$((diff T)/(diff p))_S=((diff V)/(diff S))_p$],
    [$dif F = -S dif T - p dif V$], [$(T,V)$],[$((diff S)/(diff V))_T=((diff p)/(diff T))_V$],
    [$dif G = -S dif T + V dif p$], [$(T,p)$],[$((diff S)/(diff p))_T=-((diff V)/(diff T))_p$]
  )
)
可以通过Jacobi行列式记忆这些关系式：$
(diff(T,S))/(diff(x,y)) = (diff(p,V))/(diff(x,y))
$分别取$(x,y)$为$(V,S),(p,S),(T,V),(T,p)$即可得到上面的四个Maxwell关系式。

=== _Maxwell_关系的应用

==== 状态变量与物态方程的联系

- *能态方程*，将 $U$看作$(T,V)$的函数，即$U = U[S(T,V),V]$：$
((diff U)/(diff V))_T &= ((diff U)/(diff S))_V ((diff S)/(diff V))_T + ((diff U)/(diff V))_S \
&=T ((diff p)/(diff T))_V - p
$<U-state>
- *焓态方程*，将 $H$ 看作 $(T,p)$ 的函数，即 $H = H[S(T,p),p]$：$
((diff H)/(diff p))_T &= ((diff H)/(diff S))_p ((diff S)/(diff p))_T + ((diff H)/(diff p))_S\
&=-T ((diff V)/(diff T))_p + V
$<H-state>

==== 热容

+ *热容差*$
C_V &= ((diff U)/(diff T))_V = ((diff U)/(diff S))_V ((diff S)/(diff T))_V = T ((diff S)/(diff T))_V\
C_p &= ((diff H)/(diff T))_p = ((diff H)/(diff S))_p ((diff S)/(diff T))_p = T ((diff S)/(diff T))_p \
&= T [((diff S)/(diff T))_V + ((diff S)/(diff V))_T ((diff V)/(diff T))_p]\
C_p - C_V &= T #text(blue)[$((diff S)/(diff V))_T$] ((diff V)/(diff T))_p = T #text(blue)[$((diff p)/(diff T))_V$] ((diff V)/(diff T))_p = T V (alpha^2)/kappa_T
$
+ *已知 $C_V (T,V_0)$ 求 $C_V (T,V)$*$
dif C_V = ((diff C_V)/(diff T))_V dif T + ((diff C_V)/(diff V))_T dif V = ((diff C_V)/(diff V))_T dif V
$其中有：$
((diff C_V)/(diff V))_T &= T (diff^2 S)/(diff V diff T) = T [(diff)/(diff T) #text(blue)[$((diff S)/(diff V))_T$]] \
&= T [(diff)/(diff T) #text(blue)[$((diff p)/(diff T))_V$]] = T ((diff^2 p)/(diff T^2))_V
$于是可以得到：$
dif C_V = T ((diff^2 p)/(diff T^2))_V dif V\
C_V (T,V) = integral_(V_1)^(V_2) T ((diff^2 p)/(diff T^2))_V dif V + C_V (T,V_0)
$
+ *已知 $C_p (T,p_0)$ 求 $C_p (T,p)$*$
dif C_p &= ((diff C_p)/(diff T))_p dif T + ((diff C_p)/(diff p))_T dif p = ((diff C_p)/(diff p))_T dif p\
&= -T ((diff^2 V)/(diff T^2))_p dif p\
$同样可以得到积分式：$
C_p (T,p) &= integral_(p_1)^(p_2) -T ((diff^2 V)/(diff T^2))_p dif p + C_p (T,p_0)
$

=== 基本热力学函数的确定

我们需要确定的基本热力学函数包括物态方程、内能（$U$）、和熵（$S$）；考虑一个 $p dash V dash T$系统，以 $(T,V)$ 为变量，物态方程需要通过统计力学方法或者实验得到，假设物态方程已知，我们来确定内能$U$：$
dif U = ((diff U)/(diff T))_V dif T + ((diff U)/(diff V))_T dif V
$这里$(diff U\/diff T)_V = C_V$，第二项由能态方程 @U-state 确定，于是有：$
dif U = C_V dif T + [T ((diff p)/(diff T))_V - p] dif V\
U(T,V) = integral_((T_0,V_0))^((T,V)) {C_V dif T + [T ((diff p)/(diff T))_V - p] dif V} + U(T_0,V_0)\
$运用同样的方式也可以确定熵 $S(T,V)$，或者以 $(T,p)$ 为变量下的焓 $H(T,p)$。

=== 特性函数和_Joule-Thomson_效应

#colorbox(
  title: [特性函数],
  color: "blue",
  radius: 5pt,
  width: auto
)[
  热力学中，如果知道一个函数的形式，就可以通过求导的方式得到所有热力学函数，则该函数成为特性函数（热力学势）。$
  U(S,V), quad H(S,p), quad F(T,V), quad G(T,p), quad S(U,V), quad dots.c
  $
]

#colorbox(
  title: [_Joule-Thomson_效应],
  color: "blue",
  radius: 5pt,
  width: auto
)[
  _Joule-Thomson_效应是指节流过程中温度随压强会发生变化的现象。有 _Joule-Thomson_系数定义为：$
  mu equiv ((diff T)/(diff p))_H = V/C_p (T alpha -1)
  $节流过程是一个不可逆的等焓过程，当 $mu gt 0$ 时，节流过程中温度降低，称为致冷区；当 $mu lt 0$ 时，节流过程中温度升高，称为致温区；当 $mu eq 0$ 时，节流过程中温度不变，称为反转曲线。
]
