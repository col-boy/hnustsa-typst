#import "font.typ": *

// 中文摘要

#let abstract_zh_page(word_1, keywords:()) = {
  set heading(level: 1, numbering: none)
  show <_abstract_zh_>: {
    align(center)[
      #text(weight: "bold", font: font_style.黑体, size: font_size.小三)[
        摘  要
      ]
    ]
  }
  [ = 摘要 <_abstract_zh_>]

  text(font: font_style.宋体, size: font_size.小四)[
  #set par(justify: true, leading: 1.24em, first-line-indent: 2em)
  #word_1]

  v(1.25em)

  par(first-line-indent: 2em, leading: 1.24em)[
    #text(weight: "bold", font: font_style.宋体, font_size.小四)[
      关键词：
      ]
    #keywords.join("；")
  ]
}