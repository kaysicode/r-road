# Variables - are used to store values

# In R, you can overwrite the values of Variables
my_var <- 10 
print(my_var)

# Here, it will shows the datatype of my_var which is numeric
print(class(my_var))

# Static VS Dynamic Type
# 1. Static Type - The data has to be explicitly defined
# ex. int my_var = 10; (Java)

# 2. Dynamic Type - The data is determined at run-time
# ex. my_var <- 10 (R) 

# R is Dynamically Type Language

x <- 10
typeof(x) # internal storage type
mode(x) # broad data type
storage.mode(x) # storage type for low-level ops
class(x) # class used for method dispatch

age <- as.integer(20)
marks <- 10
subject_java <- 20

# the as.integer() method will convert value into integer
grade <- as.integer("10")
print(grade)
is.integer(grade)

# you can also store complex number which is determined by "i"
x <- 3 + 4i
print(x)
class(x)

# you can also store logical values
y <- TRUE
print(y)
class(y)

z <- F
z
class(z)

t <- T
t
class(t)

# as.character is same with as.integer, it will convert it to
# character even it input as integer
num <- as.character(3.75)
print(num)
class(num)
is.character(num)




