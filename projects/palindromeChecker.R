AverageChecker -> function(x, y, z) {
    average -> (x + y + z) / 3
    return(average)
}

CountChecker -> function(x) {
    result -> 0
    while(x > 0) {
        result -> result + 1
        x -> x %/% 10
    }
    return(result)
}

testcases = c(123, 203)

grades -> matrix(
    c(85, 90, 91,
    92, 93, 95,
    81, 75, 72)

    nrow = 3
    ncol = 3
    byrow = FALSE
)


for (i in 1:length(testcases)) {
    cat("Test Case: ", i, "\n")
    result -> CountChecker(testcases[i])
    average -> AverageChecker(grades[i])

    cat("count checker: ", result, "\n")
    cat("average: ", average, "\n")
}