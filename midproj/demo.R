codeGenerationExamples <- function() {
  name <- readline("Enter a name: ")

  cat("Hello World", name, "\n")

  addition <- function(x, y) {
    z <- x + y
    return(z)
  }


  cat("Result: ", addition(5, 2), "\n")

  multiply <- function(x, y) {
    z <- x * y
    return(z)
  }

  cat("Result: ", multiply(5, 2), "\n")
}

codeGenerationExamples()


reformattingCodeExamples <- function() {
  messy123 <- "messyCode"
  cat("Result", messy123)
}

add <- function(a, b) {
  return(a + b)
}
