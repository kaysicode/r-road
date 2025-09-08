# In R, you don't need to declare a data type as it will
# automatically detect VIA value

# and in R, use left arrow symbols "<-" to declare to a variable

x <- 18
y <- 4
z <- x + y
print(z)
z

# Math Operations
18 + 4
18 - 4
18 * 4
10 / 2

# Exponent
2 ** 3 # Use double asterisk for exponent / power to symbol
2 ^ 3 # Or use the rise to symbol directly
3.5 ** 2

# As you can notice here, the answer will be 4.5 since the
# exponent has higher precedence than the division 
# so it will first exponent it to the 1, then divide it to 2
9 ** 1/2

# But if you use open parenthesis then, it will operate first
# whatever is inside of parenthesis
9 ** (1/2)

# Special Operators
# %/% = Integer Division
# %% = Modulus

14 %% 4
8 / 3 # The answer here is 2.666667
8 %/% 3 # The answer here is 2

# It's because the %/% always return whole number

# In R, you can performance mathematical operations at 
# Boolean values

# TRUE = 1
# FALSE = 0

TRUE + TRUE
TRUE+ FALSE
TRUE - TRUE
TRUE - FALSE
TRUE / FALSE
