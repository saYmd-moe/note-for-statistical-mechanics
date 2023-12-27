#import "template.typ": *

// 文章信息设置
#show: conf.with(
  title: "热力学与统计物理笔记整理",
  shortitle: "Note for Thermodynamics and Statistical Mechanics",
  author: "saYmd"
)



//----------------热力学部分----------------
= 热力学

//-----------------------------------------
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

==== 平衡判据

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

== 均匀系的平衡关系

=== Maxwell 关系

通过热力学基本微分方程 $dif U = T dif S - p dif V$ 二阶微商可换序的性质，我们可以得到一系列Maxwell关系式：$
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
    [*微分方程*], [*变量*],[*Maxwell 关系*],
    [$dif U = T d S - p dif V$], [$(S,V)$],[$((diff T)/(diff V))_S=-((diff p)/(diff S))_V$],
    [$dif H = T dif S + V dif p$], [$(S,p)$],[$((diff T)/(diff p))_S=((diff V)/(diff S))_p$],
    [$dif F = -S dif T - p dif V$], [$(T,V)$],[$((diff S)/(diff V))_T=((diff p)/(diff T))_V$],
    [$dif G = -S dif T + V dif p$], [$(T,p)$],[$((diff S)/(diff p))_T=-((diff V)/(diff T))_p$]
  )
)
可以通过Jacobi行列式记忆这些关系式：$
(diff(T,S))/(diff(x,y)) = (diff(p,V))/(diff(x,y))
$分别取$(x,y)$为$(V,S),(p,S),(T,V),(T,p)$即可得到上面的四个Maxwell关系式。

=== Maxwell关系的应用

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

=== 特性函数和Joule-Thomson效应

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
  title: [Joule-Thomson效应],
  color: "blue",
  radius: 5pt,
  width: auto
)[
  Joule-Thomson效应是指节流过程中温度随压强会发生变化的现象。有 Joule-Thomson系数定义为：$
  mu equiv ((diff T)/(diff p))_H = V/C_p (T alpha -1)
  $节流过程是一个不可逆的等焓过程，当 $mu gt 0$ 时，节流过程中温度降低，称为致冷区；当 $mu lt 0$ 时，节流过程中温度升高，称为致温区；当 $mu eq 0$ 时，节流过程中温度不变，称为反转曲线。
]



//----------------统计力学部分----------------
#pagebreak()
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
    #[Femi子(_Fermi-Dirac_分布) 自旋是 $hbar$ 的半整数倍，如电子($s=1/2$)、质子($s=1/2$)]
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
macron(a)_lambda = g_lambda/(e^(-alpha - beta epsilon_lambda) + eta), quad 
eta = cases(
  plus 1\, quad &#[_Femi-Dirac_分布],
  0\, &#[_Maxwell-Boltzmann_分布],
  minus 1\, &#[_Bose-Einstein_分布]
)
$最可几分布法（最概然分布法）是一种使用极大值代替平均值的方法，上述各个分布 $tilde(a)_lambda$ 都是使系统量子态数 $W({a_lambda})$ 取极大值的分布，该分布可以代表微观的统计平均，进而反应系统的宏观状态。

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
  display(S = N k (ln Z - 1/beta diff/(diff beta) ln Z) + S_0)
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
S = N k (ln Z - beta diff/(diff beta) ln Z)= N k ln W_(#text[_M.B._])
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

==== _Femi-Dirac_分布

对于 _Femi-Dirac_ 分布，系统量子态数：$
W_(#text[_F.D._])({a_lambda}) = product_lambda C_(g_lambda)^a_lambda = product_lambda (g_lambda!)/(a_lambda ! (g_lambda -a_lambda)!)\
arrow.double ln W_(#text[_F.D._]) approx sum_lambda g_lambda ln g_lambda - sum_lambda a_lambda ln a_lambda - sum_lambda (g_lambda - a_lambda) ln (g_lambda - a_lambda) \
$同样令$delta ln W_(#text[_F.D._]) = 0$，可以得到一组约束方程：$
cases(
  display(delta ln W_(#text[_F.D._]) = sum_lambda ln ((g_lambda - a_lambda)/a_lambda) delta a_lambda) \
  display(delta N = sum_lambda delta a_lambda) = 0\
  display(delta E = sum_lambda epsilon_lambda delta a_lambda) = 0
)
$得到_Femi-Dirac_分布：$
tilde(a)_(lambda;#text[_F.D._])=g_lambda/(e^(alpha+beta epsilon_lambda) + 1)
$

==== 巨配分函数与热力学量

统一引入理想_Bose_气体和理想_Femi_气体服从的平均分布：$
macron(a)_lambda = g_lambda/(e^(alpha + beta epsilon_lambda) plus.minus 1), quad cases(
  display(- quad #[_Bose-Einstein_分布]),
  display(+ quad #[_Femi-Dirac_分布])
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

对于_Bose-Einstein_分布和_Femi-Dirac_分布有：$
macron(a)_lambda = g_lambda/(e^(alpha + beta epsilon_lambda) plus.minus 1), quad cases(
  display(- quad #[_Bose-Einstein_分布]),
  display(+ quad #[_Femi-Dirac_分布])
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

==== 量子理论

===== _Plank_的波动观点

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

===== _Bose_的粒子观点(光子气)

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

=== 理想气体

