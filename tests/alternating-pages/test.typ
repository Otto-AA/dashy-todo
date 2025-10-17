#import "/lib/todo.typ": todo

#let sample-content() = [
  #lorem(100)

  #todo[Todo without anchor text]

  #lorem(106)
  #todo(position: right)[right positional]
  #todo(position: left)[left positional]

  #lorem(19)
  #todo[left auto]

  #lorem(21)
  #todo[right auto]
]

#let sample-pages() = [
  #sample-content()
  #pagebreak()
  #sample-content()
  #pagebreak()
]

#set page(
  margin: (
    inside: 4cm,
    outside: 2cm,
    y: 2cm,
  ),
  numbering: "1",
  binding: left,
)
#set text(dir: auto)

= `binding: left` with `text.dir: auto`

#sample-pages()

#set page(binding: left)
#set text(dir: ltr)

= `binding: left` with `text.dir: ltr`

#sample-pages()

#set page(binding: left)
#set text(dir: rtl)

= `binding: left` with `text.dir: rtl`

#sample-pages()

#set page(binding: right)
#set text(dir: auto)

= `binding: right` with `text.dir: auto`

#sample-pages()

#set page(binding: right)
#set text(dir: ltr)

= `binding: right` with `text.dir: ltr`

#sample-pages()

#set page(binding: right)
#set text(dir: rtl)

= `binding: right` with `text.dir: rtl`

#sample-pages()


// NOTE: binding: auto with text.dir is not supported


#set page(binding: auto)
#set text(dir: ltr)

= `binding: auto` with `text.dir: ltr`

#sample-pages()


#set page(binding: auto)
#set text(dir: rtl)

= `binding: auto` with `text.dir: rtl`

#sample-pages()
