# #1 
# Body(), formals(), and environment()

# #2
# Lexical scoping rules are based on name masking,
# functions vs variables, fresh start, and dynamic lookup

# #3
f1 = function(x){
  x + 1
}

f1(1)
f1(2)

# #4
# It goes from left to right when using &&, once first argument is
# false , the rest isnt computed as one false makes the statement false
# Value must not be null, lenght of 1, and greater than 0.

x_ok <- function(x) {
  !is.null(x) & length(x) == 1 & x > 0
}

x_ok(NULL)
x_ok(1)
x_ok(1:3)

# #5
f2 = function(x = z){
  z = 100
  x
}

f2()

# It returns 100 as x equals z, and z is set to 100. It uses lazy evaluation.

# #6
y <- 10
f1 <- function(x = {y <- 1; 2}, y = 0) {
  c(x, y)
}
f1()
y

# function returns 2 1 as x is set to 2, y to 1 within function.
# these are variables set within function only. However, y has a variable
# value of 10. This uses name masking.
