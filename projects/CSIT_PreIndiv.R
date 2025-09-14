# CSIT 311 - Pre Individual Activity
# ==================================
# Class Code: 9466
# Team 3: R Programming Language
# MAYO, Kenneth Charles
# Online Translator: https://onecompiler.com/r/43wm2k9jf

# STEP 1: Input 

# Make a vector for test cases (you can add more test cases here)
testcase <- c(3487, 1200, 987654321)


for (i in 1:length(testcase)) {

  # assign current test case to num
  num <- testcase[i]
    
  cat("\n--- Result of Testcase", i, ":", num, "---\n")

  
  # Initialize the variables
  originalNum <- num
  reverseNum <- 0
  even <- 0
  odd <- 0
  
  # STEP 2: Process 
  
  # Reverse the number using the while loop
  while (originalNum > 0) { 
    
    # Get the last number
    digit <- originalNum %% 10 
    
    # Check the each digit if it's even or odd
    ifelse(digit %% 2 == 0, even <- even + 1, odd <- odd + 1)
    
    # Build the reverse number
    reverseNum <- reverseNum * 10 + digit
    
    # Remove the last number
    originalNum <- originalNum %/% 10
    
  }
  
  # Check the reverse number if it's ODD or EVEN then store it to variable
  res <- ifelse(reverseNum %% 2 == 0, "EVEN", "ODD")
  
  
  # STEP 3: Output
  
  cat("Origianl Number: ", num, "\n")
  cat("Reverse Number: ",reverseNum, "\n")
  cat(num, "has: ",even, "Even numbers\n")
  cat(num, "has: ",odd, "Odd numbers\n")
  cat("Does", reverseNum, ", an even or odd number? : ", res, "\n")
} 


