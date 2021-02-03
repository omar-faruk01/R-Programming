#Q1#

#1
#Define vectors
height=c(172,168,167,175,80)
weight=c(62,64,51,71,69)
ID=c("student1","student2","student3","student4","student5")

#Column bind to bind & create matrix
students=cbind(ID,height,weight)

#Column names
colnames(students)=c("ID","Height","Weight")
students

#2
#Modify matrix
students[3,2] = "162" #Student3 height
students[5,3] = "69" #Student5 weight
students

#Q2#
#1
A=matrix(c(1, 1/2, 1/3, 1/2, 1/3, 1/4, 1/3, 1/4, 1/5), nrow = 3)
B=(1/cbind(seq(1, 3), seq(2, 4), seq(3, 5)))
A
B
A==B #Compare two matrices
t(A) #Transpose matrix
det(A) #Determinant matrix

#2
X=A
1.5*X

#3
X %*% t(X)
crossprod(X)
t(X) %*% X
tcrossprod(X)

#4
t(X) * X

#Q3#
Formaldehyde
Formaldehyde[3,]
Formaldehyde[,1]
plot(Formaldehyde$carb,Formaldehyde$optden)

#Q4#
USArrests
#1
nrow(USArrests)
ncol(USArrests)
dim(USArrests)
#2
median(USArrests[,1])
median(USArrests[,2])

#3
rownames(USArrests)=c("AL","AK","AZ", "AR","CA","CO","CT","DE","DC","FL","GA","ID","IL","IN","IA","KS","KY","LA","ME","MD","MA","MI","MN","MS","MO","MT","NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK","OR","PA","RI", "SC", "SD", "TN", "TX", "UT", "VT", "VA", "WA","WV","WI","WY")
rownames(USArrests)

#4
USArrests
data1 = which(USArrests$UrbanPop > 77)
mean(USArrests$Murder[data1])

#5
data2 = which(USArrests$UrbanPop < 50)
mean(USArrests$Murder[data2])

#6
selectData = sample((1:nrow(USArrests)), 12, replace = F)
df=USArrests[selectData,]
df

#Q5#
#export
write.csv(USArrests, file ="USArrestsDF1.csv")
write.table(USArrests, file = "USArrestsDF1.txt", append = FALSE, quote = TRUE, sep="", eol="/n", na="NA", dec=".",row.names=TRUE, col.names = TRUE)

#import
##USED IMPORT BUTTON##
USArrestsDF1 <- read.csv("~/USArrestsDF1.csv")
>   View(USArrestsDF1)

##USED IMPORT BUTTON##
View(USArrestsDF1)
> USArrestsDF1 <- read.table("~/USArrestsDF1.txt", quote="\"", comment.char="")
