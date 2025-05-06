// 文章相关的「缩进设置」；
#let indent() = {
  box(width: 2em)
}

#let indent_par(body) = {
  box(width: 1.8em)
}

#let empty_par() = {
  v(-1em)
  box()
}

#let _fix_indent(body) = {
  // 首行不缩进，手动加上 box 
  show figure: it => {
    it + empty_par()
  } 

  show math.equation.where(block: true): it => {
    it + empty_par()
  }

  // 修复二级段落空行不缩进问题（额外添加空行）
  show heading.where(level: 2): it => {
    empty_par() + it 
  }

  body
}


