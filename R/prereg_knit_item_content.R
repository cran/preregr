#' Knit the specified content for the items in a (pre)registration into an Rmd file
#'
#' This function inserts the specified content for the items in a
#' (pre)registration, or in one or more sections, into an R Markdown file.
#'
#' @param x The (pre)registration object (as produced by a call to
#' [preregr::prereg_initialize()]).
#' @param section The section(s) to show; pass `NULL` (the default) to show
#' everything.
#' @param headingLevel The level to use for the top-most heading.
#'
#' @return x, invisibly
#' @export
#'
#' @examples examplePreReg <-
#'   preregr::prereg_initialize(
#'     "inclSysRev_v0_92"
#'   ) |>
#'     preregr::prereg_specify(
#'       title = "Example Study",
#'       authors = "Littlebottom, C., Dibbler, C., & Aching, T.",
#'       nonExistent_item = "This can't be stored anywhere"
#'     ) |>
#'     preregr::prereg_knit_item_content(
#'       section="metadata"
#'     );
prereg_knit_item_content <- function(x,
                                     section = NULL,
                                     headingLevel = 2) {

  rmdpartials::partial(
    input =
      system.file("partials",
                  "_preregr_spec_full_partial.Rmd",
                  package = "preregr")
  );

}
