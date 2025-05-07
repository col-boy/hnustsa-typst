#import "font.typ": *

// 封面设置

#let paper_cover(change_logo_path: "", main_title, title, school, cmajor, class_name, author, studentid,  csupervisor,  date) = {
  [
  #let fieldname(name) = [
    #set align(center + top)
    #set text(font: font_style.宋体, font_size.三号)
    #text(name)
  ]
  
  #let fieldvalue(body) = [
    #set align(center + horizon)
    #set text(font: font_style.宋体, font_size.三号)
    #grid(
      rows: (auto, auto),
      row-gutter: 0.4em,
      [#body],
      line(length: 120%,),
    )
  ]

  #let paper-title(name) = [
  #set text(font: font_style.黑体, size: font_size.小二)
  #strong(name)
  ]

  #let logo_path = {
    if (change_logo_path != none) and (change_logo_path != "") {
      change_logo_path
    } else {
      "../assets/school-logo.png"
    } 
  }

  #place(
  top,
  float: true,
  dx: -0.3cm,
  image(logo_path, width: 100%),
  )

  #v(40pt)
    
    #align(center + top)[
    #set text(font: font_style.黑体, size: font_size.一号)
    #strong(main_title)
  ]


  #v(40pt)
  
  #grid(
    align: center,
    columns: (120pt, 250pt),
    row-gutter: 2em,
    paper-title(text("题" + h(4pt) + text("目："))),
    paper-title(text(title))
  )

  #v(40pt)

  #grid(
    columns: (130pt, 210pt),
    row-gutter: 2em,
    fieldname(text("学") + h(2em) + text("院：")),
    fieldvalue(school),
    fieldname(text("专") + h(2em) + text("业：")),
    fieldvalue(cmajor),
    fieldname(text("班") + h(2em) + text("级：")),
    fieldvalue(class_name),
    fieldname(text("姓") + h(2em) + text("名：")),
    fieldvalue(author),
    fieldname(text("学") + h(2em) + text("号：")),
    fieldvalue(studentid),
    fieldname(text("指导老师：",)),
    fieldvalue(csupervisor),
    fieldname(text("完成时间：",)),
    fieldvalue(date),
  ) 
  ]
  pagebreak()
}


