#import "../../core/constants.typ": *

#let cover-background-geometries() = {
  place(
    center + horizon,
    dx: -12em,
    dy: -17.5%,
    line(
      length: 32em,
      angle: 14deg,
      stroke: (
        paint: colors.sea.lighten(60%).opacify(-75%),
        thickness: 1.2pt,
        cap: "round",
      ),
    ),
  )
  place(
    center + horizon,
    dx: -9em,
    dy: 12.5%,
    line(
      length: 28em,
      angle: -10deg,
      stroke: (
        paint: colors.sea.lighten(60%).opacify(-75%),
        thickness: 1.2pt,
        cap: "round",
      ),
    ),
  )
  place(
    center + horizon,
    dx: -2em,
    dy: -22.5%,
    line(
      length: 30em,
      angle: 7deg,
      stroke: (
        paint: colors.sea.lighten(60%).opacify(-75%),
        thickness: 1.2pt,
        cap: "round",
      ),
    ),
  )
  place(
    center + horizon,
    dx: 4em,
    dy: 7.5%,
    line(
      length: 27em,
      angle: 18deg,
      stroke: (
        paint: colors.sea.lighten(60%).opacify(-75%),
        thickness: 1.2pt,
        cap: "round",
      ),
    ),
  )
  place(
    center + horizon,
    dx: 55%,
    dy: -12.5%,
    line(
      length: 25em,
      angle: -20deg,
      stroke: (
        paint: colors.sea.lighten(60%).opacify(-75%),
        thickness: 4.2pt,
        cap: "round",
      ),
    ),
  )
  place(
    center + horizon,
    dx: 12em,
    dy: 20%,
    line(
      length: 23em,
      angle: 24deg,
      stroke: (
        paint: colors.sea.lighten(60%).opacify(-75%),
        thickness: 2pt,
        cap: "round",
      ),
    ),
  )
  place(
    center + horizon,
    dx: -6em,
    dy: 30%,
    line(
      length: 27em,
      angle: -4deg,
      stroke: (
        paint: colors.sea.lighten(60%).opacify(-75%),
        thickness: 3pt,
        cap: "round",
      ),
    ),
  )
  place(
    center + horizon,
    dx: 8em,
    dy: 37.5%,
    line(
      length: 26em,
      angle: 16deg,
      stroke: (
        paint: colors.sea.lighten(60%).opacify(-75%),
        thickness: 1.2pt,
        cap: "round",
      ),
    ),
  )

  place(
    center + horizon,
    dx: -11em,
    dy: -15%,
    circle(
      radius: 0.6em,
      fill: colors.sea.lighten(48%).opacify(-65%),
      stroke: colors.sea.lighten(36%).opacify(-65%) + 0.35pt,
    ),
  )
  place(
    center + horizon,
    dx: -8em,
    dy: 10%,
    circle(
      radius: 0.48em,
      fill: colors.sea.lighten(58%).opacify(-65%),
      stroke: colors.sea.lighten(36%).opacify(-65%) + 0.35pt,
    ),
  )
  place(
    center + horizon,
    dx: -4em,
    dy: -20%,
    circle(
      radius: 0.54em,
      fill: colors.sea.lighten(52%).opacify(-65%),
      stroke: colors.sea.lighten(36%).opacify(-65%) + 0.35pt,
    ),
  )
  place(
    center + horizon,
    dx: -1em,
    dy: 15%,
    circle(
      radius: 0.42em,
      fill: colors.sea.lighten(66%).opacify(-65%),
      stroke: colors.sea.lighten(36%).opacify(-65%) + 0.35pt,
    ),
  )
  place(
    center + horizon,
    dx: 3em,
    dy: -12.5%,
    circle(
      radius: 0.5em,
      fill: colors.sea.lighten(54%).opacify(-65%),
      stroke: colors.sea.lighten(36%).opacify(-65%) + 0.35pt,
    ),
  )
  place(
    center + horizon,
    dx: 7em,
    dy: 12.5%,
    circle(
      radius: 0.45em,
      fill: colors.sea.lighten(62%).opacify(-65%),
      stroke: colors.sea.lighten(36%).opacify(-65%) + 0.35pt,
    ),
  )
  place(
    center + horizon,
    dx: 11em,
    dy: -10%,
    circle(
      radius: 0.57em,
      fill: colors.sea.lighten(50%).opacify(-65%),
      stroke: colors.sea.lighten(36%).opacify(-65%) + 0.35pt,
    ),
  )
  place(
    center + horizon,
    dx: 15em,
    dy: 47.5%,
    circle(
      radius: 4em,
      fill: colors.sea.lighten(64%).opacify(-65%),
      stroke: colors.sea.lighten(36%).opacify(-65%) + 0.35pt,
    ),
  )
  place(
    center + horizon,
    dx: -3em,
    dy: 27.5%,
    circle(
      radius: 1.2em,
      fill: colors.sea.lighten(58%).opacify(-65%),
      stroke: colors.sea.lighten(36%).opacify(-65%) + 0.35pt,
    ),
  )
  place(
    center + horizon,
    dx: 6em,
    dy: 35%,
    circle(
      radius: 1em,
      fill: colors.sea.lighten(62%).opacify(-65%),
      stroke: colors.sea.lighten(36%).opacify(-65%) + 0.35pt,
    ),
  )

  place(
    center,
    dx: -6em,
    dy: 5%,
    rotate(18deg)[
      #polygon(
        (0em, -2.7em),
        (2.35em, 2.7em),
        (-2.35em, 2.7em),
        stroke: colors.sea.lighten(56%).opacify(-75%) + 0.85pt,
      )
    ],
  )
  place(
    center + horizon,
    dx: 5em,
    dy: -2.5%,
    rotate(-12deg)[
      #polygon(
        (0em, -2.3em),
        (2.01em, 2.3em),
        (-2.01em, 2.3em),
        stroke: colors.sea.lighten(56%).opacify(-75%) + 0.85pt,
      )
    ],
  )
  place(
    center + horizon,
    dx: 0em,
    dy: 7.5%,
    rotate(6deg)[
      #polygon(
        (0em, -3.1em),
        (2.68em, 3.1em),
        (-2.68em, 3.1em),
        stroke: colors.sea.lighten(56%).opacify(-75%) + 0.85pt,
      )
    ],
  )
  place(
    center + horizon,
    dx: 4em,
    dy: 32.5%,
    rotate(-8deg)[
      #polygon(
        (0em, -3.3em),
        (2.86em, 3.3em),
        (-2.86em, 3.3em),
        stroke: colors.sea.lighten(56%).opacify(-75%) + 0.85pt,
      )
    ],
  )
}

#let cover-footer-constellation() = {
  place(
    center,
    dy: -0.24em,
    rect(
      width: 9.4em,
      height: 0.72em,
      radius: 0.72em,
      fill: gradient.linear(
        angle: 0deg,
        colors.sea.lighten(72%),
        colors.sea.lighten(44%),
      ),
    ),
  )
  place(
    center,
    dy: 0.82em,
    rect(
      width: 5.8em,
      height: 0.28em,
      radius: 0.28em,
      fill: colors.sea.lighten(82%).opacify(-26%),
    ),
  )

  place(center, dx: -10.2em, dy: 1.36em,
    circle(
      radius: 0.48em,
      fill: colors.sea.lighten(64%),
      stroke: colors.sea.lighten(38%) + 0.3pt,
    ),
  )
  place(center, dx: -8.6em, dy: -0.94em,
    circle(
      radius: 0.32em,
      fill: colors.sea.lighten(78%),
      stroke: colors.sea.lighten(48%) + 0.22pt,
    ),
  )
  place(center, dx: -7.4em, dy: 0.68em,
    circle(
      radius: 0.42em,
      fill: colors.sea.lighten(56%),
      stroke: colors.sea.lighten(36%) + 0.28pt,
    ),
  )
  place(center, dx: -5.6em, dy: -0.52em,
    circle(
      radius: 0.3em,
      fill: colors.sea.lighten(74%),
      stroke: colors.sea.lighten(46%) + 0.18pt,
    ),
  )
  place(center, dx: -3.6em, dy: 1.12em,
    circle(
      radius: 0.38em,
      fill: colors.sea.lighten(60%),
      stroke: colors.sea.lighten(40%) + 0.22pt,
    ),
  )
  place(center, dx: -1em, dy: -0.86em,
    circle(
      radius: 0.28em,
      fill: colors.sea.lighten(70%),
      stroke: colors.sea.lighten(44%) + 0.2pt,
    ),
  )

  place(center, dx: 1.8em, dy: 0.92em,
    circle(
      radius: 0.34em,
      fill: colors.sea.lighten(58%),
      stroke: colors.sea.lighten(40%) + 0.24pt,
    ),
  )
  place(center, dx: 3.6em, dy: -0.66em,
    circle(
      radius: 0.3em,
      fill: colors.sea.lighten(75%),
      stroke: colors.sea.lighten(44%) + 0.18pt,
    ),
  )
  place(center, dx: 5.4em, dy: 1.24em,
    circle(
      radius: 0.44em,
      fill: colors.sea.lighten(54%),
      stroke: colors.sea.darken(6%) + 0.28pt,
    ),
  )
  place(center, dx: 7.2em, dy: -0.78em,
    circle(
      radius: 0.32em,
      fill: colors.sea.lighten(68%),
      stroke: colors.sea.lighten(42%) + 0.2pt,
    ),
  )
  place(center, dx: 9.6em, dy: 1.04em,
    circle(
      radius: 0.46em,
      fill: colors.sea.lighten(62%),
      stroke: colors.sea.lighten(38%) + 0.26pt,
    ),
  )
  place(center, dx: 11.2em, dy: -0.58em,
    circle(
      radius: 0.34em,
      fill: colors.sea.lighten(74%),
      stroke: colors.sea.lighten(44%) + 0.22pt,
    ),
  )
  place(center, dx: -11.6em, dy: -0.42em,
    circle(
      radius: 0.28em,
      fill: colors.sea.lighten(76%),
      stroke: colors.sea.lighten(46%) + 0.2pt,
    ),
  )
  place(center, dx: 11.8em, dy: 0.46em,
    circle(
      radius: 0.3em,
      fill: colors.sea.lighten(66%),
      stroke: colors.sea.lighten(42%) + 0.2pt,
    ),
  )
}

