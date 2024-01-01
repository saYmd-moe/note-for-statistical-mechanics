#import "../../template.typ": *

== 近独立子系

=== 定域子系

==== _Maxwell-Boltzmann_系统的最可几分布

对于 _Maxwell-Boltzmann_ 分布，系统量子态数：$
W_(#[_M.B._])({a_lambda}) = N!/(product_lambda a_lambda !) product_lambda g_lambda^(a_lambda)\
ln W_(#[_M.B._]) approx N ln N - sum_lambda a_lambda ln a_lambda + sum_lambda a_lambda ln g_lambda = N ln N + sum_lambda a_lambda ln g_lambda/a_lambda\
$令$delta ln W_(#[_M.B._]) = 0$，可以得到一组约束方程：$
cases(
  display(delta ln W_(#[_M.B._]) = -sum_lambda ln(a_lambda/g_lambda) delta a_lambda) \
  display(delta N = sum_lambda delta a_lambda) = 0\
  display(delta E = sum_lambda epsilon_lambda delta a_lambda) = 0
)
$使用_Lagrange_乘子法，引入两个乘子 $alpha, beta$
#footnote([后面可以得到，$alpha=-beta mu, beta = 1\/k T$ 分别表示化学势和热力学温度。])
，得到：$
delta ln W_(#[_M.B._]) - alpha delta N - beta delta E  = -sum_lambda (ln a_lambda/g_lambda+alpha+beta epsilon_lambda) delta a_lambda = 0\
arrow.double ln a_lambda/g_lambda+alpha+beta epsilon_lambda = 0
$得到_Maxwell-Boltzmann_分布：$
#box(
  inset: 5pt,
  stroke: black)[
  $display(tilde(a)_(lambda; #text[_M.B._]) = g_lambda e^(-alpha-beta epsilon_lambda))$
]
$
#note[
  上述讨论的能级是量子化的，如果是经典系统，那么子相空间中的一个相格 $h^r$ 代表一个量子态，用 相空间体积元/相格大小 代表简并度 $g_lambda = dif omega \/ h^r$，求和转化为子相空间中的积分。
]

==== 子系配分函数与热力学量

对于定域系统 (_Boltzmann_统计) ，引入子系配分函数 $Z$ ：$
Z equiv sum_lambda g_lambda e^(-beta epsilon_lambda) = a_lambda dot e^(-alpha)
$使用子系配分函数来表示热力学量的形式是非常简洁的。

- *总粒子数：* $display(
N = sum_lambda a_lambda = sum_lambda g_lambda e^(-alpha-beta epsilon_lambda) = e^(-alpha) dot Z
)$#v(1.5em)
- *内能：* $display(
U = macron(E) = sum_lambda epsilon_lambda macron(a)_lambda = e^(-alpha)dot sum_lambda epsilon_lambda g_lambda e^(-beta epsilon_lambda) = -N/Z diff/(diff beta) Z  = -N diff/(diff beta) ln Z
)$#v(1.5em)
- *外界作用力：* 有微功$display(
\u{0111}W = sum_l macron(Y)_l dif y_l = sum_l (diff E)/(diff y_l) dif y_l 
)$于是得到外界作用力#v(1.5em)$display(
Y_l = (diff E)/(diff y_l) = sum_lambda (diff epsilon_lambda)/(diff y_l) macron(a)_lambda = - N/Z (1/beta diff/(diff y_l)Z)=-N/beta diff/(diff y_l) ln Z
)$#v(1.5em)
- *热量：* $display(
\u{0111}Q = dif macron(E) - sum_l macron(Y)_l dif y_l = sum_lambda epsilon_lambda dif macron(a)_lambda
)$#v(1.5em)
- *熵：* $display(
S = N k (ln Z - 1/beta diff/(diff beta) ln Z) + S_0
)$#h(2em)由于 $T, 1/beta$ 均为 $\u{0111}Q$ 的积分因子，所以有#v(.5em) $beta = 1\/k T$，其中有_Boltzmann_常数 $k = 1.38 times 10^(-13) J dot K^(-1)$；
综上，给出近独立定域子系使用子系配分函数表示的宏观热力学量：$
cases(
  display(Z = sum_lambda g_lambda e^(-beta epsilon_lambda)) \
  display(N = e^(-alpha) dot Z) \
  display(U = -N diff/(diff beta) ln Z) \
  display(Y_l = -N/beta diff/(diff y_l) ln Z) \
  display(S = N k (ln Z - beta diff/(diff beta) ln Z) + S_0)
)
$这些表达式建立起宏观热力学量与微观状态之间的联系，可以看到只要我们得到子系配分函数 $Z$ 就可以计算出宏观热力学量。

==== _Boltzmann_关系

对于近独立定域子系：$
ln W_(#text[_M.B._]) &= N ln N - sum_lambda a_lambda ln a_lambda/g_lambda \
&= N ln N - sum_lambda macron(a)_lambda ln macron(a)_lambda/g_lambda \
&= N ln N - sum_lambda macron(a)_lambda (-alpha-beta epsilon_lambda) \
&= N ln N + alpha N + beta macron(E) \
&= N (ln Z - beta diff/(diff beta) ln Z)
$于是得到_Boltzmann_关系：$
S = k (ln Z - beta diff/(diff beta) ln Z)= N k ln W_(#text[_M.B._])
$只需要得到系统总量子态数 $W_(#text[_M.B._])$，就可以通过简单的取对数得到总熵 $S$ 。

==== 定域子系的经典极限条件

当温度足够高，使得能级间隔 $Delta epsilon_n equiv epsilon_n - epsilon_(n-1)$ 远远小于 $k T$ 时，量子统计结果会退化为经典统计。有经典极限条件（能级准连续条件）：$
(Delta epsilon_n)/(k T) lt.double 1
$在满足经典极限条件时，量子统计结论得到的子系配分函数有经典极限形式（考虑子系有 $r$ 个自由度）：$
Z = sum_(n=0)^(infinity) e^(-beta epsilon_n) attach(
  arrow.long,
  t: (Delta epsilon_n)/(k T) lt.double 1
) Z = integral dots.c integral (dif q_1 dots.c dif q_r dif p_1 dots.c dif p_r)/(h^r) e^(-beta epsilon)
$

==== _Maxwell_速度分布律

考虑服从_Maxwell-Boltzmann_分布（定域或满足非简并条件的非定域）的理想气体，气体分子的运动可以分解为*质心运动（平动）*和*内部运动*，内部运动包括双原子或多原子分子的转动和振动、原子内束缚电子的运动和核内部自由度的运动。这两部分能量相互不影响：$
epsilon_lambda =  epsilon^t +  epsilon^i \
g_lambda =  g^t  dot g^i
$上标 $t, i$ 分别代表平动和内部。现在写出_Maxwell-Boltzmann_分布：$
macron(a)_lambda = g_lambda e^(-alpha-beta epsilon_lambda) = e^(-alpha) (g^i e^(-beta epsilon^i)) (g^t e^(-beta epsilon^t))
$在宏观体积内假设平动满足经典极限条件 $Delta epsilon^t lt.double k T$，考虑子相体积元内的平均分子数 $dif n$：$
dif n = e^(-alpha) (sum_i g^i e^(-beta epsilon^i)) (dif omega^t)/h^3 e^(-beta epsilon^t) = e^(-alpha) Z^i (dif omega^t)/h^3 e^(-beta epsilon^t)
$其中有：$
dif omega^t = dif x dif y dif z dif p_x dif p_y dif p_z \
epsilon^t = 1/(2m) (p_x^2 + p_y^2 + p_z^2) + phi(x,y,z) \
Z^i = sum_i g^i e^(-beta epsilon^i)
$方便计算假设外场势能 $phi(x,y,z) = 0$，并令 $A equiv e^(-alpha) Z^i \/ h^3$，可以由重整化得到：$
N = A limits(integral.triple)_V dif x dif y dif z limits(integral.triple)_(-infinity)^(+infinity) e^(-(p_x^2 + p_y^2 + p_z^2)\/2 m k T) dif p_x dif p_y dif p_z = A V (2 pi m k T)^(3\/2)
$得到：$
A = n (1/(2 pi m k T))^(3\/2)
$其中分子数密度 $n equiv N\/V$；取 $p_x = m v_x, p_y = m v_y, p_z = m v_z$，即刻得到单位体积内，质心运动处于 $dif v_x dif v_y dif v_z$ 内的平均分子数：$
f(v_x,v_y,v_z) dif v_x dif v_y dif v_z = n (1/(2 pi m k T))^(3\/2) e^(-m (v_x^2 + v_y^2 + v_z^2)\/2 k T) dif v_x dif v_y dif v_z
$这就是 *_Maxwell_速度分布律*，其中 $f(v_x,v_y,v_z)$ 称为 *_Maxwell_速度分布函数*。如果取速度空间球坐标：$
v_x = v sin theta cos phi, v_y = v sin theta sin phi, v_z = v cos theta
$取球坐标体积元 $v^2 dif v sin theta dif theta dif phi$，带入后把角度积分掉，得到*速率分布函数*：$
f(v) dif v = 4 pi n (m\/2 pi k T)^(3\/2) e^(-m v^2\/2 k T) v^2 dif v
$有最可几速率 $v_m$，满足：$
((dif f)/(dif v))_(v = v_m) = 0\
arrow.double v_m = sqrt((2 k T)/m)
$进而还可以得到分子平均速率 $macron(v)$ 和方均根速率 $v_s$ ：$
macron(v) = integral_0^infinity v f(v) dif v = sqrt((8 k T)/(pi m))\
v_s = sqrt(macron(v^2)) = [integral_0^infinity v^2 f(v) dif v]^(1\/2) = sqrt((3 k T)/m)
$

==== 能量均分定理

#colorbox(
  title: [能量均分定理],
  color: "blue",
  radius: 5pt,
  width: auto
)[
  满足经典极限条件的系统微观能量表达式中的每一正平方项的平均值等于 $display(1/2 k T)$。
]

=== 非定域子系

==== _Bose-Einstein_分布

对于 _Bose-Einstein_ 分布，系统量子态数：$
W_(#text[_B.E._])({a_lambda}) = product_lambda C_(a_lambda+g_lambda-1)^a_lambda = product_lambda ((a_lambda+g_lambda-1)!)/(a_lambda ! (g_lambda -1)!)\
arrow.double ln W_(#text[_B.E._]) approx sum_lambda (a_lambda+g_lambda) ln (a_lambda+g_lambda) - sum_lambda a_lambda ln a_lambda - sum_lambda g_lambda ln g_lambda\
$同样令$delta ln W_(#text[_B.E._]) = 0$，可以得到一组约束方程：$
cases(
  display(delta ln W_(#text[_B.E._]) = sum_lambda ln((a_lambda+g_lambda)/a_lambda) delta a_lambda) \
  display(delta N = sum_lambda delta a_lambda) = 0\
  display(delta E = sum_lambda epsilon_lambda delta a_lambda) = 0
)
$得到_Bose-Einstein_分布：$
tilde(a)_(lambda;#text[_B.E._])=g_lambda/(e^(alpha+beta epsilon_lambda) - 1)
$

==== _Fermi-Dirac_分布

对于 _Fermi-Dirac_ 分布，系统量子态数：$
W_(#text[_F.D._])({a_lambda}) = product_lambda C_(g_lambda)^a_lambda = product_lambda (g_lambda!)/(a_lambda ! (g_lambda -a_lambda)!)\
arrow.double ln W_(#text[_F.D._]) approx sum_lambda g_lambda ln g_lambda - sum_lambda a_lambda ln a_lambda - sum_lambda (g_lambda - a_lambda) ln (g_lambda - a_lambda) \
$同样令$delta ln W_(#text[_F.D._]) = 0$，可以得到一组约束方程：$
cases(
  display(delta ln W_(#text[_F.D._]) = sum_lambda ln ((g_lambda - a_lambda)/a_lambda) delta a_lambda) \
  display(delta N = sum_lambda delta a_lambda) = 0\
  display(delta E = sum_lambda epsilon_lambda delta a_lambda) = 0
)
$得到_Fermi-Dirac_分布：$
tilde(a)_(lambda;#text[_F.D._])=g_lambda/(e^(alpha+beta epsilon_lambda) + 1)
$

==== 巨配分函数与热力学量

统一引入理想_Bose_气体和理想_Fermi_气体服从的平均分布：$
macron(a)_lambda = g_lambda/(e^(alpha + beta epsilon_lambda) plus.minus 1), quad cases(
  display(- quad #[_Bose-Einstein_分布]),
  display(+ quad #[_Fermi-Dirac_分布])
)
$引入巨配分函数：$
Xi = product_lambda (1 plus.minus e^(-alpha-beta epsilon_lambda))^(plus.minus g_lambda)\
ln Xi = sum_lambda plus.minus g_lambda ln(1 plus.minus e^(-alpha-beta epsilon_lambda))
$不难证明各热力学量表达式满足下列关系：$
cases(
  display(macron(N) &= - diff/(diff alpha) ln Xi),
  display(macron(E) &= - diff/(diff beta) ln Xi),
  display(macron(Y)_l &= - 1/beta diff/(diff y_l) ln Xi),
  display(S &= k(ln Xi - diff/(diff alpha) ln Xi - diff/(diff beta) ln Xi)),
  display(F &= - k T ln Xi + k T alpha diff/(diff alpha) ln Xi),
  display(G &= k T alpha diff/(diff alpha) ln Xi),
  display(Psi &= - k T ln Xi),
  display(S &= k ln W_(max) = k ln W({macron(a)_lambda}))
)
$

==== 非简并条件和经典极限条件

对于_Bose-Einstein_分布和_Fermi-Dirac_分布有：$
macron(a)_lambda = g_lambda/(e^(alpha + beta epsilon_lambda) plus.minus 1), quad cases(
  display(- quad #[_Bose-Einstein_分布]),
  display(+ quad #[_Fermi-Dirac_分布])
)
$注意到，当 $e^alpha gt.double 1$ 时，两个分布退化为_Maxwell-Boltzmann_分布：$
macron(a)_lambda = g_lambda e^(-alpha-beta epsilon_lambda)
$这就称为*非简并条件*：$
e^alpha gt.double 1 arrow.r.double.long quad macron(a)_lambda/g_lambda lt.double 1
$表示每个粒子量子态上平均占据的粒子数远小于 $1$。此时有：$
macron(a)_(lambda;#[_B.E._]) = macron(a)_(lambda;#[_F.D._]) = macron(a)_(lambda;#[_M.B._]) \
W_(#[_B.E._]) = W_(#[_F.D._]) = 1/(N!)W_(#[_M.B._])
$现在来看看满足非简并条件下的巨配分函数：$
ln Xi &= plus.minus sum_lambda g_lambda ln(1 plus.minus e^(-alpha-beta epsilon_lambda))\
&approx sum_lambda g_lambda e^(-alpha-beta epsilon_lambda) = e^(-alpha) Z
$将该巨配分函数带入到热力学量的统计表达式中，我们就能得到非简并条件下的热力学量表达式：$
cases(
  display(macron(N) &= - diff/(diff alpha) ln Xi = e^(-alpha) Z),
  display(macron(E) &= - diff/(diff beta) ln Xi = -e^(-alpha) (diff Z)/(diff beta) = -macron(N) diff/(diff beta) ln Z),
  display(macron(Y)_l &= - 1/beta diff/(diff y_l) ln Xi = - 1/beta e^(-alpha) (diff Z)/(diff y_l) = -macron(N)/beta diff/(diff y_l) ln Z),
  display(S &= k(ln Xi - diff/(diff alpha) ln Xi - diff/(diff beta) ln Xi) = macron(N) k (ln Z - beta diff/(diff beta) ln Z) - k ln macron(N)!),
  display(mu &= - k T ln Z/macron(N)),
  display(S &= k ln W_(max) = k ln (W_(#[_M.B._])_(max)) - k ln N!)
)
$

#h(2em)与定域子系相同，非定域子系也有经典极限条件：$
e^alpha gt.double 1 \
(Delta epsilon_n)/(k T) lt.double 1
$也就是在满足非简并条件的前提下，满足能级准连续的条件，此时对子系能级的求和可以近似使用子相体积的积分代替。
