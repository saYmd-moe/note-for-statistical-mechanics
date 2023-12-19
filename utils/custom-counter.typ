#import "./custom-numbering.typ": custom-numbering


#let heading1 = counter(heading.where(level:1))
#let heading2 = counter(heading.where(level:2))

// 一个自定义的计数器
#let custom-counter(it) = {
  if it.level == 1 {
    heading1.step()
    heading1.display(custom-numbering)
  }
  if it.level == 2 {
    heading2.step()
    heading2.display("第一章 ")
  }
  if it.level == 3 {
    heading2.step(level: 2)
    heading2.display("1.1 ")
  }
}