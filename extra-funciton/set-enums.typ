#import "../pages/font.typ"
#import "@preview/numbly:0.1.0": numbly

#let _set_enums(
  body,
) = {
  set enum(
    numbering: numbly("({1})"),
    indent: 2em,
    full: true,
  )
  body
}
// #let enums(
//   body,
// ) = {
//   set enum(
//     numbering: numbly("({1})"),
//     indent: 2em,
//     full: true,
//   )
//   body
// }



// #show: set enum(
//   numbering: numbly("({1})"),
//   indent: 2em,
//   full: true
// )

// #enums
// + 

