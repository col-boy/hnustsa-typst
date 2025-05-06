#import "font.typ": * 

// 本科论文原创性说明

#let declaration_font(body) = [
  #set align(center)  
  #set text(font: font_style.黑体, font_size.三号)
  #strong(body)
]

#declaration_font([本科生毕业设计（论文）诚信声明])

\ 

#text(font: font_style.宋体, size: font_size.四号)[
  #set par(justify: true, leading: 1.24em, first-line-indent: 2em)
  本人郑重声明：所呈交的毕业设计（论文）是本人在导师的指导 下取得的成果，毕业设计（论文）写作严格遵循学术规范。对本设计 （论文）的研究做出重要贡献的个人和集体，均已在文中以明确方式 标明。本人对所写的内容负责，如有违规行为发生，自愿承担一切责任。 ]

\ 

// 需要实现两端对齐
#text(font: font_style.宋体, size: font_size.四号)[
  #grid(
    columns: (auto, auto),
    column-gutter: 8.5em,
    row-gutter: 1.24em,
    [毕业设计（论文）作者签名：],
    [日期：#h(15pt) 年 #h(9pt) 月 #h(9pt) 日],
  )
]

#v(6em)

#declaration_font([本科生毕业设计（论文）使用授权声明])

\
#text(font: font_style.宋体, size: font_size.四号)[
  #set par(justify: true, leading: 1.24em, first-line-indent: 2em)
  本人完全了解学校有关保留、使用毕业设计（论文）的规定，同 意海南科技职业大学保留并向有关部门或机构送交毕业设计（论文） 的书面版和电子版，允许毕业设计（论文）被查阅和借阅。本人授权 海南科技职业大学将本设计（论文）的全部或部分内容网上公开或编 入有关数据库进行检索，可以采用影印、缩印或扫描等方式保存和汇 编本设计（论文）。对于保密毕业设计（论文），按保密的有关规定和程序处理。 ]

\ 

#text(font: font_style.宋体, size: font_size.四号)[
  #grid(
  columns: (auto, auto),
  column-gutter: 8.5em,
  row-gutter: 1.24em,
  [毕业设计（论文）作者签名：],
  [指导教师签名],
  [日期：#h(15pt) 年 #h(9pt) 月 #h(9pt) 日],
  [日期：#h(15pt) 年 #h(9pt) 月 #h(9pt) 日]
  )
]



