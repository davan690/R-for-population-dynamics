library(DiagrammeR)
grViz("
digraph boxes_and_circles {

  # a 'graph' statement
  graph [fontsize = 10]

  node [shape = circle,
        fixedsize = true,
        width = 0.9] // sets as circles
  Young; Juvielle; Adult

  # several 'edge' statements
  Young->Juvielle->Adult
  Adult->Young
  Juvielle-> Juvielle
  Young->Young
  Adult->Adult
  }
")

