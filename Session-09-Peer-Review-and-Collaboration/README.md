# GEOG 712 Reproducible Research

## Session 9. Peer review and collaboration

This is mostly a hands-on session reviewing progress with creating a package and a vignette. Here are some useful pointers.

### Why does my package not work??

Here are some common mistakes.

1. The root folder for your package should not contain extraneous elements; the only files that are needed there are:
  - NAMESPACE
  - DESCRIPTION
  - .Rbuildignore
  - .Rproject
  - .Rhistory
  
These files will be created for you when you initialize the package. Other files are not needed and should not be placed there. If you need to keep other files create one or more folders for them, but remember to add them to .Rbuildignore.

2. .Rbuildignore is a file that keeps track of _everything_ that will be ignored when the package is built. This includes administrative files such as .Rproject, which is not part of the package but a file that manages the settings of the project used to create the package. If you want to keep files that you need but are not part of the package, create folders as appropriate. For example, you could place original data (e.g., in csv, Excel, mat or other formats) in a folder called `other-data/`, and add the folder to .Rbuildignore as follows:

`usethis::use_build_ignore("other-data")`

Or maybe you have some scripts that you use to test and to experiment with your code or data. Again, these scripts could be part of the process of developing a package, but are not necessarily needed for the package itself. You could place these in a folder called `tests`, and add the folder to .Rbuildignore:

`usethis::use_build_ignore("tests")`

My preference is to create a single folder (I call it `Raw/`) where I create subfolders as needed for scripts, external data, data preprocessing, pdf files with papers that are relevant, etc. See for example:

![My ignored folder](Session-9-Figure-1.png)

As long as the folder is declared in the .Rbuildignore file, all the contents will be ignored when the package is built.

3. Data for the package should go in the `data/` folder and be in .RData format. Each .RData file must contain only one object (e.g., a dataframe) and the name of the object and the file must be identical. For instance, assume that I have a dataframe called `energy_and_emissions`. I would save this in an .RData file as follows:

`save(energy_and_emissions, file = "energy_and_emissions.RData")`

One object and same name for the file. Copy to the `data/` folder.

4. The `data/` folder should include nothing but .RData files. Do not save scripts, raw data in other formats, or other extraneous elements there.

5. If you wish to include raw data in other formats with the package, save the files in the folder `inst/extdata/`. This is seldom necessary, unles the objective of the raw data is to illustrate how to read/import in R. Otherwise, the .RData version should be enough.

>"But my colleagues really want the Excel file"

An R package is not the ideal way to share Excel files, or files in other formats (e.g., .csv, .mat, etc.); an R package is ideal for sharing code and data in R format. If institutional or other needs demand that you share files in other formats, there are alternatives to do that that do not involve the trouble of creating an R package. In my view, however, an R package is a superior way of sharing data (and code) due to the way it packs everything and their documentation in a single shareable unit.

Including data in other formats is also redundant. A competent `R` user can read an .RData file and export to other formats, _if_ needed.

6. The function you created is not recognized by the package after installation. This could be due to either or one of the following reasons:

  - The NAMESPACE file is not updated when documenting.

The NAMESPACE file is created automatically when you initialize the package. The package `roxygen2` that we use to document will ignore it, unless you delete it and recreate it by running:

`devtools::document()`

This should be one of the first things you do when creating a package: deleting the original NAMESPACE (which will be blank in any case) and recreating it so that `roxygen2` can manage it.

  - The documentation for the function (which is in the same script as the function) must include the tag `@export`. This tag tells the builder to include the function in the NAMESPACE file. See the example below:
  
```
#' Multiply two numbers
#'
#' @param a A number
#' @param b A number
#' @return The product of \code{a} and \code{b}
#' @export
#' @examples
#' multiply(2, 5)
#' multiply(4, 8)
multiply <- function(a, b){
  a * b
}
```
  
  - As well, when creating an `R` script for a function, the name of the file and the name of the function must be the same. For example, the function above is `multiply()` and should be saved in a script named `multiply.R`. Naming the script `multiplication.R` or `products.R` or anything else can lead to errors.

7. Documentation of the package goes in an `R` script file with the name of the package. You will use this script to document the package itself and the data sets. For instance, my minimal package `packr` is documented in a file called `packr.R`, as follows:

```
#' packr: A package with a minimum example of package creation.
#'
#' This package is an exercise in package creation using
#' R studio. The package includes a sample function and
#' a sample dataset with their respective documentation.
#'
#' @docType package
#' @name packr
#' @author Antonio Paez, School of Geography and Earth Sciences, McMaster University \email{paezha@@mcmaster.ca}
#' @references \url{https://github.com/paezha/Reproducible-Research-Workflow}
NULL
```

This same file can be used to document data sets. As an alternative, you can create R scripts to document each individual data set. When doing so, the names must be concordant.

During the seminar we will troubleshoot any other issues you may have.