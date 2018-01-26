#' Setup book
#'
#' Creates book file structure. It will contain all the files that you need
#' to compile your new book. You should start by running \code{Ctrl+Shift+B}
#' (build) on index.Rmd using RStudio. If it runs successfully, your output will
#' be in the docs folder
#'
#' @export
#'
#' @examples
#' \dontrun{
#' dir.create("exampleBook")
#' bookTemplate::setup_book("myNewBook")
#' }
setup_book <- function() {
  main_folder <- find_folder(template = 'bookTemplate', folder = '')

  folders <- main_folder %>%
    dir(full.names = TRUE, pattern = '[^(skeleton|travis)]')

  copy2root <- main_folder %>%
    dir(full.names = TRUE, recursive = TRUE) %>%
    grepl(pattern = "skeleton|travis", value = TRUE)

    stringr::str_subset(pattern = ) %>%
    c(folders)

  file.remove(dir(".", pattern = "\\.Rproj$"))
  invisible(file.copy(copy2root, to = ".", recursive = TRUE))
  file.rename("book.Rproj", paste0(basename(getwd()), ".RProj"))

  if (interactive()) rstudioapi::restartSession()
}
