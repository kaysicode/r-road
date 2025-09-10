# Replicate Function - a function that lets you replicate based on given input
#                      uses rep() function, then the second argument uses
#                      (times=x) whereas, x is the number of replicated input

x <- rep(67, times=6)
print(x)

# You can also replicate characters
rep1 <- rep("TUNG", times=3)
print(rep1)

# You can also replicate sequences function
seq1 <- seq(1,5, by=2)
rep2 <- rep(seq1, times=5)
print(rep2)

# Other argument in replicate function is (each=x)
# whereas, the x is the number of each sequence you insert
# that's arrange it in the sequence order
rep3 <- rep(seq1, each=5)
print(rep3)

# But, if the first argument is not sequence but, a single numeric
# then, it will just simply replicate it singly just like (times=x) function
rep4 <- rep(5, each=3)
print(rep4)












