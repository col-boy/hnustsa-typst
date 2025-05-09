// 参考文献设置
#let _set_reference(csl_style: "gb-t-7714-2015-numeric.csl", body) = {
  set bibliography(title: "参考文献", style: csl_style)

  show bibliography: it => {
    set heading(level: 1, numbering: none)
    // 参考文献两端对齐
    set par(justify: true, leading: 1.24em, first-line-indent: 2em)
    it
  } 

  body
}