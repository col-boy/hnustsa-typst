#import "template-main.typ": *

// 版本更新后部分属性不再使用 doc.with
#show: doc.with(
  abstract_zh: [
   摘要应能客观地反映论文的主要内容信息，具有独立性和自含性。摘要不是文章的引言、评论或总结。注意不要简单地照抄前言或结论。摘要不应有引言中出现的内容，也不要对论文内容作诠释和评论，不得简单重复题名中己有的信息。 摘要在语言上应当短小精悍，提纲挈领，言简意赅，重点突出。摘要中不宜使用公式、图表，不标注引用文献编号。中文摘要一般300~500字左右，英文摘要内容应与中文摘要相对应。#strong()[（注意两端对齐）]
  ],
  abstract_en: [ 
  A mountain does not need tko be high; it is famous if it has immortals. Water does not need to be deep; it is lively when there is a dragon. This is a humble abode, but my virtue is fragrant. The moss marks the steps up green, and the grass color seeps into the curtain blue. There are scholars in conversation and laughter, but no ordinary people in social interactions. One can play the plain zither and read the golden scriptures. There is no string or wind instruments to confuse the ear, and no desk paper work to strain the body. Nanyang Zhuge's Hut, Xishu Ziyun's Pavilion. Confucius said, "What is there to be ignorant of?"
  ],
  keywords_zh: ("威廉姆森", "交易费用", "公司治理"),
  keywords_en: ("keyword-1", "keyword-2", "keyword3"),
)



= 绪论

也可以称为引言，是毕业设计（论文）的主体开端，一般用来阐述毕业设计（论文）的背景及目的；国内外研究状况和相关领域中已有的成果；研究方法和研究内容等，也可以用以说明论文的整体结构。绪论不宜过长，字数一般不超过1000字。

标题：标题序号从大到小的顺序为：“一、”，“（一）”，“1.”，“（1）”，\ “1）”……或“1”，“1.1”，“1.1.1”，“1.1.1.1”……。

一级标题：三号黑体，居中，段前0.5行，段后0.5行，1.5倍行距

二级标题：小三号黑体，左缩进2字符，段前0.5行，段后0.5行，1.5倍行距

三级标题：四号黑体，左缩进2字符，段前0.5行，段后0.5行，1.5倍行距

四级、五级标题分别用（1）和1）表示，与正文格式同

正文：小四号宋体，行距1.5倍，段前0，段后0,首行缩进2字符，两端对齐，左、右侧无缩进

#heading(level: 1, outlined: false, numbering: none)[一级标题]
一级标题：三号黑体，居中，段前0.5行，段后0.5行，1.5倍行距。

#heading(level: 2, outlined: false, numbering: none)[二级标题]
二级标题：小三号黑体，段前0.5行，段后0.5行，左缩进2字符，1.5倍行距，标题结束不用标点符号。

正文：小四号宋体，行距1.5倍，段前0，段后0，首行缩进2字符，两端对齐，左、右侧无缩进。

#heading(level: 3, outlined: false, numbering: none)[三级标题]

三级标题：四号黑体，段前0.5行，段后0.5行，左缩进2字符，1.5倍行距标题结束不用标点符号。

正文：小四号宋体，行距1.5倍，段前0，段后0，首行缩进2字符，两端对
齐，左、右侧无缩进。


= 一级标题
一级标题：三号黑体，居中，段前0.5行，段后0.5行，1.5倍行距。

== 二级标题
二级标题：小三号黑体，段前0.5行，段后0.5行，左缩进2字符，1.5倍行距，标题结束不用标点符号。

正文：小四号宋体，行距1.5倍，段前0，段后0，首行缩进2字符，两端对齐，左、右侧无缩进。

=== 三级标题

三级标题：四号黑体，段前0.5行，段后0.5行，左缩进2字符，1.5倍行距标题结束不用标点符号。

正文：小四号宋体，行距1.5倍，段前0，段后0，首行缩进2字符，两端对
齐，左、右侧无缩进。



= 一级标题
一级标题：三号黑体，居中，段前0.5行，段后0.5行，1.5倍行距。

== 二级标题
二级标题：小三号黑体，段前0.5行，段后0.5行，左缩进2字符，1.5倍行距，标题结束不用标点符号。

正文：小四号宋体，行距1.5倍，段前0，段后0，首行缩进2字符，两端对齐，左、右侧无缩进。

公式：（必须用 word 公式编辑器编辑）

$ L_0 = sqrt(N_1N_2)/(2N^2M) $<equation>

xxxxx 可表示为：

$ L_0 = 1/2N^(1/2)_1N^(1/2)_2N^(-2)M^(-1) $ 

公式、表格、图示的编号均采用“章节-序号”编号，序号从1开始，如：X-1；表X-1；

公式的引用需要以 `@+eqt:+<label>` 的形式：正如 @eqt:equation 所示

\ 

表格：（采用三线表设计表格，表序和表题写在表格上方正中，表题末尾不加标点）

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


插图：（图序和图题放在图位下方居中处，图题末尾不加标点）

#figure(
   image("assets/pretty-dog.jpeg"), 
  //  supplement: [asdasd],
   caption:([xxx原理图]),
 )<figure-1>

大小调整：

#figure(
   image("assets/pretty-dog.jpeg", width: 200pt, height: 100pt), 
   caption:([xxx 流程图]),
 )

对图片的则需要以 `@`+`fig`+`<标签名>`的格式引用：正如 @fig:figure-1 所示 ...

=== 三级标题

三级标题：四号黑体，段前0.5行，段后0.5行，左缩进2字符，1.5倍行距标题结束不用标点符号。

正文：小四号宋体，行距1.5倍，段前0，段后0，首行缩进2字符，两端对
齐，左、右侧无缩进。

#pagebreak(weak: true)



= 一级标题
一级标题：三号黑体，居中，段前0.5行，段后0.5行，1.5倍行距。

== 二级标题
二级标题：小三号黑体，段前0.5行，段后0.5行，左缩进2字符，1.5倍行距，标题结束不用标点符号。

正文：小四号宋体，行距1.5倍，段前0，段后0，首行缩进2字符，两端对齐，左、右侧无缩进。

=== 三级标题

三级标题：四号黑体，段前0.5行，段后0.5行，左缩进2字符，1.5倍行距标题结束不用标点符号。

正文：小四号宋体，行距1.5倍，段前0，段后0，首行缩进2字符，两端对
齐，左、右侧无缩进。



= 一级标题
一级标题：三号黑体，居中，段前0.5行，段后0.5行，1.5倍行距。

== 二级标题
二级标题：小三号黑体，段前0.5行，段后0.5行，左缩进2字符，1.5倍行距，标题结束不用标点符号。

正文：小四号宋体，行距1.5倍，段前0，段后0，首行缩进2字符，两端对齐，左、右侧无缩进。

=== 三级标题

三级标题：四号黑体，段前0.5行，段后0.5行，左缩进2字符，1.5倍行距标题结束不用标点符号。

正文：小四号宋体，行距1.5倍，段前0，段后0，首行缩进2字符，两端对
齐，左、右侧无缩进。

#pagebreak()

= 结语

结语对整个研究工作进行归纳和综合而得出的总结，要求精炼、准确地阐述自己的创造性工作或新的见解及其意义和作用，还可进一步提出需要讨论的问题和建议。毕业设计（论文）的结语应单独作为一章编写。

正文：小四号宋体，行距 1.5倍，段前0，段后0，首行缩进2字符，两端对齐，左、右侧无缩进。

#pagebreak()



#bibliography("ref.bib")

#indent() 参考文献的著录均应符合国家有关标准（按《文后参考文献著录格式》 （GB7714—2015）执行）。以“参考文献”居中排作为标识；参考文献的序号左顶格， 并用数字加方括号表示，如［1］，［2］，⋯，以与正文中的指示序号格式一致。 每一参考文献条目的最后均以“.”结束。在毕业论文（设计说明书）文中引用文献时，应在引出处的右上方用标注阿拉伯数字编排的序号，以口方式标出，引文出处页码可以在上标引用方括号后小括号中表示页码范围，如！P25’，也可以在参考文献著录中标出。参考文献数量15篇以上。

参考文献需另起一页。参考文献标题同一级标题格式。参考文献内容，中文用小四宋体，数字和英文用 Times-NewRoman 字体，行距 1.5倍，段前0，段后0， 无缩进，两端对齐。文献中标点符号在英文状态下输入。各类文献格式参见GB7714-87《文后参考文献著录规则》。

测试对参考文献的测试使用 #bib_cite(<impagliazzo2001problems>, <papadimitriou1998combinatorial>)  


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




