# pastepath
The pp() function in this package modifies a copied Windows file path so the backslashes are converted to
forward slashes. It is meant to be used at the console wherever a full file path string is required in an
R command. To apply it, the user:

* Navigates to the file or folder in Windows Explorer and copies the path to the clipboard by either
Shift + Right Click and selecting "Copy as path" or by selecting "Copy path" from the Home menu.
* Using the pp() function instead of the pasted string in an R Console command

## Installation
To install the package from an R prompt type:
devtools::install_github("tboomer/pastepath")

## Comment
The motivation for this package is to solve a simple, recurring problem while learning the steps to build
and publish an R package.
