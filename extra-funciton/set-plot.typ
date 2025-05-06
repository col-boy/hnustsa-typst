#import "@preview/lilaq:0.2.0" as lq
#import "../pages/font.typ": *
#import "@preview/suiji:0.3.0"
#import "@preview/cetz-plot:0.1.1": chart
#import "@preview/cetz:0.3.4"

/* 基础图形的配置 */

// 直线图 - line-plot
#let set_plot_(title, xlabel, ylabel,data_1, data_2, ..) = {
    lq.diagram(
      title: [#title],
      xlabel: [#xlabel],
      ylabel: [#ylabel],
      xaxis: (subticks: none),
      lq.plot(
      data_1,
      data_2,
      // label:(position: left, ),
    )
  )
}

// 带有数字坐标的条形图 - bar
#let set_bar_(title, xlabel, ylabel, data_1, data_2, ..) = {
    lq.diagram(
      title: [#title],
      xlabel: [#xlabel],
      ylabel: [#ylabel],
      xaxis: (subticks: none),

    lq.bar(
      data_1,
      data_2,
      ),

      // 数字坐标轴的配置
      ..data_1.zip(data_2).map(((x, y)) => {
        let align = if y > 10 {top} else {bottom}
        lq.place(x, y, pad(.2em)[#y], align: align)
      })
    )
}

// 组合图 - combination-graph
#let set_comgraph_(title, xlabel, ylabel, data_1, data_2, data_3,label_1, label_2, ..) = {
    lq.diagram(
      title: [#title],
      xlabel: [#xlabel],
      ylabel: [#ylabel],
      legend: (position: left + top),
      margin: (top: 10%),

      yaxis: (mirror : false),
      xaxis: (
        ticks: data_3.map(rotate.with(30deg, reflow: true)).enumerate(),
        subticks: none,
      ),

      // 右半轴内容 -- bar
      lq.yaxis(
        position: right,
        label: none,
        lq.bar(
          range(data_3.len()),
          data_1,
          fill: blue.lighten(40%),
          label: [#label_1]
        )
      ),

      // 左半轴内容 -- plot
      lq.plot(
        range(data_3.len()),
        data_2,
        label: [#label_2],
        color: orange,
        stroke: 1pt,
        mark-size: 6pt,
      )
    )
}

// 散点图 - scatter
#let set_scatter_(title, xlabel, ylabel, data_1, data_2, ..) = {
    lq.diagram(
        title: [#title],
        xlabel: [#xlabel],
        ylabel: [#ylabel],

      lq.scatter(
        data_1,
        data_2,
        // size: sizes.map(size => 200*size),
        map: color.map.magma,
      )
    )
}

// 饼图 - pie-chart -- 导入了另一个包 - cetz-plot
// 由于并非同一个包，因此这里少用参数
// 
#let set_pie_(data_1, ..) = {
    cetz.canvas({
      let colors = gradient.linear(red, blue, green, yellow)
      
      chart.piechart(
        data_1,
        value-key: 1,
        label-key: 0,
        radius: 2.5,
        slice-style: colors,
        inner-radius: 0,
        outset: 1,
        inner-label: (content: (value, label) => [#text(white, str(value))], radius: 120%),
        outer-label: (content: "%", radius: 120%),
      )
    }
  )
  
}
/* 基础图形的配置 */

// 模块化

#let set_plot_kinds(kinds: "line", 图名称: [title], x轴标签: [xlabel], y轴标签:  [ylabel], 数据_1: [], 数据_2: [], 数据_3: [], 标签_1: false, 标签_2: false) = {
   
    /*                      */
    // 设置画布内容的文字大小
    show lq.selector(lq.diagram): set text(font: font_style.宋体, size: font_size.小四)

    show: lq.set-grid(stroke: none)
    show: lq.set-tick(
      outset: 0pt,
      inset: 2pt, )
// #show: lq.set-label(dx: 2pt, dy: 10pt)

    /*                         */

  if kinds == "line" {
      数据_3 = none 
      set_plot_(图名称, x轴标签, y轴标签, 数据_1, 数据_2)
  } else if kinds == "bar" {
      set_bar_(图名称, x轴标签, y轴标签, 数据_1, 数据_2)
  }
    else if kinds == "cmg"{
      set_comgraph_(图名称, x轴标签, y轴标签, 数据_1, 数据_2, 数据_3, 标签_1, 标签_2)
  } else if kinds == "scatter"{
      数据_3 = none
      set_scatter_(图名称, x轴标签, y轴标签, 数据_1, 数据_2,)
  }
    else if kinds == "pie" {
      图名称  = none
      x轴标签 = none 
      y轴标签 = none 
      数据_2  = none
      数据_3  = none
      set_pie_(数据_1, )
    }
}


/* 测试的数据集 */

#let value_1 = range(1, 9)
#let value_2 = value_1.map(x => calc.pow(x ,2))
#let month = ("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug")

#let rng = suiji.gen-rng(33)
#let (rng, x) = suiji.uniform(rng, size: 20)
#let (rng, y) = suiji.uniform(rng, size: 20)


#let data = (
  ([Belgium],     24),
  ([Germany],     31),
  ([Greece],      18),
  ([Spain],       21),
  ([France],      23),
)

/* 测试的数据集 */



/*  使用案例  */

#figure(
  set_plot_kinds(
  kinds: "line",
  x轴标签: [asdasdasd],
  y轴标签: [asdasd],
  图名称: [asdasd],
  数据_1: value_1,
  数据_2: value_2,
),
  caption: [caption]
)<label>


// #set_plot_kinds(
//   kinds: "cmg",
//   x轴标签: [asdasd],
//   y轴标签: [asdasd],
//   图名称: [asdasda],
//   数据_1: value_1,
//   数据_2: value_2,
//   数据_3: month,
//   标签_1: [aasdasd],
//   标签_2: [sadasd]
// )

// #set_plot_kinds(
//   kinds: "scatter",
//   数据_1: value_1,
//   数据_2: value_2,
// )

// #set_plot_kinds(
//   kinds: "pie",
//   数据_1: data,
// )

// 标准化模板

// #set_plot_kinds(
//   kinds: "cmg",
//   x轴标签: [asdasd],
//   y轴标签: [asdasd],
//   图名称: [asdasda],
//   数据_1: value_1,
//   数据_2: value_2,
//   数据_3: month,
//   标签_1: [aasdasd],
//   标签_2: [sadasd]
// )

/*  使用案例  */
