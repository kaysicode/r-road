# Sequences - you can generate sequences of number in R
# for example:
# it will begin the sequence, on whatever you input in first index
x <- 1:10 # So, it will begin at 1 and end at 10
print(x)

# If you reverse it, it will begin at 10
y <- 10:1
print(y)

# if you want to multiple the sequence just add (*x)
# whereas, x is numeric you want to multiple to the sequences
even <- 1:10*2
print(even)

# this happen because, it will first print or instantiate the sequences
# then, it will operate to what operations you added beside of it
# it will print first: 1, 2, 3... 10 then, each sequence will subtract to 1
subtract <- 1:10-1 
print(subtract)

# You can use other variable as a value to sequences
num <- 1
res <- num:7
print(res)

res2 <- 7:num
print(res2)

# If you use parenthesis then, it will follow the highest precedence
# example: 1:(num2 - 1), it will first subtract the value of num2 to 1
# before instantiate the sequence
num2 <- 5
res3 <- 1:(num2 - 1)
print(res3)

# you can use the function seq() alternatively when instantiating or printing
# sequences
num3 <- seq(1,10)
print(num3)
# but, if only 1 argument or para is given then, it will be end of the 
# sequence. Then, the beginner of sequence is 1 as default.
num4 <- seq(7)
print(num4)

# if you want to be specific you want use the argument of 'from' and 'to'
num5 <- seq(from=1, to=10)
print(num5)

# If you want to to step or skip or add to each sequences, use the 3 para
num6 <- seq(1,10,2) # here it will add 2 to each sequences
print(num6)

# use (by=x, so that you won't confused to what x is stepped or added to sequences)
num7 <- seq(1, 10, by=3)
print(num7)

# Also, you can use the argument of (length=x) 
# whereas, it will show the length of x in the sequences
num8 <- seq(from=1, to=10, length=4)
print(num8)
num9 <- seq(1, 10, length=5)
print(num9)
# as you can notice, that the output shown below is in floating point
# this is because, the end of the sequence (10) is divided to 5, each of
# them should be equally divided

# You can also use floating point in the arguments of seq() method
num10 <- seq(1.0, 2.0, by=0.2)
print(num10)

# note: in 'by' argument or step argument, should be higher than 0 and 
# should be positive numeric







