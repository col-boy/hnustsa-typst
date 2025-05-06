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
    columns: (80pt, 250pt),
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





// #let cauthor = [无忆]
// #let studentid = [2021120140009]
// #let school = [会计学院]
// #let cmajor = [大数据与财务管理]
// #let csupervisor = [001]
// #let class_name = [21级财务管理本科1班]
// #let date = [2025年 5 月 1 日]

// #let fieldname(name) = [
//     #set align(right + top)
//     #set text(font: font_style.宋体, font_size.三号)
//     #strong(name)
//   ]

// #let fieldvalue(body) = [
//   #set align(center + horizon)
//   #set text(font: font_style.仿宋, font_size.三号)
//   #grid(
//     rows: (auto, auto),
//     row-gutter: 0.2em,
//     [#body],
//     line(length: 100%)
//   )
// ]

// #let fieldname_2(name_2) = [
//     // #set align(right + top)
//     #set text(font: font_style.黑体, font_size.小二)
//     #strong(name_2)
//   ]

// #place(
//   top,
//   float: true,
//   dx: -0.3cm,
//   image("school-logo.png", width: 100%, ),
  
// )

// #v(40pt)

// #let name_1 =  [本科生毕业设计（论文） #parbreak() (2025 届)]
// #align(center + top)[
//   #set text(font: font_style.黑体, font_size.一号)
//   #strong(name_1)
//   ]

// #v(40pt)


// #grid(
//   align: center,
//   columns: (80pt, 250pt),
//   row-gutter: 2em,
//   fieldname_2(text("题") + h(4pt) +  text("目：")),
//   fieldname_2(text("Typst 在本科论文中的设计研究")),  
// )

// #v(40pt)

// #grid(
//   columns: (100pt, 280pt),
//   row-gutter:2em,
//   fieldname(text("学") + h(2em) + text("院：")),
//   fieldvalue(school),
//   fieldname(text("专") + h(2em) + text("业：")),
//   fieldvalue(cmajor),
//   fieldname(text("班") + h(2em) + text("级：")),
//   fieldvalue(class_name),
//   fieldname(text("姓") + h(2em) + text("名：")),
//   fieldvalue(cauthor),
//   fieldname(text("学") + h(2em) + text("号：")),
//   fieldvalue(studentid),
//   fieldname(text("指导老师：",)),
//   fieldvalue(csupervisor),
//   fieldname(text("完成时间：",)),
//   fieldvalue(date),
// )


// #let paper_cover = (author, studentid, school, cmajor, csupervisor, 
// class_name, date ) = {
// }
