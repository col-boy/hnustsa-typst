#import "@preview/lovelace:0.2.0":*
// 修复中文粗体无法正确显示问题
#import "@preview/cuti:0.3.0": show-cn-fakebold

// 图表生成所需的第三方库
#import "@preview/lilaq:0.2.0" as lq
#import "@preview/suiji:0.3.0"
#import "@preview/cetz-plot:0.1.1": chart
#import "@preview/cetz:0.3.4"


#import "pages/font.typ": *
#import "extra-funciton/set-heading.typ": *
#import "pages/pages_set.typ": *
#import "pages/covering.typ": *
#import "pages/abstract_zh.typ": *
#import "pages/abstract_en.typ": *

#import "pages/outline.typ": set_outline,
#import "extra-funciton/set-list_of_figure.typ": list_of_figure,
#import "extra-funciton/set-list_of_table.typ": list_of_table,

#import "extra-funciton/set-figure.typ": *
#import "pages/acknowledge.typ": *
#import "pages/covering.typ": paper_cover,
#import "pages/appendix.typ": appendix,

#import "pages/reference.typ": _set_reference
#import "extra-funciton/set-cite.typ": bib_cite,

#import "extra-funciton/three-academic-table.typ": tab_line_table, 
#import "extra-funciton/set-indent.typ": *
#import "extra-funciton/set-numbering.typ": *
#import "extra-funciton/set-plot.typ": set_plot_kinds,
#import "extra-funciton/set-enums.typ": _set_enums,



// 不同字体样式设置
#let 正文(body) = [
  #text(font: font_style.宋体, size: font_size.小四)[
  #set par(justify: true, leading: 1.24em, first-line-indent: 2em)
  #body ]
]


#let doc(
  change_logo_path: "" ,
  main_title: [本科生毕业设计（论文） #parbreak() 2025 届],
  title: "Typst 在本科论文中的运用研究",
  school: "xxx学院",
  cmajor: "xxx专业",
  class_name: "xxx班级",
  author: "张三",
  studentid: "xxxxx",
  csupervisor: "李四",
  date: "2025 年 5 月",
  abstract_zh: [],
  abstract_en: [],
  keywords_zh: [],
  keywords_en: [],
  body,
) = {

  // 全局性设置

  // 设置标题（需要放置在图表之前）
  show: _set_heading

  // 图表及公式的排版设置
  show: _set_figure

  // 图表公式的序号设置
  show: _set_numbering

  // 参考文献
  show: _set_reference.with(csl_style: "gb-t-7714-2015-numeric.csl")

  // 修复缩进 
  show: _fix_indent

  // 整体页面设置
  show: _set_paper_page_size

  // 修复中文粗体显示问题 
  show: show-cn-fakebold

  /* 封面与原创性声明部分设置 */
  // 封面设置
  paper_cover(change_logo_path: "", main_title, title, school, cmajor, class_name, author, studentid, csupervisor, date)

  counter(page).update(0)

  // 原创性声明 
  include "pages/declaration.typ"

  /* 目录与摘要设置  */

  // 整体页眉
  show: _set_paper_page_header.with()

  // 目录与摘要的页脚
  show: _set_paper_page_footer_pre

  // 整体段落与页面设置
  show: _set_paper_page_par

  /* 摘要部分 */
  abstract_zh_page(abstract_zh, keywords: keywords_zh)

  pagebreak()
  counter(page).update(1)

  abstract_en_page(abstract_en, keywords: keywords_en)

  pagebreak()

  // 目录部分
  set_outline()

  pagebreak()

  list_of_figure()

  pagebreak()

  list_of_table()
  
  /* 正文部分的内容 */

  // 正文页脚设置
  show: _set_paper_page_footer_main

  counter(page).update(1)

  // 编号设置

  show: _set_enums

  body
}










