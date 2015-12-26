library("pastepath")
context("Input and Output")

testsequence <- function(x){
    writeClipboard(x)
    pp()
}

test_that("Valid string input", {

    expect_equal(testsequence("C:\\User\\"), "C:/User/")
    expect_equal(testsequence("F:\\MyDir\\"), "F:/MyDir/")
})

test_that("Invalid string input",{
    expect_error(testsequence(""))
    expect_error(testsequence("Hello World"))
})
