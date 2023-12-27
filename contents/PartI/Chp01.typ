#import "../../template.typ": *

== 热力学的基本规律


=== 平衡态及其描写

==== 平衡态

几个概念：
  - *热力学系统*：热力学所研究的对象
  - *绝热壁与导热壁*：绝热壁不允许两边的物体发生任何形式的热交换，反之称为导热壁
  - *刚性壁*：不允许物体发生位移；刚性壁包裹的固体不可能发生形变
  - *热接触*：刚性、导热壁分开的两个物体间只能发生热交换，而不互相做功与物质交换
  - *热力学平衡*：没有外界影响的情况下一个系统的宏观性质长时间内不发生变化的状态
  - *热学平衡*：两个或一个系统的不同部分的温度相等，是热力学平衡的一个条件。

#h(2em)根据与外界环境能发生的相互作用种类，热力学系统可以分为三种：
  - *孤立系*：与外界不发生任何相互作用
  - *闭系*：与外界只发生能量交换
  - *开系*：与外界发生能量和物质交换

==== 平衡态的描写

热力学中会把物体看作连续介质，只需要少数几个宏观变量就可以表示出宏观平衡态，这些宏观变量被称为*#text(blue)[状态变量]*。可以归纳为以下几种状态变量：
- *几何变量*：$V, A, L$
- *力学变量*：$p, sigma, arrow(cal(F))$
- *电磁变量*：$arrow(cal(E)), arrow(cal(P)), arrow(cal(H)), arrow(cal(M))$
- *化学变量*：组元的摩尔数

#h(2em)除了这四类状态变量，还有热力学中特有的*#text(blue)[态函数]*，如温度、内能、焓、自由能、吉布斯函数等，这些态函数完全由上述状态变量确定。对于各部分性质完全相同的系统（*均匀系*），其状态变量和态函数可以分为与系统总质量成正比的*广延量*，包括摩尔数、体积、内能、熵等；与系统总质量无关的*强度量*，包括密度、温度、压强、内能密度、熵密度等。#highlight[广延量具有可加性，强度量不可加，并具有局域的性质。]


=== 物态方程

通过*热平衡定律*
#footnote([如果物体A分别与物体B和C处于热平衡，那么B与C也一定处于热平衡。热平衡定律也是热力学第零定律。])
我们可以引入第一个态函数——*温度*，我们将温度与独立状态变量之间的函数关系称为*#text(blue)[物态方程]*，对于一定质量的化学纯气体，温度、压强、体积均可作为状态变量：
$
g(p,V,T)=0 
$<eq-of-stat>
或者更普遍的情况：
$
g(x_1,x_2,dots,x_n,T)=0
$

#h(2em)通过物态方程 @eq-of-stat 我们可以定义一些物理量：
+ *膨胀系数* $alpha$，表示压强不变的条件下体积随温度的相对变化率$ alpha equiv 1/V ((diff V)/(diff T))_p $
+ *压强系数* $beta$，表示体积不变的条件下压强随体积的相对变化率$ beta equiv 1/p ((diff p)/(diff V))_V $
+ *等温压缩系数* $kappa_T$，表示温度不变的条件下体积随压强的相对变化率$ kappa_T equiv -1/V ((diff V)/(diff p))_T $

#h(2em)两种常用物态方程：
- *理想气体状态方程*，假设分子间无相互作用：$ p V= N R T $<perfect-gas-equation>
- *范德瓦尔斯气体状态方程*，考虑了分子间相互作用引起的修正：#v(3.5em)$ (p+ (#pin(1)N^2 a#pin(2))/(V^2#pin(3)))(V-#pin(4)N b#pin(5))=N R T $ //TODO: 通过统计物理方法计算 a 和 b

#pinit-highlight-equation-from((1, 2, 3), 3, height: 2.5em, pos: bottom, fill: rgb(0, 180, 255))[
  对分子间吸引力的修正
]

#pinit-highlight-equation-from((4, 5), 5, height: 2.5em, pos: top, fill: rgb(150, 90, 170))[
  对分子间排斥力的修正
]
#v(3.5em)

=== 热力学第一定律

#colorbox(
  title: [热力学第一定律],
  color: "blue",
  radius: 5pt,
  width: auto
)[
  #set list(indent: .5em)
  - *能量守恒表述：*自然界一切物质都具有能量，能量有各种不同的形式，能够从一种形式转化为另一种形式，从一个物体传递给另一个物体，在转化和传递过程中能量的数量不变。
  - *数学表述：*$Delta U=Q+W$，$Delta U、Q、W$分别为内能增量、系统吸收的能量和*外界对系统做的功*。
  - 永动机是不可能造成的。
]

==== 热容和熵

热容用于表示物体吸收热量的能力，定义为$C_y equiv \u{0111} Q_y \/ d T$，如果考虑一个$p dash.en V dash.en T$系统，$y$ 可以分别取为$V、p$表示*定容热容*与*定压热容*：

系统体积不变时，外界对系统不做功（$\u{0111} W=0$），即$\u{0111}Q_V=d U$。则*#text(rgb("#FA7F6F"))[定容热容]*:
$
C_V = ((diff U)/(diff T))_V
$
#note[
  如果已知理想气体热容$C_V (T)$，则可以得到任意两个状态间内能变化量的表达式：
  $
  Delta U &= integral_(T_1)^(T_2) C_V (T) dif T + integral_(V_1)^(V_2) ((diff U)/(diff V))_T dif V \
  &=integral_(T_1)^(T_2) C_V (T) dif T
  $<heat-capacity>
]

#h(2em)当系统的压强不变时，外界对系统做微功$\u{0111} W=-p d V$，则*#text(rgb("#FA7F6F"))[定压热容]*:
$
C_p &= ((diff U)/(diff T))_p + p((diff V)/(diff T))_p \
&= C_V + p((diff V)/(diff T))_p
$
#note[
  由于两个式子的RHS均是内能和物态方程的微商，所以两个热容都是态函数。
]

#h(2em)现在可以引入一个新的态函数，*#text(rgb("#FA7F6F"))[熵]*：
$
H equiv U +p V
$
于是@heat-capacity 可以写成：
$
C_p = ((diff H)/(diff T))_p
$
在等压过程中，物体从外界吸收的热量等于物体焓的增加值。

==== 理想气体

理想气体不考虑分子间的相互作用，一般温度不太低、压强趋于零的极限状态下的气体可以看作理想气体。理想气体满足理想气体状态方程和内能只与温度有关：
$
&p V = N R T\
&U = U(T)
$
根据焓的定义，理想气体的焓也只是温度的函数
$
H equiv U + p V = U(T) + N R T = H(T)
$
于是可以写出理想气体的定容热容和定压热容：
$
C_V equiv ((diff U)/(diff T))_V = (dif U)/(dif T) = C_V (T)\
C_p equiv ((diff H)/(diff T))_p = (dif H)/(dif T) = C_p (T)
$
理想气体的热容均为 $T$ 的函数，现在可以得到两种热容满足如下式子：
$
C_V = (N R)/(gamma -1); quad C_p = gamma (N R)/(gamma -1)
$
其中 $gamma$ 定义为两种热容之比 $gamma equiv C_p\/C_V=gamma(T)$，已知热容可以通过积分得到理想气体的内能与焓：
$
U(T) = integral C_V (T) dif T + U_0\
H(T) = integral C_p (T) dif T + H_0
$
#h(2em)下面考虑理想气体的*绝热过程*（$\u{0111}Q=dif U+p dif V=0$），对于一个 $p dash V dash T$ 系统，以 $p V$ 为参量时有准静态绝热过程方程：
$
p V^gamma = C
$
利用理想气体状态方程可以进一步得到：
$
T V^(gamma-1) = C'\
T^(-gamma) p^(gamma-1) = C''
$<process-equation>

可以列出理想气体的常见热力学过程如下：
- *等容过程：*$V = op("const")$
- *等压过程：*$p = op("const")$
- *等温过程：*$p V = N R T = op("const")$
- *绝热过程：*$p V^gamma = op("const")$
- *#text(rgb("#FA7F6F"))[多方过程]：*$p V^n = op("const")$

#note[多方过程的多方指数 $n$ 可由下式测量：$n = ln(p_1\/p_2)\/ln(V_2\/V_1)$]

=== 热力学第二定律

==== 理想气体的卡诺循环

在建立热力学第二定律时需要借助卡诺循环进行推导，先考虑一种由理想气体作为工作物质的可逆卡诺循环过程。
#grid(
  columns: 2,
  gutter: 5pt,
  box(width: 100%)[
    #h(2em)该可逆卡诺循环由四步构成：
    - *( I )#h(1em)等温膨胀：*$(T_1,V_1) arrow (T_1,V_2)$
    - *( II )#h(.7em)绝热膨胀：*$(T_1,V_2) arrow (T_2,V_3)$
    - *( III )#h(.4em)等温压缩：*$(T_2,V_3) arrow (T_2,V_4)$
    - *( IV )#h(.4em)绝热压缩：*$(T_2,V_4) arrow (T_1,V_1)$
  完成整个循环过程后温度没有发生改变，所以有$integral.cont dif U =0$，由热力学第一定律：
  $
  - integral.cont \u{0111}W = integral.cont \u{0111}Q
  $
  ],
  figure(
    cetz.canvas(
      {import cetz.draw: *

      // 坐标轴
      let x = (0,3)
      let y = (0,3)

      set-style(mark: (fill: none))
      line((x.at(0),0),(x.at(1),0), mark: (end: ">"), stroke: (paint: luma(30%)))
      content((x.at(1)-.1,-.3),[$V$])
      line((0,y.at(0)),(0,y.at(1)), mark: (end: ">"), stroke: (paint: luma(30%)))
      content((0,y.at(1)+.3),[$p$])

      // 首先定义出四个状态的位置
      let A = (.5,2.75)
      let B = (2,2.5)
      let C = (2.75,.75)
      let D = (1.25,1.25)

      // 绘制各过程的曲线
      let p1 = (A.at(0)+.5*(B.at(0)-A.at(0)), B.at(1)+.1*(A.at(1)-B.at(1)))
      let p2 = (B.at(0)+.1*(C.at(0)-B.at(0)), C.at(1)+.5*(B.at(1)-C.at(1)))
      let p3 = (D.at(0)+.5*(C.at(0)-D.at(0)), C.at(1)+.1*(D.at(1)-C.at(1)))
      let p4 = (A.at(0)+.1*(D.at(0)-A.at(0)), A.at(1)+.5*(D.at(1)-A.at(1)))
      bezier(A, B, p1)
      content((A.at(0),A.at(1)+.2),[$1$])
      content((p1.at(0),p1.at(1)+.2),text(size: .5em)[( I )])

      bezier(B, C, p2)
      content((B.at(0),B.at(1)+.2),[$2$])
      content((p2.at(0)+.3,p2.at(1)+.2),text(size: .5em)[( II )])

      bezier(C, D, p3)
      content((C.at(0)+.2,C.at(1)),[$3$])
      content((p3.at(0),p3.at(1)-.1),text(size: .5em)[( III )])

      bezier(D, A, p4)
      content((D.at(0),D.at(1)-.2),[$4$])
      content((p4.at(0)-.25,p4.at(1)),text(size: .5em)[( IV )])
    }),
    caption: [理想气体的可逆卡诺循环过程]
  )
)

定义气体在循环过程中所做的净功$W'$：
$ 
W' equiv - integral.cont \u{0111}W = integral.cont \u{0111}Q = Q_1 + Q_2
$
其中 $Q_1, Q_2$ 分别为两个等温过程 ( I ) 与 ( III ) 中气体从外界吸收的热量
#footnote[
  绝热过程中没有热量交换，等温过程可以看作分别与高温大热源（$T_1$）和低温大热源（$T_2$）进行热交换。
]
，可以通过积分得到：
$
Q_1 &= -W_1 = integral_(V_1)^(V_2) p dif V = N R T_1 ln V_2/V_1 \
Q_2 &= -W_2 = integral_(V_3)^(V_4) p dif V = - N R T_2 ln V_3/V_4
$
可以看到$Q_2 < 0$，也就是说过程 ( III ) 中理想气体是向外界放热的。下面我们来计算热机的效率 $eta$ ：
$
eta equiv W'/Q_1 = (Q_1 - abs(Q_2))/(Q_1) = 1 - abs(Q_2)/Q_1 = 1 - T_2/T_1 (ln(V_3\/V_4))/(ln(V_2\/V_1))
$<efficiency>
利用理想气体绝热方程的过程方程 @process-equation 作用与过程 ( II ) 和 ( IV ) 可以得到：
$
T_1 V_2^(gamma-1) = T_2 V_3^(gamma-1) \
T_1 V_1^(gamma-1) = T_2 V_4^(gamma-1)
$
相除得到：
$
V_2/V_1 = V_3/V_4
$
代入到 @efficiency 即可得到理想气体可逆卡诺循环的效率：
$
eta = 1- T_2/T_1
$
从该式可以看出理想气体的可逆卡诺循环效率只与高温热源和低温热源的温度有关，而与工作物质的质量、体积等无关。

#note[
  如果是卡诺制冷机，其制冷系数定义为从低温热源吸收的热量 $abs(Q_2)$ 与外界对气体所作的净功 $W$ 之比：
  $
  epsilon equiv Q_2/W = T_2/(T_1 - T_2)
  $
]

==== 热力学第二定律与两种表述的等价证明
#colorbox(
  title: [热力学第二定律],
  color: "blue",
  radius: 5pt,
  width: auto
)[
  #set list(indent: .5em)
  - *开尔文表述：*不可能从单一热源吸热使之完全变为有用功且不产生其他影响。
  - *克劳修斯表述：*不可能把热从低温物体传到高温物体而不产生其他影响。
  - *熵增原理：*孤立系统的熵用不减小。
  - *实质：*所有与热有关的过程都是不可逆的；不可逆过程产生的后果不可能完全恢复原状而不引起其他变化。
]

下面来证明开尔文表述与克劳修斯表述的等价性，为了辅助证明我们采用热机模型，热机工作于高温热源（$T_1$）和低温热源（$T_2$）之间。
#figure(
  grid(
    columns: 2,
    gutter: 5pt,
    box(width: 30%)[
      #cetz.canvas({
        import cetz.draw: *
        
        // 设置长度数值
        let rect_len = 3
        let rect_width = .75

        let circ_r = .5
        let circ_o1 = (-rect_len/4, 0)
        let circ_o2 = (rect_len/4, 0)

        let rect_pos1 = (
          (-rect_len/2,1.75 * circ_r),
          (rect_len/2,1.75 * circ_r + rect_width)
        )
        let rect_pos2 = (
          (-rect_len/2,-1.75 * circ_r),
          (rect_len/2,-(1.75 * circ_r + rect_width))
        )

        // 热源
        rect(rect_pos1.at(0),rect_pos1.at(1))
        content(
          (0,rect_pos1.at(0).at(1)+ .5*rect_width),
          [$T_1$]
        )
        rect(rect_pos2.at(0),rect_pos2.at(1))
        content(
          (0,rect_pos2.at(0).at(1)- .5*rect_width),
          [$T_2$]
        )

        // 热机
        circle(circ_o1, radius: circ_r, stroke: (dash: "dashed"))
        circle(circ_o2, radius: circ_r)

        // 热量与功
        line(
          (circ_o1.at(0),circ_r),
          (circ_o1.at(0),1.75 * circ_r),
          mark: (end: ">"),
        )
        content(
          (circ_o1.at(0)+.3,circ_r + .2*rect_width),
          text(size: .75em)[$Q_2$]
        )

        line(
          (circ_o1.at(0),-1.75 * circ_r),
          (circ_o1.at(0),-circ_r),
          mark: (end: ">"),
        )
        content(
          (circ_o1.at(0)+.3,-(circ_r + .2*rect_width)),
          text(size: .75em)[$Q_2$]
        )

        line(
          (circ_o2.at(0),1.75 * circ_r),
          (circ_o2.at(0),circ_r),
          mark: (end: ">"),
        )
        content(
          (circ_o2.at(0)+.3,circ_r + .2*rect_width),
          text(size: .75em)[$Q_1$]
        )

        line(
          (circ_o2.at(0),-circ_r),
          (circ_o2.at(0),-1.75 * circ_r),
          mark: (end: ">"),
        )
        content(
          (circ_o2.at(0)+.3,-(circ_r + .2*rect_width)),
          text(size: .75em)[$Q_2$]
        )

        // 做功
        line(
          (circ_o2.at(0) + circ_r, 0),
          (circ_o2.at(0) + 1.75 * circ_r, 0),
          mark: (end: ">"),
        )
        content(
          (circ_o2.at(0) + 1.75 * circ_r + 1, 0),
          text(size: .75em)[$W=Q_1-Q_2$]
        )

        content((0,rect_pos2.at(1).at(1) - .2),[(a)])

      })
    ],
    box(width: 30%)[
      #cetz.canvas({
        import cetz.draw: *
        
        // 设置长度数值
        let rect_len = 3
        let rect_width = .75

        let circ_r = .5
        let circ_o1 = (-rect_len/4, 0)
        let circ_o2 = (rect_len/4, 0)

        let rect_pos1 = (
          (-rect_len/2,1.75 * circ_r),
          (rect_len/2,1.75 * circ_r + rect_width)
        )
        let rect_pos2 = (
          (-rect_len/2,-1.75 * circ_r),
          (rect_len/2,-(1.75 * circ_r + rect_width))
        )

        // 热源
        rect(rect_pos1.at(0),rect_pos1.at(1))
        content(
          (0,rect_pos1.at(0).at(1)+ .5*rect_width),
          [$T_1$]
        )
        rect(rect_pos2.at(0),rect_pos2.at(1))
        content(
          (0,rect_pos2.at(0).at(1)- .5*rect_width),
          [$T_2$]
        )

        // 热机
        circle(circ_o1, radius: circ_r, stroke: (dash: "dashed"))
        circle(circ_o2, radius: circ_r)

        // 热量与功
        line(
          (circ_o1.at(0),1.75 * circ_r),
          (circ_o1.at(0),circ_r),
          mark: (end: ">"),
        )
        content(
          (circ_o1.at(0)+.3,circ_r + .2*rect_width),
          text(size: .75em)[$Q_1$]
        )

        line(
          (circ_o2.at(0),circ_r),
          (circ_o2.at(0),1.75 * circ_r),
          mark: (end: ">"),
        )
        content(
          (circ_o2.at(0)+.7,circ_r + .2*rect_width),
          text(size: .75em)[$Q_1+Q_2$]
        )

        line(
          (circ_o2.at(0),-1.75 * circ_r),
          (circ_o2.at(0),-circ_r),
          mark: (end: ">"),
        )
        content(
          (circ_o2.at(0)+.3,-(circ_r + .2*rect_width)),
          text(size: .75em)[$Q_2$]
        )

        // 做功
        line(
          (circ_o1.at(0) + circ_r, 0),
          (circ_o2.at(0) - circ_r, 0),
          mark: (end: ">"),
        )
        content(
          (circ_o1.at(0) + 1.5 * circ_r , -circ_r),
          text(size: .5em)[$W=Q_1$]
        )

        content((0,rect_pos2.at(1).at(1) - .2),[(b)])
      })
    ]
  ),
  caption: [证明开尔文表述和克劳修斯表述等价的假想实验]
)<second-law>

首先证明：如果开尔文表述成立则克劳修斯表述也必将成立。采用反证法，即假设开尔文表述成立而克劳修斯表述不成立。现在有一卡诺热机从高温热源（$T_1$）热源吸收热量 $Q_1$ 并传导热量 $Q_2$ 至低温热源（$T_2$）热源并对外界做功 $W = Q_1 - Q_2$ 。如果克劳修斯表述不成立，那么可以有另外一个卡诺热机（@second-law[图] 中的 (a) 图虚线热机）可以从低温热源 （$T_2$）吸收热量 $Q_2$ 并完全传递给高温热源 （$T_1$）且不产生其他影响。综合这两个热机的作用效果，复合热机相当于从单一热源（$T_1$）吸收热量 $Q_1-Q_2$ 并完全转化为功 $W=Q_1-Q_2$ ，这违反了开尔文表述。

其次证明：如果克劳修斯表述成立则开尔文表述也必将成立。同样使用反证法，假设克劳修斯表述成立而开尔文表述不成立。假设有一个违反开尔文表述的卡诺热机（@second-law[图] 中的 (b) 图虚线热机），它可以从单一热源（$T_1$）吸收热量 $Q_1$ 并完全转化为功 $W=Q_1$ 。那么我们让这个功驱动另外一个卡诺制冷机从低温热源（$T_2$）吸收热量 $Q_2$ 并传递给高温热源（$T_1$）$Q_1+Q_2$ 的热量，于是复合热机相当于从低温热源（$T_2$）吸收热量 $Q_2$ 并完全传递给高温热源（$T_1$）且不产生其他影响，这违反了克劳修斯表述。

==== 熵与熵增原理

热力学第二定律的实质是热过程的不可逆性，我们可以引入熵来表示这种不可逆性，为此先给出*卡诺定理*：
#colorbox(
  title: [卡诺定理],
  color: "blue",
  radius: 5pt,
  width: auto
)[
  所有工作于两个恒温热源之间的热机中，可逆热机效率最高。
  #footnote[卡诺定理的证明可通过热力学第二定律进行反证法得到，假设一个一般热机和一个可逆热机工作于相同的两热源之间。]
]

通过卡诺定理可以引出热力学温标，即*卡诺热机的效率是两个热源温度（$theta_1, theta_2$）的普适函数：*
$
eta = W/Q = 1 - Q_2/Q_1 = 1 - F(theta_1,theta_2)
$
可以证明：
$
F(theta_1, theta_2)=T_1/T_2
$
有了卡诺定理和热力学温标，我们就可以进一步引出*克劳修斯不等式*，假设一个系统在循环过程中与 $n$ 个热源接触，分别吸收热量 $Q_1, Q_2, dots.c, Q_n$ ，对外做功  $W$ ，则有： 
$
sum_(i=1)^n Q_i/T_i lt.eq 0
$<clausius-theorem>
为了证明克劳修斯不等式，我们引入一个热源 $T_0$ ，和 $n$ 个可逆卡诺热机，使第 $i$ 个卡诺热机工作于热源 $T_i$ 与 $T_0$ 之间，分别从 $T_i, T_0$ 吸收热量 $-Q_i, Q_(0i)$，向外做功 $W_i$。于是这整个大系统对外做的总功为 $W_(op("total"))=W+sum_(i=1)^n W_i$，根据热力学第一定律，$W_(op("total"))=Q_0 equiv sum_(i=1)^n Q_(0 i)$，如果$Q_0 > 0$，那么 $W_(op("total")) > 0$，总系统从单一热源（$T_0$）吸收热量并完全转化为功，这违反了热力学第二定律的开尔文表述。所以 $Q_0 lt.eq 0$，即有 $sum_(i=1)^n Q_(0 i) lt.eq 0$，根据卡诺定理：
$
Q_(0 i)/T_0 + (- Q_i)/(T_i) = 0\
Q_0 = sum_(i=1)^n Q_(0 i) = T_0 sum_(i=1)^n Q_i/T_i lt.eq 0
$
这就证明了克劳修斯不等式( @clausius-theorem )成立，如果考虑 $n arrow infinity$ 的极限情况，则：
$
lim_(n arrow infinity) sum_(i=1)^n Q_i/T_i lt.eq 0 arrow integral.cont (\u{0111}Q)/T lt.eq 0
$<clausius-theorem-int>
对于可逆循环过程， @clausius-theorem-int 可以取等号。

有了克劳修斯不等式我们就可以引入熵了。现在考虑任意可逆循环过程：
$
integral.cont (\u{0111}Q_R)/T = 0
$
#grid(
  columns: 2,
  gutter: 5pt,
  box(width: 100%)[
    假设独立变量 $x_1, x_2, dots.c, x_k$ 描述该系统的平衡态，那么该系统的一个可逆过程就是处于这 $k$ 个独立变量构成的 $k$ 维状态空间中的一个闭合曲线。在这条封闭曲线上取两个点 $P_0, P$ ，这两个点对应于系统的两个平衡态。于是对封闭路径积分就有：$
    integral.cont (\u{0111}Q_R)/T &= attach(
      limits(integral),
      b: C_1,
      br: (P_0),
      tr: (P),
    ) (\u{0111}Q_R)/T \
    &+ attach(
      limits(integral),
      b: C_2,
      br: (P),
      tr: (P_0),
    ) (\u{0111}Q_R)/T = 0
    $
  ],
  box(width: 100%)[
    #figure(
    cetz.canvas(
      {import cetz.draw: *

      // 坐标轴
      let x = (0,3)
      let y = (0,3)

      set-style(mark: (fill: none))
      line((x.at(0),0),(x.at(1),0), mark: (end: ">"), stroke: (paint: luma(30%)))
      content((x.at(1)-.1,-.3),[$x_1$])
      line((0,y.at(0)),(0,y.at(1)), mark: (end: ">"), stroke: (paint: luma(30%)))
      content((0,y.at(1)+.3),[$x_2$])

      // 给出初终态的位置
      let A = (2.25,2.5)
      let B = (.5,.25)

      // 绘制过程的曲线
      let ctrl_point(x,y) = {
        (B.at(0)+x*(A.at(0)-B.at(0)), B.at(1)+y*(A.at(1)-B.at(1)))
      }

      bezier(A, B, ctrl_point(.1,.7))
      content((A.at(0),A.at(1)+.2),[$P$])
      content(ctrl_point(.1,.7),[$C_1$])

      bezier(B, A, ctrl_point(.8,.1))
      content((B.at(0)-.25,B.at(1)+.1),[$P_0$])
      content(ctrl_point(.8,.2),[$C_2$])

    }),
    caption: [可逆循环过程]
  )
  ]
)
可以改写为：
$
attach(
      limits(integral),
      b: C_1,
      br: (P_0),
      tr: (P),
    ) (\u{0111}Q_R)/T
= - attach(
      limits(integral),
      b: C_2,
      br: (P),
      tr: (P_0),
) (\u{0111}Q_R)/T 
= attach(
      limits(integral),
      b: C_2,
      br: (P_0),
      tr: (P),
) (\u{0111}Q_R)/T 
$
即沿 $C_1$ 与沿 $C_2$ 的积分值相等，我们定义这个积分值就是两个平衡态 $P_0, P$ 之间的熵差：
$
Delta S = S - S_0 = integral_((P_0))^((P)) (\u{0111}Q_R)/T
$

#note[
  对于理想气体，要计算熵变，对于等温、等压、等容过程分别有：
  $
  \u{0111}Q_T = p dif V, quad \u{0111}Q_p = C_P dif T, quad \u{0111}Q_V = C_V dif T
  $
]

熵的几个性质：
- 没错，熵同样是状态函数，只和状态有关。
- 熵是广延量，这是因为系统从热源吸收的热量 $\u{0111}Q_R$ 与系统的总质量成正比，这使得熵具有可加性。
- 作为状态函数，熵变仅与初末状态有关，与过程无关。

#colorbox(
  title: [熵增原理],
  color: "blue",
  radius: 5pt,
  width: auto
)[
  系统的熵在*绝热过程*中永不减少，可逆绝热过程中不变，不可逆绝热过程中增加。
  $
  Delta S gt.eq integral_1^2 (\u{0111}Q_R)/T
  $
]

==== 绝热过程的进行方向

熵增原理给出了绝热过程的进行方向。考虑等温过程来引入两个态函数，*自由能*和*吉布斯函数*。
- *自由能：*考虑等温过程（$T_1=T_2=T$），有熵增原理$
&Delta S = integral_1^2 (\u{0111} Q)/T = 1/T integral_1^2 \u{0111}Q = Q/T gt.eq 0\
arrow.double& T Delta S gt.eq Q = Delta U - W arrow.double Delta U - T Delta S lt.eq W \
arrow.double& (U_2 - U_1) - T (S_2 - S_1) lt.eq W
$定义自由能 $F equiv U - T S$，则有 $F_2 - F_1 lt.eq W$，在仅有压缩功（$\u{0111} W = -p dif V$）并考虑等温等压过程，则有 $Delta F lt.eq 0$。也就是说#highlight[*等温等压过程向自由能减小的方向进行。*]$
dif F = dif (U - T S) = - S dif T - p dif V 
$
- *吉布斯函数：*考虑等温等压过程（$T_1=T_2=T, p_1=p_2=p$）：$ 
&Delta F lt.eq W = W_1 - p Delta V arrow.double Delta F + p Delta V lt.eq W_1 \
arrow.double& (F_2 - F_1) + p (V_2 - V_1) lt.eq W_1
$定义吉布斯函数 $G equiv F + p V$ ，则有 $G_2 - G_1 lt.eq W_1$ ，如果不考虑非膨胀功，那么进一步有 $Delta G lt.eq 0$ ，#highlight[即等温等压过程向吉布斯函数减小的方向进行。]$
dif G = dif (F + p V) = - S dif T + V dif p
$
