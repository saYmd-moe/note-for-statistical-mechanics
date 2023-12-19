#import "template.typ": conf

// 文章信息设置
#show: conf.with(
  title: "热力学与统计物理",
  shortitle: "Statistical Mechanics",
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
#h(2em)热力学中会把物体看作连续介质，只需要少数几个宏观变量就可以表示出宏观平衡态，这些宏观变量被称为*#text(blue)[状态变量]*。可以归纳为以下几种状态变量：
- *几何变量*：$V, A, L$
- *力学变量*：$p, sigma, arrow(cal(F))$
- *电磁变量*：$arrow(cal(E)), arrow(cal(P)), arrow(cal(H)), arrow(cal(M))$
- *化学变量*：组元的摩尔数

#h(2em)除了这四类状态变量，还有热力学中特有的*#text(blue)[态函数]*，如温度、内能、焓、自由能、吉布斯函数等，这些态函数完全由上述状态变量确定。对于各部分性质完全相同的系统（*均匀系*），其状态变量和态函数可以分为与系统总质量成正比的*广延量*，包括摩尔数、体积、内能、熵等；与系统总质量无关的*强度量*，包括密度、温度、压强、内能密度、熵密度等。#highlight(fill:rgb("39c5bb"),[广延量具有可加性，强度量不可加，并具有局域的性质。])

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

#h(2em)通过物态方程 @eqt:eq-of-stat 我们可以定义一些物理量：
+ *膨胀系数* $alpha$，表示压强不变的条件下体积随温度的相对变化率$ alpha equiv 1/V ((diff V)/(diff T))_p $
+ *压强系数* $beta$，表示体积不变的条件下压强随体积的相对变化率$ beta equiv 1/p ((diff p)/(diff V))_V $
+ *等温压缩系数* $kappa_T$，表示温度不变的条件下体积随压强的相对变化率$ kappa_T equiv -1/V ((diff V)/(diff p))_T $

#h(2em)两种常用物态方程：
- *理想气体状态方程*，假设分子间无相互作用：$ p V= N R T $
- *范德瓦尔斯气体状态方程*，考虑了分子间相互作用引起的修正：$ (p+ (N^2 a)/(V^2))(V-N b)=N R T $其中$N^2 a\/V^2$是对分子间吸引力的修正，$N b$则是对分子间排斥力的修正。 //TODO: 通过统计物理方法计算 a 和 b



#pagebreak()
//----------------统计力学部分----------------

