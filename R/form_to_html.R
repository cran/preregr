#' Convert a (pre)registration form to html
#'
#' @param x The (pre)registration form (as produced by a call
#' to [preregr::form_create()]) or initialized `preregr` object
#' (as produced by a call to [preregr::prereg_initialize()]).
#' @param file Optionally, a file to save the html to.
#' @param section Optionally, one or multiple sections to include (if `NULL`,
#' all sections are included).
#' @param headingLevel The level of the top-most headings.
#' @param silent Whether to be silent or chatty.
#'
#' @return x, invisibly
#' @export
#'
#' @examples preregr::form_create(
#'   "Example form",
#'   version = "1"
#' ) |>
#'   preregr::form_to_html();
form_to_html <- function(x,
                         file = NULL,
                         section = NULL,
                         headingLevel = 1,
                         silent = preregr::opts$get('silent')) {

  x <- retrieve_form(x);

  res <-
    rmdpartials::partial(
      system.file("partials",
                  "_preregr_form_clean_partial.Rmd",
                  package = "preregr")
    );

  Encoding(res) <- "UTF-8";

  if (!is.null(file)) {

    if (!requireNamespace('knitr', quietly=TRUE)) {
      stop("You need to have 'knitr' installed to export HTML to a file!");
    }

    if (dir.exists(dirname(file))) {
      markdown::markdownToHTML(
        text = res,
        output = file
      );
      msg("Knitted the (pre)registration form to a HTML '",
          file, "'.\n",
          silent = silent);
    } else {
      stop("The path that you specified to save the file in ('",
           dirname(file), "') does not exist.");
    }
  }

  return(res);

}
