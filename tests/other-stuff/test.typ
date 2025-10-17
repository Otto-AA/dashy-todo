#import "/lib/todo.typ": todo

=== Should not include todo in line numbering.

#set par.line(numbering: "1.")
#lorem(25)
#todo[this]
#lorem(25)

#set par.line(numbering: none)


=== Should allow explicit numbering inside of todo.


#let todo-content = {
  set par.line(numbering: "1.")
  [
    first

    second

    third
  ]

}

#lorem(25)
#todo(todo-content)
#lorem(25)