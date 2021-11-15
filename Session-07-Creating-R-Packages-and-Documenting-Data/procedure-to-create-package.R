# Procedure to create a package from scratch

# PACKAGE CREATION
# Create package
usethis::create_package("C:/Antonio/packages/packr3")
# Modify license
usethis::use_gpl3_license()
# As an alternative use_ccby_license()
#usethis::use_tidy_description()
# Use README.Rmd which is superior to README.md
usethis::use_readme_rmd()
# Add to the yaml header the following: 
# ---
# output: 
#  github_document:
#  pandoc_args: --webtex
#---
# Create script for documenting package and data
usethis::use_package_doc() # After this there is an R script in folder `R` with the name of the package

# ADD STUFF TO PACKAGE
# Add a folder to include raw data (which will not be included in the package)
usethis::use_data_raw()
# Create a notebook to process raw data: `process-energy-and-emissions.Rmd`
# Copy raw data files to folder data-raw
# Run/knit data processing notebook(s)
usethis::use_r(name = "multiplyr")
# Write function
#' Multiply two numbers
#'
#' @param a A number
#' @param b A number
#' @return The product of \code{a} and \code{b}
#' @export
#' @examples
#' multiplyr(2, 5)
#' multiplyr(4, 8)
#multiplyr <- function(a, b){
#  a * b
#}

# Create test
usethis::use_test(name = "multiplyr")
# Edit test file
# test_that("multiplyr-works", {
# expect_equal(multiplyr(3, 2), 6)
# })

# Documentation
# write documentation in file with package name and then run the following
devtools::document()
devtools::check()
devtools::build()
devtools::install()
# Edit README.Rmd and then render
devtools::build_readme()

# SAFETY: OPTIONAL!
usethis::use_git_ignore("data-raw")

# Set up git 
usethis::use_git()
usethis::use_github()
# OPTIONAL
#usethis::use_github_action("pkgdown")
# Commit and push


# TO CREATE PACKAGE WEBSITE
usethis::use_pkgdown()

# Create vignette
usethis::use_vignette(name = "packr3", title = "How to use this package")
# Remove docs/ from gitignore
# Recheck and reinstall
devtools::check()
devtools::build()
# SET build_vignettes to TRUE
devtools::install(build_vignettes = TRUE)

# IMPORTANT: make sure that you've set up github pages for your repository publishing from /docs

# Build site
pkgdown::build_site()

# Push to github

#####################################
