#import "../pages/font.typ"
#import "@preview/numbly:0.1.0": numbly

#let _set_enums(
  body,
) = {
  set enum(
    numbering: numbly(
      "{1:(1)}",
      "{1:(1).{2}}",
      "{3:1}",
      {}
      // "{1:(1)}.{2:2}",
    
    ),
    indent: 2em,
    full: true,
  )
  body
}

// #set enum(numbering: (..nums)) => {
//   nums = nums.pos()
//   if nums.len() == 1 {
//     return numbering("(1)", .. nums)
//   } else if nums.len() == 2 {
//     return numbering("1")
//   }

// }

// #let _set_enums(body) = {
//   set enum(numbering: (..nums) => {
//   nums = nums.pos()
//   if nums.len() == 1 {
//     return "Appendix " + numbering("A.", ..nums) 
//   } else if nums.len() == 2 {
//     return numbering("A.1.", ..nums)
//   } else {
//     return "Step " + numbering("1.", nums.last())
//   }
// })
//   body
// }

