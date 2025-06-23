#import "/lib/todo.typ": todo

Test how todos on the same place are re-arranged.

#lorem(100)

#todo[Left 1]
#todo[
  - left 2
  - on
  - multiple
  - lines
]
#todo[Left 2]
#todo[Left 3]
#todo(position: right)[Right 1]
#todo(position: right)[Right 2]

#pagebreak()

#let count-todos = 50
Page with #count-todos TODOs on top of each other.

#lorem(30)
#for i in range(count-todos) {
  todo[Left #i];
}
#lorem(30)


#pagebreak()

Some todos at the top of the page.
#lorem(30).
#todo[Left 1]
#todo[Left 2]
#todo[Left 3]

#pagebreak()


Some todos at the bottom of the page.

#lorem(600).
#todo[Left 1]
#todo[Left 2]
#todo[Left 3]


#pagebreak()

Some toods all over the top and bottom of the page.

#lorem(30)
#todo[Left 1]
#todo[Left 2]
#todo[Left 2]

#lorem(200)
#todo[Left 3]
#lorem(300)

#todo[Left 4]
#todo[Left 5]
#todo[Left 6]