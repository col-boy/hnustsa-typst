// 三线学术表格的创建
#let tab_header(content) = {
  set align(center)
  rect(
    width: 100%,
    stroke: (bottom: 1pt),
    [#content]
  )
}

#let tab_cell(content) = {
  set align(center)
  rect(
    width: 100%,
    stroke: none,
    [#content]
  )
}

#let tab_row(r) = {
  (..r.map(tab_cell).flatten())
}

#let tab_line_table(values) = {
  rect(
    stroke: (bottom: 1pt, top: 1pt),
    inset: 0pt,
    outset: 0pt,
    grid(
      columns: (auto),
      rows: (auto),

      // table title
      grid(
        columns: values.at(0).len(),
        ..values.at(0).map(tab_header).flatten()
      ),

      grid(
        columns: values.at(0).len(),
        ..values.slice(1).map(tab_row).flatten()
      ),
    )
  )
}



