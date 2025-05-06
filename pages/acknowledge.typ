#import "font.typ": *
#import "../extra-funciton/set-indent.typ": *

#let acknowledgement(body) = {
  set heading(level: 1, numbering: none)
  show <_thanks>:{
    // 取消致谢的目录展示部分
    set heading(level: 1, numbering: none)
    set align(center)
    set text(weight: "bold", font: font_style.黑体, size: font_size.三号)

    "致  谢"
  } + empty_par()

  [= 致谢 <_thanks>]
  par(leading: 1.24em, first-line-indent: 2em)[
    #body
  ]

} 



