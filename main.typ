#import "template.typ": *

// 文章信息设置
#show: conf.with(
  title: "热力学与统计物理笔记整理",
  shortitle: "Note for Thermodynamics and Statistical Mechanics",
  author: "saYmd"
)

//----------------热力学部分----------------
#include "./contents/PartI/PartI.typ"

#include "./contents/PartI/Chp01.typ"
#include "./contents/PartI/Chp02.typ"
#include "./contents/PartI/Chp03.typ"
#include "./contents/PartI/Chp04.typ"

//-----------------------------------------
#pagebreak()
//----------------统计力学部分----------------
#include "./contents/PartII/PartII.typ"

#include "./contents/PartII/Chp05.typ"
#include "./contents/PartII/Chp06.typ"
#include "./contents/PartII/Chp07.typ"
