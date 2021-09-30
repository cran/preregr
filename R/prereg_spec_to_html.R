#' Convert a (pre)registration specification to html
#'
#' @param x The (pre)registration object (as produced by a call to
#' [preregr::prereg_initialize()]).
#' @param file Optionally, a file to save the html to.
#' @param section Optionally, one or multiple sections to include (if `NULL`,
#' all sections are included).
#' @param headingLevel The level of the top-most headings.
#' @param silent Whether to be silent or chatty.
#'
#' @return x, invisibly
#' @export
#'
#' @examples preregr::prereg_initialize(
#'   "inclSysRev_v0_92"
#' ) |>
#'   preregr::prereg_specify(
#'     title = "Example Study",
#'     authors = "Littlebottom, C., Dibbler, C., & Aching, T.",
#'     nonExistent_item = "This can't be stored anywhere"
#'   ) |>
#'   preregr::prereg_justify(
#'     item = "primary_research_question",
#'     content = "Example content",
#'     decision = "decision ...",
#'     justification = "justification ..."
#'   ) |>
#'   preregr::prereg_spec_to_html();
prereg_spec_to_html <- function(x,
                                file = NULL,
                                section = NULL,
                                headingLevel = 1,
                                silent = preregr::opts$get('silent')) {

  res <-
    rmdpartials::partial(
      system.file("partials",
                  "_preregr_spec_full_partial.Rmd",
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
      msg("Knitted the (pre)registration specification to a HTML '",
          file, "'.\n",
          silent = silent);
    } else {
      stop("The path that you specified to save the file in ('",
           dirname(file), "') does not exist.");
    }
  }

  return(res);

}
