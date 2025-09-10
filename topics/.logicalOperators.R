# Operators:
# & : AND
# && : AND (cannot use for vectorized operations)
# | : OR
# || : OR (cannot use for vectorized operations)
# ! : NOT

compare1 <- TRUE
compare2 <- TRUE
result <- compare1 != compare2
print(result)

print(!FALSE)

# it will still print TRUE since we used OR as operator
TRUE | FALSE
# This one we need to satisfy the two condition before it will be TRUE
TRUE & FALSE
# It will say that as long as it's not the (VALUE) or (VARIABLE)
!TRUE
