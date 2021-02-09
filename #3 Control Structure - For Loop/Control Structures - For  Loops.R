#Q1 - Fibonacci Sequence

#a
fibonacci=numeric(12)
fibonacci[1]=fibonacci[2] <-1
for (i in 3:12) {
  fibonacci[i] = fibonacci[i-2]+fibonacci[i-1]
}
fibonacci[1]=2
fibonacci[2]=2
fibonacci

#b
fibonacci2=numeric(12)
fibonacci2[1]=fibonacci2[2] <-1
for (i in 3:12) {
  fibonacci2[i] = fibonacci2[i-2]+fibonacci2[i-1]
}
fibonacci2[1]=3
fibonacci2[2]=2
fibonacci2

#c
fibonacci3=numeric(12)
fibonacci3[1]=fibonacci3[2]<-1
for (i in 3:12) {
  fibonacci3[i] = fibonacci3[i-2]-fibonacci3[i-1]
}
fibonacci3

#d
fibonacci4=numeric(12)
fibonacci4[1]=fibonacci4[2]<-1
fibonacci4[3]=1
for (i in 4:12) {
  fibonacci4[i] = fibonacci[i-3]+fibonacci4[i-2]+fibonacci4[i-1]
}
fibonacci4

#Q2 - Sequencing using for loop

fibonacci5=numeric(60)
fib_ratio=numeric(60)
fibonacci5[1] = fibonacci5[2] = 1
fib_ratio[1] = NA
fib_ratio[2]=1
for (i in 3:60) {
  fibonacci5[i] = fibonacci5[i-2]+fibonacci5[i-1]
  fib_ratio[i] = (fibonacci5[i]/fibonacci5[i-1])
}
fibonacci5 
fib_ratio # Convergence

#Q3 Fixed point iteration
#a
x1= .5
x2 = x1
result = c()
x_result =c()
for (i in 1 : 100) {
  x_result = c(x_result, x2)
  g = cos(x2)
  result = c(result, g-x2)
  x2 = g
}
result
x_result

x_length = length(x_result)
x_difference=c()
for( i in 2:x_length)
{
  x_difference = c(x_difference, x_result[i] - x_result[i-1])
}
x_difference
which( abs(x_difference) < .01)
which( abs(x_difference) < .001)
which( abs(x_difference) < .0001)


#b
x1= .7
x2 = x1
result = c()
x_result =c()
for (i in 1 : 100) {
  x_result = c(x_result, x2)
  g = cos(x2)
  result = c(result, g-x2)
  x2 = g
}
result
x_result

x_length = length(x_result)
x_difference=c()
for( i in 2:x_length)
{
  x_difference = c(x_difference, x_result[i] - x_result[i-1])
}
x_difference
which( abs(x_difference) < .01)
which( abs(x_difference) < .001)
which( abs(x_difference) < .0001)

#Q4
i0=.05
i=i0
i_seq=c()
result=c()
for (j in 2:300) {
  i_seq = c(i_seq, i)
  g = (1 - (1+i)^(-20))/19
  result=c(result, g-i)
  i=g
}
i_seq
result