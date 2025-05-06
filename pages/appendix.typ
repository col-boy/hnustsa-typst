#import "font.typ": *
#import "../extra-funciton/set-indent.typ": *
#import "@preview/i-figured:0.2.4"

#let appendix(body) = {
  // 取消附录在目录中进行显示
  set heading(level: 1, numbering: none)
  show <_appendix>: {
  // 取消附录中的页码显示
  set heading(level: 1, numbering: none)
  set align(center)
  set text(weight: "bold", font: font_style.黑体, size: font_size.三号)

  "附  录"

  } + empty_par()

  [= 附录 <_appendix>]
  
  body
}