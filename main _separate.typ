#import "template.typ": *

// 文章信息设置
#show: conf.with(
  title: "热力学与统计物理笔记整理",
  shortitle: "Note for Thermodynamics and Statistical Mechanics",
  author: "saYmd"
)

//----------------热力学部分----------------
= 热力学

#include "./contents/PartI/Chp01.typ"
#include "./contents/PartI/Chp02.typ"

//-----------------------------------------
#pagebreak()
//----------------统计力学部分----------------
= 统计力学

#include "./contents/PartII/PartII.typ"

#include "./contents/PartII/Chp05.typ"
#include "./contents/PartII/Chp06.typ"

== 统计系综理论

=== 经典统计系综
