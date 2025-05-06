#import "../pages/font.typ": *

// 图表样式设置

#let _set_figure(body) = {
  // 图表前缀
  show figure.where(kind: image): set figure(supplement: [图 ])

  show figure.where(kind: table): set figure(supplement: [表 ])

  show figure.where(kind: table): set figure.caption(position: top)

  // 图表的编号样式和题注字体及分隔符设置
  show figure.caption: set text(font: font_style.宋体, size: font_size.小四)
  set figure.caption(separator: " ")

  set math.equation(supplement: [公式 ])

  // 图表的编号设置

  body
}


