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

== asdasd
asdasdasdasdasdasdas \ 


#figure(
  tab_line_table(
    (
      ("asdasdassda", "asdasdsd", "asdasdasd"),
      ("asdasd", "asdasdasd", "asdadasd",),
      ([asdasd],[0123123], [asdasd],)
    )
  ),
  kind: table,
  caption: [三线表示例]
)

三线表格的使用：

#figure(
  tab_line_table(
    (
      ("asdasdassda", "asdasdsd", "asdasdasd"),
      ("asdasd", "asdasdasd", "asdadasd",),
      ([asdasd],[0123123], [asdasd],)
    )
  ),
  kind: table,
  caption: [三线表示例]
)<table-1>

表格的引用：正如 @tbl:table-1 所示 ....

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

通过第三方库 `lilaq` 和 `` 进行图表的生成，此处对以上部分进行了函数封装，预定了部分图表样式，只需部分函数即可生成对应的图表类型，降低了图表生成的门槛；



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

测试对参考文献的测试使用 #bib_cite(<impagliazzo2001problems>, <papadimitriou1998combinatorial>)  


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

== 相关插件的助力

asd 

$1 plus 2 minus alpha times 3 $

$ integral_x^2 + 3x^2 = 5x => s
$



== 编号设置

===

+ 阿萨德
+ 是的
+ 是的







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



