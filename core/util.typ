#import "@preview/pointless-size:0.1.2": *
#import "../core/constants.typ": *

// 通用工具函数
// 下划线样式
#let under-heavy-line(it, ..args) = {
  underline(
    text(it, ..args),
    stroke: colors.green + 0.5em,
    evade: false,
    background: true,
    offset: -0.5pt,
  )
}
// 创建渐变背景
#let gradient-background(colors, angle: 45deg) = {
  gradient.linear(
    angle: angle,
    colors,
  )
}
