#import "../../core/constants.typ": *
#import "../../core/util.typ": *
#import "patterns.typ": *


#let cover-background-pattern() = {
  box(
    width: 100%,
    height: 100%,
    inset: 0pt,
  )[
    #cover-background-geometries()
  ]
}


#let cover(
  subject: none,
  title: none,
  subtitle: none,
  date: datetime.today(),
  info-rows: (),
) = {
  set align(center)
  set page(footer: none)
  set page(background: cover-background-pattern())
  block(
    width: 100%,
    radius: 1.4em,
    stroke: colors.sea.lighten(45%).opacify(-60%),
    inset: (x: 2.8em, y: 2.4em),
    fill: gradient.linear(
      angle: 90deg,
      colors.sea.lighten(82%),
      colors.sea.lighten(96%),
    ),
  )[
    #place(
      top + left,
      dx: -1.8em,
      dy: -1.6em,
      circle(
        radius: 2.6em,
        fill: colors.sea.lighten(60%).opacify(-40%),
      ),
    )
    #place(
      bottom + right,
      dx: 2em,
      dy: 1.6em,
      rect(
        width: 6.5em,
        height: 1.4em,
        radius: 0.9em,
        fill: colors.sea.lighten(52%).opacify(-45%),
      ),
    )
    #set align(left)
    #set text(font: sans-fonts)

    #if subject != none {
      text(
        size: zh("小初") * 0.85,
        weight: "medium",
        tracking: 4pt,
        fill: colors.sea.darken(10%),
        stroke: colors.sea.lighten(10%) + 0.5pt,
        subject,
      )
      v(0.3em)
    }

    #line(length: 4.5em, stroke: colors.sea.lighten(10%))
    #v(0.7em)

    #if title != none {
      text(
        size: zh("二号"),
        weight: "bold",
        fill: colors.sea.darken(28%),
        title,
      )
      v(0.6em)
    }

    #if subtitle != none {
      text(
        size: zh("三号"),
        weight: "medium",
        fill: colors.sea.darken(6%),
        subtitle,
      )
    }
  ]

  set text(
    font: serif-fonts,
    weight: "regular",
    size: zh("小三"),
    fill: colors.sea.darken(30%),
  )

  v(0.35fr)
  box(
    width: 100%,
    height: 3.8em,
  )[
    #cover-footer-constellation()
  ]
  v(0.35fr)

  block(
    radius: 1em,
    inset: 3.2em,
    stroke: colors.sea.lighten(50%).opacify(-55%),
    fill: colors.skyll,
  )[
    #set grid.cell(inset: 0.5em)
    #show grid.cell: it => {
      if calc.rem(it.x, 2) == 0 {
        set text(fill: colors.skyll)
        it
      } else {
        it
        v(-1.2em)
        line(length: 80%)
      }
    }
    #set grid(
      columns: (auto, 1fr, auto, 1fr),
      column-gutter: 0.2em,
      row-gutter: 0.2em,
      fill: (x, y) => {
        if calc.rem(x, 2) == 0 {
          colors.sea
        }
      },
    )
    #if info-rows.len() > 0 {
      grid(
        columns: (auto, 1fr),
        column-gutter: 1em,
        row-gutter: 0.2em,
        ..info-rows.flatten(),
      )
    }
  ]
  v(1fr)

  (
    [#date.year()],
    [年],
    [#date.month()],
    [月],
    [#date.day()],
    [日],
  ).join(h(0.35em))
  v(0.5em)

  pagebreak(weak: true)
}

#cover()

