#import "@preview/i-figured:0.2.4"
#import "../../core/constants.typ": *

// 学术化样式：公式、图表编号与引用
// 参考 BIT-Typst-Template 的实现

// 设置编号 (引用时需要使用标签)
// 注意：必须在 heading 设置完成后再调用
#let show-numbering(body) = {
  show heading: i-figured.reset-counters
  show figure: i-figured.show-figure.with(numbering: "1-1")
  show math.equation: i-figured.show-equation.with(numbering: "(1-1)")

  body
}

// 设置图表标题位置和样式
#let show-caption(body) = {
  show figure.where(kind: table): set figure.caption(position: top)
  show figure.caption: set text(size: 0.9em)
  set figure.caption(separator: h(0.5em))

  body
}

// 设置引用格式（图、表、式）
#let show-citation(body) = {
  show figure.where(kind: image): set figure(supplement: [图])
  show figure.where(kind: table): set figure(supplement: [表])
  set math.equation(supplement: [式])

  body
}


#let show-reference(body) = {
  set bibliography(style: "gb-7714-2005-numeric")
  body
}

// 综合应用所有学术化样式
#let show-academic(body) = {
  show: show-caption
  show: show-citation
  show: show-numbering
  show: show-reference
  body
}


