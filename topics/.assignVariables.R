# In R, you can use these to assign a values to variables
# <-, =, or assign()

x <- 10
y = 20
assign("z", 30) # First put what variable then the value

# In R, there's a Predefined Constant that already have value
# These are;
# pi, letters, LETTERS, month.name, month.abb

num <- pi
print(num)
class(num)

small_letters <- letters
print(small_letters)
class(small_letters)

big_letters <- LETTERS
print(big_letters)
class(big_letters)

name_of_months <- month.name
print(name_of_months)
class(name_of_months)

abbreviate_of_months <- month.abb
print(abbreviate_of_months)
class(abbreviate_of_months)
mode(abbreviate_of_months)
