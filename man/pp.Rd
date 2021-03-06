% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paste.R
\name{pp}
\alias{pp}
\title{Paste Valid Windows Path}
\usage{
pp()
}
\arguments{
\item{This}{function takes no parameters}
}
\value{
A file path string in the form "C:/User/..."
}
\description{
Read a Windows path copied on to the clipboard and
replace any back slash with a forward slash to render a proper
R path.
}
\examples{

Shift + right click file folder and select "Copy as path"
setwd(pp())

Shift + right click on R script file and select "Copy as path"
source(pp())
}

