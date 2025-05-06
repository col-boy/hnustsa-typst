#import "../pages/font.typ": *
#import "@preview/i-figured:0.2.4": outline,

#let list_of_table(info:(:)) = {
  
  align(center)[
    #text(font: font_style.黑体, size: font_size.三号)[
      表目录
    ]
  ]

  v(10pt)

  // 结合 i-figure 第三方包的 outline -- 后续仍需要更改；
  // 使用原因：图表的题注使用的是 i-figure 的标题，单独的 outline 无法有效显示目录前缀内容
  context {
    outline(
    title: none,
    target-kind: table,
    )
  }

}


