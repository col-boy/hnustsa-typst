#import "@preview/i-figured:0.2.4"

// 设置（编号、引用、标签））时候，必须在标题完成设置后，再进行调用（先标题后编号）；

#let _set_numbering(body) = {
  show heading: i-figured.reset-counters
  show figure: i-figured.show-figure.with(numbering: "1-1")
  show math.equation: i-figured.show-equation.with(numbering: "(1-1)")

  body
}









