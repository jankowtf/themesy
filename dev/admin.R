
# Dev dependencies --------------------------------------------------------

renv::activate()

renv::install("devtools")
renv::install("testthat")
renv::install("roxygen2")
renv::install("roxygen2md")
renv::install("rmarkdown")
renv::install("here")

# usethis::use_package("testthat", type = "Suggests")

# Dev preps ---------------------------------------------------------------

# Git
usethis::use_git()

# "Add the pipe"
usethis::use_pipe()

# Add package description
usethis::use_package_doc(open = FALSE)

# Use {testthat}
usethis::use_testthat()

# Use markdown in roxygen syntax
usethis::use_roxygen_md()
roxygen2md::roxygen2md()

# Misc
usethis::use_mit_license()
usethis::use_readme_rmd(open = FALSE)
usethis::use_lifecycle()
usethis::use_lifecycle_badge("experimental")
usethis::use_news_md(open = FALSE)

usethis::use_build_ignore(
    c(
        "devops",
        "inst/examples",
        "tests"
    )
)

# Prod dependencies -------------------------------------------------------

renv::install("rappster/valid")
renv::install("fresh")
renv::install("dplyr")

usethis::use_dev_package("valid", type = "Imports", remote = "rappster/valid")
usethis::use_package("fresh", type = "Suggests")
usethis::use_package("dplyr", type = "Suggests")

# Tests -------------------------------------------------------------------

usethis::use_test("package")

# Versions ----------------------------------------------------------------

usethis::use_version("dev")
