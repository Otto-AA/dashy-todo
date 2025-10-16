#let rel-to-abs = (rel, size) => rel.length + rel.ratio * size

// must run within a context
#let get-right-page-margin() = {
  if "inside" in page.margin.keys() or "outside" in page.margin.keys() {
    if calc.even(here().page()) {
      if page.binding == auto or page.binding == left {
        page.margin.inside
      } else {
        page.margin.outside
      }
    } else { 
      if page.binding == auto or page.binding == left {
        page.margin.outside
      } else {
        page.margin.inside
      }
    }
  } else {
    page.margin.right
  }
}

// must run within a context
#let get-left-page-margin() = {
  if "inside" in page.margin.keys() or "outside" in page.margin.keys() {
    if calc.even(here().page()) {
      if page.binding == auto or page.binding == left {
        page.margin.outside
      } else {
        page.margin.inside
      }
    } else { 
      if page.binding == auto or page.binding == left {
        page.margin.inside
      } else {
        page.margin.outside
      }
    }
  } else {
    page.margin.left
  }
} 

#let calc-side-margin(side) = {
  // https://typst.app/docs/reference/layout/page/#parameters-margin
  let auto-margin = calc.min(page.width, page.height) * 2.5 / 21

  if page.margin == auto {
    auto-margin
  } else if type(page.margin) == relative {
    rel-to-abs(page.margin, page.width)
  } else {
    if side == left and get-left-page-margin() == auto or side == right and get-right-page-margin() == auto {
      auto-margin
    } else {
      if side == left {
        rel-to-abs(get-left-page-margin(), page.width)
      } else {
        rel-to-abs(get-right-page-margin(), page.width)
      }
    }
  }
}

// must run within a context
#let calculate-page-margin-box(side) = {
  assert(side in (left, right))

  let margin = calc-side-margin(side)

  if side == left {
    (
      "x": 0pt,
      "y": 0pt,
      "width": margin,
      "height": page.height,
    )
  } else {
    (
      "x": page.width - margin,
      "y": 0pt,
      "width": margin,
      "height": page.height,
    )
  }
}