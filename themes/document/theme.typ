#import "@preview/pointless-size:0.1.2": *
#import "cover.typ": *
#import "../../core/constants.typ": *
#import "../common/styles.typ": *
#import "../common/academic.typ": *
#import "@preview/itemize:0.2.0" as el

#let theme(body) = {
  // Page Configuration
  set page(
    paper: "a4",
    columns: 1,
    margin: (x: 2.5cm, y: 2.5cm),
    numbering: "1",
  )

  show: _raw-style

  set par(
    justify: true,
    leading: 1em,
    spacing: 2em,
  )

  set text(
    font: serif-fonts,
    lang: "zh",
    size: zh("小四"),
    weight: "regular",
    style: "normal",
  )

  show: _heading-style
  show outline: it => {
    show-heading-numbering.update(true)
    set text(fill: colors.sea, weight: 600)
    it
    show-heading-numbering.update(false)
  }

  // Links
  show link: underline
  show link: it => {
    set text(fill: colors.sea)
    it
  }

  // Quote / Terms
  show ">|": it => {
    box(baseline: 1.34mm, rect(width: 0.9mm, height: 4.9mm, fill: colors.sea))
    h(2.3mm)
  }

  show: _raw-style
  show: _figure-style
  show: _table-style
  show grid: set par(spacing: 1em)

  show strong: set text(fill: colors.sea)
  show: el.default-enum-list

  // 应用学术化样式（公式、图表编号与引用）
  show: show-academic

  body
}
