// 文献引用函数
#let bib_cite(..names) = {
  for name in names.pos() {
    cite(name)
  }
}



