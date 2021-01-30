##HOMEWORK##
x1 = c(T,F,T)
x2 = c( -2.5, 0, 1, 3, 5.9)
x3 = c( "a1", "a2", "za", "zz", "0", "1")

##Q1## Vector Operations
#Sum Function
sum(x1)
sum(x2)
sum(x3) #Error due to set of strings cant be added

#Product function
prod(x1)
prod(x2)
prod(x3) #Error due to set of strings cant be multiplied

#Maximum function
max(x1)
max(x2)
max(x3)

#Minimum function
min(x1)
min(x2)
min(x3)

#which maximum to return index function
which.max(x1)
which.max(x2)
which.max(x3) # Doesnt work with strings due to NA

#which minimum to return index function
which.min(x1)
which.min(x2)
which.min(x3) # Doesnt work with strings due to NA

#range function
range(x1)
range(x2)
range(x3)

#length function
length(x1)
length(x2)
length(x3)

#mean function
mean(x1)
mean(x2)
mean(x3) #Non numerical or logical, thus no mean with returning NA

#median function
median(x1)
median(x2)
median(x3) #Non numerical or logical, thus no median with returning NA

#round function
round(x1,3)
round(x2,3)
round(x3,3) #Non numerical or logical, thus no round with returning NA

#reverse function
rev(x1)
rev(x2)
rev(x3)

#sort function
sort(x1)
sort(x2)
sort(x3)

#rank function
rank(x1)
rank(x2)
rank(x3)

#More vector operations
#x1
log(x1,10)
scale(x1)
pmin(x1)
pmax(x1)
cumsum(x1)
cumprod(x1)
cummin(x1)
cummax(x1)
match(x1,2)
which(x1 == 1)
choose(x1, 3)
na.omit(x1)
na.fail(x1)
unique(x1)
table(x1)
table(x1,3)
subset(x1)
sample(x1,3)

#x2
log(x2,10)
scale(x2)
pmin(x2,2) 
pmax(x2,3)
cumsum(x2)
cumprod(x2)
cummin(x2)
cummax(x2)
match(x2,3)
which(x2 == 3)
choose(x2, 3)
na.omit(x2)
na.fail(x2)
unique(x2)
table(x2)
table(x2,1)
subset(x2,1)
sample(x2,3)

#x3
log(x3,10)
scale(x3)
pmin(x3)
pmax(x3)
cumsum(x3)
cumprod(x3)
cummin(x3)
cummax(x3)
match(x3,2)
which(x3 == 1)
choose(x3, 3)
na.omit(x3)
na.fail(x3)
unique(x3)
table(x3)
table(x3,3)
subset(x3)
sample(x3,3)

##Q2## Repeating & Sequencing
#1
num1= (c(1,2,3,4,5))
num2 = rep(num1, times=3)
num3 = rep(0, times=5)
num4 = rep(1, times=5)
vector1=c(num2,num3,num4)
vector1

#2
num5=seq(from=1, to=5)
num6=seq(from=2, to=6)
num7=seq(from=3, to=7)
num8=seq(from=4, to=8)
num9=seq(from=5, to=9)
vector2=c(num5,num6,num7,num8,num9)
vector2


##Q3## Factoring
vector3=c(0,0,0,1,1,1,1,0,0)
vector3_factor=factor(vector3)
vector3_factor
levels(vector3_factor)=c("Male", "Female")
vector3_factor
