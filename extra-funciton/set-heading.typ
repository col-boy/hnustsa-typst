#import "../pages/font.typ": *

#let _set_heading(body) = {
  set heading(
    numbering: "1.1.1.1",
    supplement: [节],

  )

  show heading: it => {
    if it != none {
    // par(first-line-indent: 2em)
    // h(0.5em) 
    if it.has("numbering") and it.numbering != none {
      numbering(it.numbering, ..counter(heading).at(it.location()))
    [ ]
    }
    // 标题后一个空格
    h(0.25em) + it.body
    } else {
      { }
    }
  }

  show heading.where(level: 1): it => {
    set align(center)
    set text(weight: "bold", font: font_style.黑体, size: font_size.三号)
    set block(spacing: 1.5em, )
    v(6pt) 
    it
    v(6pt) 
  }

  show heading.where(level: 2): it => {
    set text(weight: "bold", font: font_style.黑体, size: font_size.小三)
    set block(spacing: 1.5em)
    set par(first-line-indent: 2em)
    v(6pt) // 段前 0.5 行
    h(-0.4em) + it // 修复部分二级标题与正文不对齐问题
    v(6pt) // 段后 0.5 行
    
  }

  show heading.where(level: 3): it => {
    set text(weight: "bold", font: font_style.黑体, size: font_size.四号)
    set block(spacing: 1.5em)
    v(6pt) 
    // 修正三级标题不对齐问题 -- 由于数字样式导致
    h(-0.2em) + it
    v(6pt) 
  }
  body
}


s