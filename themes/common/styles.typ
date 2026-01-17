#import "../../core/constants.typ": *

#import "@preview/pintorita:0.1.4"



// 标题样式
#let _heading-style(body) = {
  show heading: set text(
    fill: colors.sea,
    weight: "bold",
    style: "normal",
    font: sans-fonts,
  )
  let colored-numbering = (..args) => {
    let level = args.pos().len()
    if level <= 3 {
      box(
        fill: colors.sapphire.lighten((level - 1) * 15%),
        baseline: 0.5em,
        inset: (
          x: 0.3em,
          y: 0.5em,
        ),
      )[
        #set text(fill: white)
        #numbering("1.1", ..args.pos())
      ]
      h(0.2em)
      box(
        fill: colors.sea.lighten(level * 20%),
        inset: 0.2em,
      )
      h(0.1em)
    } else {
      set text(
        fill: colors.sapphire,
        font: serif-fonts,
        size: 1.2em,
      )
      numbering("1.1", ..args.pos())
    }
  }
  let numbering-func = (..args) => {
    context if show-heading-numbering.get() {
      return numbering("1.", ..args.pos())
    } else {
      return colored-numbering(..args)
    }
  }
  set heading(numbering: numbering-func)
  show heading.where(
    level: 1,
  ): it => {
    set text(size: zh("小二"))
    it
    v(-0.8em)
    line(
      stroke: colors.sea + 3pt,
      length: 100%,
    )
    v(0.5em)
  }
  show heading.where(
    level: 2,
  ): it => {
    set text(size: zh("三号"))
    it
    v(-0.8em)
    line(
      stroke: colors.sapphire + 2pt,
      length: 100%,
    )
    v(0.5em)
  }
  show heading.where(
    level: 3,
  ): it => {
    set text(size: zh("小三"))
    it
    v(-1em)
    line(
      stroke: colors.sapphire.lighten(50%) + 1pt,
      length: 100%,
    )
    v(0.5em)
  }
  show heading.where(
    level: 4,
  ): set text(
    size: zh("四号"),
  )
  show heading.where(
    level: 5,
  ): set text(
    size: zh("小四"),
  )
  show heading.where(
    level: 6,
  ): set text(
    size: zh("五号"),
  )
  body
}


#let _raw-style(body) = {
  show raw: set text(font: code-fonts)
  show raw.where(block: false): box.with(
    fill: colors.skyll,
    inset: 2pt,
    radius: 2pt,
    baseline: 3pt,
  )
  show raw.where(block: true): block.with(
    fill: colors.skyll,
    inset: 0.5em,
    radius: 0.5em,
    width: 100%,
  )
  show raw.where(
    lang: "pintora",
    block: true,
  ): block.with(
    width: auto,
  )


  show raw.where(lang: "pintora"): it => {
    set text(font: serif-fonts)
    // 检查是否有自定义 factor 属性
    let lines = it.text.split("\n")
    let factor = 0.7 // 默认缩放因子
    let caption = none
    for i in range(3) {
      if lines.at(0).starts-with("factor:") {
        let options = lines.at(0).split(":")
        factor = float(options.at(1).trim())
        lines = lines.slice(1) // 移除第一行
      }
      if lines.at(0).starts-with("caption:") {
        let options = lines.at(0).split(":")
        caption = options.at(1).trim()
        lines = lines.slice(1) // 移除第一行
      }
    }

    figure(
      ..if caption != none { (caption: caption) },
      pintorita.render(lines.join("\n"), factor: factor),
    )
  }
  body
}

#let _table-style(body) = {
  // Headings
  show table.cell: it => {
    if it.y == 0 {
      set text(fill: white, weight: "bold")
      it
    } else { it }
  }

  set table(
    stroke: colors.sapphire + 1pt,
    align: center,
    fill: (x, y) => if y == 0 { colors.sea } else { white },
  )
  body
}

#let _figure-style(body) = {
  show figure: it => {
    block(
      fill: colors.skyll,
      inset: 0.5em,
      stroke: colors.sapphire + 1pt,
      radius: 0.5em,
      it,
    )
  }
  show figure: set block(breakable: true)
  body
}
