#import "font.typ": *

#let set_outline(indent: false) = {
  align(center)[
    #text(font: font_style.黑体, size: font_size.三号, "目 录")
  ]
  // 目路章节标题加粗问题待解决
  set text(font: font_style.宋体, size: font_size.小四, )

  // 目录的首行缩进效果
  // set par(leading: 1.24em, first-line-indent: 0em,)
  set par(leading: 1.24em, first-line-indent: 0em)
  
  context {
    let loc = here()
    let elements = query(heading.where(outlined: true))
    for el in elements {
      // 目录中不能出现四级以上的标题
      if el.level > 4 {
        continue
      }  else {
        // 需要重新整合 --> 北京大学 chinese-outline -- 临时凑合方法
         h(2em * (el.level - 1 ))
      }
      

      // 四级标题以前的目录样式设置
      let before_toc = query(heading.where(outlined: true).before(loc)).find((one) => {one.body == el.body}) != none
    
      // 获取目录对应的页码信息
      let page_num = if before_toc {
        numbering("I", counter(page).at(el.location()).first())
      }
      else {
        counter(page).at(el.location()).first()
      }

      link(el.location())[#{
        // 确保目录前序没有编号 -- acknoledgement has no numbering
        let chapt_num = if el.numbering != none {
          numbering(el.numbering, ..counter(heading).at(el.location()))
        } else {none}

        if el.level == 1 {
          set text(weight: "bold")
          if chapt_num == none {} else {
            chapt_num
            "  "
          }
          el.body
        } else {
          chapt_num
          " "
          el.body
        }
      }]

      // 填充目录的显示内容
      box(width: 1fr, h(0.5em) + box(width: 1fr, repeat[.]) + h(0.5em))
      [#page_num]
      linebreak()

    }
  }
}

