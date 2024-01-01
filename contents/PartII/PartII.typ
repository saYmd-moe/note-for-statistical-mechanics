#import "../../template.typ": *

= 统计力学

为了方便复习，统计力学部分会尽量简略描述结果，省去大部分推导过程，作为简单的总结给出。（快考试了没时间写全推导步骤） $arrow.t arrow.b$

#colorbox(
  title: [等概率原理],
  color: "blue",
  radius: 5pt,
  width: auto
)[
  对于#text(rgb("#FA7F6F"))[平衡态的孤立系]，系统处于各个可能微观态的概率相等。
]
$
cases(
  #[定域子系] cases(
    #[经典子系(经典统计)] ,
    #[量子子系(量子统计)]
  ),
  #[非定域子系] cases(
    #[Bose子(_Bose-Einstein_分布) 自旋是 $hbar$ 的整数倍，如光子($s=1$)、$pi$ 介子($s=0$)],
    #[Fermi子(_Fermi-Dirac_分布) 自旋是 $hbar$ 的半整数倍，如电子($s=1/2$)、质子($s=1/2$)]
  )
)
$

#h(2em)后续计算中搞清楚变量含义尤为重要，一千个物理壬使用一千套符号体系，先在这里给出各个变量的含义便于随时检索。
- *能级：* $epsilon_lambda$ 用于记录各个能级的能量
- *简并度：* $g_lambda$ 相同能级下允许存在的不同的量子态数目
- *分布：* ${a_lambda}$ $a_1,a_2,dots.c,a_lambda$ 用于记录第 $lambda$ 个能级上的粒子数
- *系统量子态数：* $W({a_lambda})=#text(rgb("#FA7F6F"))[$c$] #text(blue)[$product_lambda d_lambda$]$，#text(rgb("#FA7F6F"))[分布${a_lambda}$只决定了每个能级上的粒子数，还需要考虑不同能级间粒子的变换，这就是组合系数 $c$]； #text(blue)[第$lambda$个能级上的$a_lambda$个粒子有$d_lambda$种占据方式]
- *_Stirling_公式：*$
ln n! = sum_(k=1)^n ln k approx integral_1^n ln x dif x (n gt.double 1) = [x ln x - x]_1^n approx n (ln n -1)
$
- *处于平衡态的孤立近独立子系必满足这两个条件：*$
sum_lambda a_lambda = N, \
sum_lambda epsilon_lambda a_lambda = E.
$

直接给出最可几分布的形式，后续小节补充推导过程（使用 _Stirling_ 公式和_Lagrange_乘子法得到）：$
macron(a)_lambda = g_lambda/(e^(alpha + beta epsilon_lambda) + eta), quad 
eta = cases(
  plus 1\, quad &#[_Fermi-Dirac_分布],
  0\, &#[_Maxwell-Boltzmann_分布],
  minus 1\, &#[_Bose-Einstein_分布]
)
$最可几分布法（最概然分布法）是一种使用极大值代替平均值的方法，上述各个分布 $tilde(a)_lambda$ 都是使系统量子态数 $W({a_lambda})$ 取极大值的分布，该分布可以代表微观的统计平均，进而反应系统的宏观状态。