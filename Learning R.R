#R is an object object oriented programming language.
# iS an object (Stores 100 randomly dist numbers)
x = rnorm(100)
x #refer to it through its identifier
head(x) # displays first 6 elements of object
tail(x)
mean(x)
sd(x)
min(x)
max(x)
#outputs are printed on screen with [1] in square brackets because
#outputs themselves are objects of length 1

#R is a calculator
#Objects can be manipulated
2+2
7*17
sqrt(7)
3^3
log(7); log10(7)
#Applying function to number or numbers
sin(pi/2)
pi
options(digits =22) #changes R's default setting for displaying numbers

1/0 # will get object labeled infinity
0/0 #will return NaN - not a number
#C function concatenates numbers into single R object, a vector of length 5
c(1, 2, 3, NA, 5)
# mean(c(1,2,3,NA,5)) will return NA
# <- and = are the assignment operator
#easy to confuse = with default values
x <- 2+5
y <- x+5
ls() #lists all objects in working memory
rm(x) # will remove object x
?mean #shorthand for help with mean

#add axis to right side of histogram
hist(x,axes=FALSE)
axis(4)

#Functions have a relationship between an input and output
#R objects which do not establish relations between input and 
#output are static

#Data takes many forms
#Single Values = logical, single numbers, characters, vectors
#You can't take vectors that combine data types, it converts it to character
#Special type of vector is factor, a factor has pre-specified set of levels
gl(2,10, Labels = c("male", "female")) #generates factors
#2 is the number of levels, k is number of replications, label = optional label for labeling resulting factors
as.factor(c(rep("male", 10), rep("female", 10)))
axis(1)

#Matrices are r objects and can enter into aritmetic and can only contain 1 data type
matrix(c(1,2,3,4,5,6), nrow = 2)

#Multi referenced data structures with array command
#R fills the structures by columns
array(c(1:24), dim=c(4,3,2))

#Data frame is a cross reference where different columns are allowed to have
#different data types
#Can create by reading them in from external files
#Create with the as.data.frame() on a set of vectors
#Data frame is set of parallel vectors where vectors can be different types
data.frame(treatment = c("active", "active", "placebo"), bp = c(80, 85, 90))
#will fill downwards by column
#All columns need to have the same length

#Data frame question
#Now let's try to add a number to a data frame containing both number columns and factor columns: 
#We can see is that R doesn't know how to add an A and a 2, and the result of that operation is therefore NA. However, for the part of the data frame where the addition makes sense, the addition is performed just as in the previous question.

#Built in functions are part of R and you can refer them directly
#WRite your own function
square = function(x) {
  return(x*x)
}
square(2:4) #vectorize input and output will be similarly vectorized
#R has concept of default values, may be specified but need not
power <- function(x, pow = 2){
  return(x^pow)
}
#can remove functions with rm(name)
stand <- function (x){
  return((x-mean(x))/sd(x))
}


#This is where a list is better
list(a = 1, b = "abc", c = c(1,2,3))

#can execute scripts with source(filename) command
