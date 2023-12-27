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

==== 热动平衡条件

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
$其他判据推导过程同理。

==== 热平衡稳定条件

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
$