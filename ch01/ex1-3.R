################################################################################
# Usage: shell:
#   RScript ex1-3.R
# Usage: REPL:
#   r
#   > source('ex1-3.R')
################################################################################

square <- function(a) {
  a*a
}

# square(3) => 9

min <- function(a, b) {
  ifelse(a < b, a, b)
}

# min(2,3) => 2

min3 <- function(a, b, c) {
  min(a, min(b, c))
}

# min3(10, 8, 6) => 6

sumofsquares <- function(a, b, c) {
  square(a) + square(b) + square(c)
}

#sumofsquares(1, 2, 3)

q3 <- function(a, b, c) {
  sumofsquares(a, b, c) - square(min3(a, b, c))
}

q3(2, 3, 4)
q3(4, 3, 2)
q3(3, 1, 4)

