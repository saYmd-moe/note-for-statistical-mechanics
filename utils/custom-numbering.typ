// 只能排两个的 Part I 罗马数字
#let custom-numbering(..nums) = {
  numbering(
    (..nums) => {
      if nums.pos() == (1,) {
        [Part I]
      } else {
        [Part II]
      }
    },
    ..nums
  )
}