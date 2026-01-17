#import "@preview/pointless-size:0.1.2": *

// 字体常量
#let sans-fonts = (
  "Libertinus Sans",
  "Noto Sans CJK SC",
  "Noto Sans SC",
  "Source Han Sans SC",
)

#let serif-fonts = (
  "Libertinus Serif",
  "Noto Serif CJK SC",
  "Noto Serif SC",
  "Source Han Serif SC",
)

#let code-fonts = (
  "Maple Mono",
  "Fira Code",
  "JetBrains Mono",
  "Monaco",
  "Cascadia Code",
  "Consolas",
  "DejaVu Sans Mono",
  "Noto Sans Mono",
)

// 颜色常量
#let colors = (
  sea: rgb("#3b60a0"),
  sapphire: rgb("#007bff"),
  sky: rgb("#bdd0f1"),
  skyl: rgb("#eff3ff"),
  skyll: rgb("#f4f9ff"),
  white: rgb("#f5f5f5"),
  black: rgb("#000000"),
  green: green.lighten(80%),
  purple: purple.lighten(80%),
)

// 状态常量
#let show-heading-numbering = state("show-heading-numbering", false)
