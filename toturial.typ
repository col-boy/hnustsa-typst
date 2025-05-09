#import "template-main.typ": *

// 版本更新后部分属性不再使用 project.with
#show: doc.with(
  abstract_zh: [
   山不在高，有仙则名。水不在深，有龙则灵。斯是陋室，惟吾德馨。苔痕上阶绿，草色入帘青。谈笑有鸿儒，往来无白丁。可以调素琴，阅金经。无丝竹之乱耳，无案牍之劳形。南阳诸葛庐，西蜀子云亭。孔子云：何陋之有？
  ],
  abstract_en: [ 
  A mountain does not need to be high; it is famous if it has immortals. Water does not need to be deep; it is lively when there is a dragon. This is a humble abode, but my virtue is fragrant. The moss marks the steps up green, and the grass color seeps into the curtain blue. There are scholars in conversation and laughter, but no ordinary people in social interactions. One can play the plain zither and read the golden scriptures. There is no string or wind instruments to confuse the ear, and no desk paper work to strain the body. Nanyang Zhuge's Hut, Xishu Ziyun's Pavilion. Confucius said, "What is there to be ignorant of?"
  ],
  keywords_zh: ("关键词1", "关键词2", "关键词3"),
  keywords_en: ("keyword-1", "keyword-2", "keyword3"),
)

= 模板基本介绍

== 标题测试：

#stack(
  dir: ttb,
  spacing: 2em,
  ```typ
  #heading(level: 1, outlined: false, numbering: none)
  #heading(level: 2, outlined: false, numbering: none)
  #heading(level: 3, outlined: false, numbering: none)
  ```
)

#line(length: 100%)

#heading(level: 1, outlined: false, numbering: none)[一级标题]
#heading(level: 2, outlined: false, numbering: none)[二级标题]
#heading(level: 3, outlined: false, numbering: none)[三级标题]

#line(length: 100%)




#pagebreak()

== 表格的使用


#figure(
  tab_line_table(
    (
      ("Item", "2023 (Current Period)", "2022 (Previous Period)"),
      ("Operating Revenue (billion)", "2710", "2800"),
      ("Operating Profit (billion)", "130", "120"),
      ("Net Profit (billion)", "85", "82"),
      ("Total Assets (billion )", "2600", "2450"),
      ("Total Liabilities (billion)", "1400", "1350"),
      ("Earnings per Share (RMB)", "0.35", "0.33")
    )
  ),
  kind: table,
  caption: [H Company Annual Report Data]
)<table-1>
针对表格的引用需要以 `@`+`tbl`+`<标签名>`的格式引用，比如： @tbl:table-1 所示 ....

#figure(
  tab_line_table(
    (
      ("Item", "2023 (Current Period)", "2022 (Previous Period)"),
      ("Total Revenue (billion USD)", "96.8", "81.5"),
      ("Net Income (billion USD)", "7.0", "12.6"),
      ("Total Assets (billion USD)", "102.0", "82.3"),
      ("Net Income Attributable to Shareholders (billion USD)", "7.0", "12.6"),
      ("Net Cash Flow from Operating Activities (billion USD)", "13.9", "14.7"),
      ("Earnings per Share (USD)", "2.18", "3.62")
    )
  ),
  kind: table,
  caption: [B Company Annual Report Data]
)


== 图片引用

#figure(
   image("assets/pretty-dog.jpeg"), 
  //  supplement: [asdasd],
   caption:([示例图-1]),
 )<figure-1>

 

大小调整：

#figure(
   image("assets/pretty-dog.jpeg", width: 200pt, height: 100pt), 
   caption:([示例图-2]),
 )

对图片的引用：正如 @fig:figure-1 所示 ...

#pagebreak(weak: true)


== 图表的生成 

通过第三方库 `lilaq` 和 `` 进行图表的生成，此处对以上部分进行了函数封装，预定了部分图表样式，只需部分函数即可生成对应的图表类型，降低了图表生成的门槛；具体的使用方法请查看项目文档中的演示；



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

#stack(
  dir: ltr,
  spacing: 2em,
    set_plot_kinds(
    kinds: "line",
    x轴标签: [],
    y轴标签: [ylabel],
    图名称: [],
    数据_1: value_1,
    数据_2: value_2,
    ),
    set_plot_kinds(
      kinds: "bar",
      x轴标签: [],
      y轴标签: [asdasd],
      图名称: [asdasda],
      数据_1: value_1,
      数据_2: value_2,
    )
)



#stack(
  dir: ltr,
  spacing: 2em,
  set_plot_kinds(
    kinds: "cmg",
    x轴标签: [],
    y轴标签: [asdasd],
    图名称: [asdasda],
    数据_1: value_1,
    数据_2: value_2,
    数据_3: month,
    标签_1: [aasdasd],
    标签_2: [sadasd]
  ),
  set_plot_kinds(
    kinds: "scatter",
    x轴标签: [],
    y轴标签: [],
    数据_1: value_1,
    数据_2: value_2,
  )
)

#figure(
  set_plot_kinds(
  kinds: "pie",
  数据_1: data,
)
,
  caption: []
)<001>

上述生产图表也同样支持引用操作： 具体数据如 @fig:001 所示 .... 



== 参考文献的使用

单次参考文献引用：张伟2021中国股票市场波动性分析#bib_cite(<张伟2021中国股票市场波动性分析>)

多次参考文献的引用（文献编号需要连续）：smith and garcia2021blockchain #bib_cite(<smith2022deep>, <garcia2021blockchain>) 或 smith and garcia2021blockchain @smith2022deep@garcia2021blockchain

参考文献的标签名：需要从 `ref.bib` 文件中寻找；目前知网等知名文献平台均支持下载 `bib` 文献格式，下载后将其直接导入/粘贴到文件 `ref.bib`中在进行引用即可！


== 数学公式的演示

这里以“泰勒公式”为例：

$ f(x) = f(a) + (f'(a))/(1!)(x-a) + (f''2(a))/(2!)(x-a)^2 + #sym.dots.h 
(f^((n+1))(xi))/((n+1)!)(x-a)^(n+1) $<equation>

对泰勒公式进行引用：@eqt:equation 所示....




#pagebreak()

= Vscode 集成

== 快捷键的绑定


#pagebreak()

\ 

#box()

== 相关插件的助力

+ `HyperSnippet`: 插件配合数学公式的快速输入；
+ `Tinymist`: 插件的“代码补全、高亮”等特性使得 `Typst`的编写更加顺畅；
+ `Typst Sympy Calculator`: 自动进行科学计算，具体可参见 #link("https://github.com/OrangeX4/vscode-typst-sympy-calculator")[官方文档]

$ integral_x^2 + 3x^2 = 5x => s $

== 编号测试

+ 四级标题

目前该模板并不支持 「五级标题的使用」，但由于五级标题与正文的格式相同，因此建议直接进行符号输入即可，比如：
1）
2）
3）

#pagebreak()

#bibliography("ref.bib")

#pagebreak()

#acknowledgement()[值此论文完成之际，谨向所有关心和帮助过我的师长、同学致以诚挚的谢意。感谢xxx教授的悉心指导，他/她严谨的治学态度与渊博的学识使我受益匪浅。感谢各位任课老师的谆谆教诲，感谢同窗好友的互帮互助。特别要感谢我的父母，是他们的支持与鼓励让我能够专心求学。在此，衷心感谢所有帮助过我的人，愿以此文献给你们！]

#pagebreak()

#appendix[
  
  图表生成的数据代码：

```typ
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
```
]



