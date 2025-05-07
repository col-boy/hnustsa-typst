#import "font.typ": *

// 页面尺寸
#let _set_paper_page_size(body) = {
  set page(
    paper: "a4",
    margin: (
      top: 2.8cm,
      bottom: 2.8cm,
      left: 2.8cm,
      right: 2.8cm,
    ),
    binding: left,
  )

  body
}

// 页面布局
#let _set_paper_page_par(body) = {
  set text(font: font_style.宋体, size: font_size.小四)
  set par(
    justify: true, 
    leading: 1.24em, 
    first-line-indent: 2em,
    spacing: 1.24em,
    )

  body
}


// 页眉设置
#let _set_paper_page_header(body) = {
  set page(
    header: {
      // 不确定
      set text(
        font: font_style.宋体, 
        size: 10pt, 
        baseline: 8pt, 
        spacing: 3pt
        )
      set align(center)
      // [海南科技职业大学毕业设计（论文）]
      // line(length: 100%, stroke: (thickness: 0.7pt))
    }
  )

  body
}


// 摘要部分页脚
#let _set_paper_page_footer_pre(body) = {
  set page(
    footer: context {
      set align(center)
      text(
        font: font_style.宋体, 
        size: 10pt, 
        baseline: -3pt, 
        if counter(page).display("I") == "I" {
          "I"
        } else {
          none // 目录部分均不要页码
        } 
      )
    }
  )
  body
}

// 正文部分页脚

#let _set_paper_page_footer_main(body) = {
  set page(
    footer: context {
      set align(center)

      grid(
        columns: (15pt, 20pt, 15pt),
        line(length: 100%, stroke: .7pt),
        context {
          text(font: font_style.宋体, size: 10pt, baseline: -3pt, counter(page).display("1"))
        },
        line(length: 100%, stroke: .7pt),
      )
    }
  )

  body
}












