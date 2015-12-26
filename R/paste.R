#' Read a Windows path copied on to the clipboard and
#' replace any back slash with a forward slash to render a proper
#' R path.
#'
#'@param This function takes no parameters
#'@return A file path string in the form "C:/User/..."
#'@examples
#'
#'Shift + right click file folder and select "Copy as path"
#'setwd(pp())
#'
#'Shift + right click on R script file and select "Copy as path"
#'source(pp())
#'@export
#'
pp <- function() {
    t <- scan(file = "clipboard", what = "")
    if(nchar(t) < 3) stop("Clipboard does not contain a valid
                               Windows directory.")
    if(!grepl("^\\D\\:", t)) stop(paste(t, "is not a valid
                                            Windows directory."))
    gsub("\\\\", "/", t)
}
