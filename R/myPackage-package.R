#' @keywords internal
"_PACKAGE"

# The following block is used by usethis to automatically manage
# roxygen namespace tags. Modify with care!
## usethis namespace: start
#' @import MASS
#' @useDynLib myPackage, .registration = TRUE
#' @importFrom Rcpp sourceCpp
## usethis namespace: end
NULL

.onUnload <- function (libpath) {
  library.dynam.unload("mypkg", libpath)
}

