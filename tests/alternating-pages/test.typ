#import "/lib/todo.typ": todo

#set page(
  margin: (
    inside: 4cm,
    outside: 2cm,
    y: 2cm
  ),
  numbering: "1"
)

Typst template to test todos on alternating pages with different bindings.

#lorem(100)
#todo(position: right)[right positional]
#todo(position: left)[left positional]

#lorem(19)
#todo[left auto]

#lorem(21)
#todo[right auto]

#pagebreak()

#lorem(100)
#todo(position: right)[right positional]
#todo(position: left)[left positional]

#lorem(19)
#todo[left auto]

#lorem(21)
#todo[right auto]

#pagebreak()

#set page(
  margin: (
    inside: 4cm,
    outside: 2cm,
    y: 2cm
  ),
  binding: right
)

Right binding

#lorem(100)
#todo(position: right)[right positional]
#todo(position: left)[left positional]

#lorem(19)
#todo[left auto]

#lorem(21)
#todo[right auto]

#pagebreak()

#lorem(100)
#todo(position: right)[right positional]
#todo(position: left)[left positional]

#lorem(19)
#todo[left auto]

#lorem(21)
#todo[right auto]