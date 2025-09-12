# -----------------------------------------
# STUDENT GRADE ANALYZER PROGRAM
# -----------------------------------------

# start program
# display welcome message
# ask user for course name
# show mode options:
#   1. manual entry
#   2. import students from csv
# validate user choice (loop until valid)

# if manual mode:
#   - ask number of students
#   - for each student:
#       * ask for prelim, midterm, final grades
#       * validate input (numeric, 0–99)
#       * compute average and remarks (passed/failed)
#   - store results

# if importing CSV:
#   - ask for csv file name
#   - import student names from csv
#   - for each student:
#       * ask for prelim, midterm, final grades (with validation)
#       * compute average and remarks
#   - store results

# after data entry:
#   - display summary of all students
#   - identify and show top performer
#   - plot results in a bar chart with passing line

# end program


# function to safely read a grade with validation
read_grade <- function(subject) {
  repeat {  # same as while(TRUE)
    g <- suppressWarnings(as.numeric(readline(paste("  ", subject, " grade: "))))
    
    if (!is.na(g) && g >= 0 && g <= 99) {
      return(g)  # valid input, exit loop
    } else {
      cat("  invalid input! please enter a number between 0 and 99.\n")
    }
  }
}

calculate <- function(n) {
  
  for(i in 1:n) {
    cat("\n", names(averages)[i], "\n")
    p <- read_grade("Prelim")
    m <- read_grade("Midterm")
    f <- read_grade("Final")
    
    avg <- (p + m + f) / 3
    averages[i] <- avg
    
    status <- ifelse(avg >= 75, "Passed", "Failed")
    cat(sprintf("  result: average = %.1f → %s\n", avg, status))
  }
  return(averages)
  
}

plot_results <- function(averages, coursename) {
  barplot(
    averages,
    main = paste("Student Grade Averages ", coursename),
    ylab = "Average Grade",
    xlab = "Students",
    col = "grey",
    ylim = c(0, 99)
    )
  
  abline(h = 75, col = "red", lty = 5)
}

get_students <- function(file_path) {
  students <- read.csv(file_path,  stringsAsFactors = FALSE)
  
  fullnames <- paste(
    students$Lastname,
    paste(
      students$Firstname,
      students$Middle.Initial,
      sep = " "),
    sep = ", "
  )
  
  return(fullnames)
  
}

# =====================
# Main Program
# =====================

cat("WELCOME TOSTUDENT GRADE ANALYER\n")
cat("================================\n\n")

coursename <- as.character(readline("Enter the name of subject: "))

cat("Choose the mode of inserting students in", coursename, "\n")
cat("1. Manually Inserting\n")
cat("2. Import CSV File\n")

repeat {
  option <- as.integer(readline("Enter here (e.g. 1 or 2) : "))
  if (option %in% c(1,2)) {
    break
  } else {
    cat("Invalid choice. Please enter 1 or 2.\n")
  }
}

if (option == 1) {
  n <- as.integer(readline("Enter number of Students: "))
  
  averages <- numeric(n)
  names(averages) <- paste("Student", 1:n)
  
  averages <- calculate(n)
  
  top <- which.max(averages)
  cat(sprintf(
    "\nTop Student at %s: %s with performance = %.1f\n",
    coursename,
    names(averages)[top], 
    averages[top]
    ))
  
  plot_results(averages, coursename)

} else if (option == 2) {
  file_path <- readline("Enter the CSV filename: ")
  students <- get_students(file_path)
  n <- length(students)
  
  averages <- numeric(n)
  names(averages) <- students

  averages <- calculate(n)
  
  top <- which.max(averages)
  cat(sprintf(
    "\nTop Student at %s: %s with performance = %.1f\n",
    coursename,
    names(averages)[top], 
    averages[top]
  ))
  
  plot_results(averages, coursename)
}




