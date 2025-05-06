#import "font.typ": *
// 英文摘要

#let abstract_en_page(word_1, keywords:()) = {
  set heading(level: 1, numbering: none)
  show <_abstract_en_>:{
    align(center)[
      #text(weight: "bold", font: font_style.黑体, size: font_size.小三)[
        Abstract
      ]
    ]
  }
  [= Abstract <_abstract_en_>]

  text(font: font_style.宋体, size: font_size.小四)[
  #set par(justify: true, leading: 1.24em, first-line-indent: 2em)
  #word_1]

  v(1.25em)

  par(first-line-indent: 2em)[
    #text(weight: "bold", font: font_style.宋体, size: font_size.小四)[
    Key Words:
    ]
   #keywords.join("; ")
  ]
}