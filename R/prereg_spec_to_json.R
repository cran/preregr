#' @export
#' @rdname export_to_yaml_or_json
#'
#' @examples preregr::prereg_initialize(
#'   "inclSysRev_v0_92"
#' ) |>
#'   preregr::prereg_specify(
#'     title = "Example Study",
#'       authors = "Littlebottom, C., Dibbler, C., & Aching, T.",
#'     nonExistent_item = "This can't be stored anywhere"
#'   ) |>
#'   preregr::prereg_spec_to_json();
prereg_spec_to_json <- function(x,
                                includeFormSpec = TRUE,
                                file = NULL) {

  if (!(inherits(x, "preregr") && inherits(x, "preregr_spec"))) {
    stop("As `x`, you have to pass an initialized {preregr} object (see\n\n",
         "  ?preregr::prereg_initialize()\n\n",
         "for more information).");
  }

  xToWrite <- x;

  if (!includeFormSpec) {
    xToWrite <- xToWrite['specs'];
  }

  xToWrite <-
    structure_for_serialization(xToWrite);

  if (is.null(file)) {
    res <-
      jsonlite::toJSON(
        xToWrite,
        pretty = TRUE,
        force = TRUE
      );
    class(res) <- c("preregr_json", class(res));
    return(
      res
    );
  } else {
    jsonlite::write_json(
      xToWrite,
      file,
      pretty = TRUE,
      force = TRUE
    );
    return(invisible(xToWrite));
  }
}

#' @rdname export_to_yaml_or_json
#' @export
#' @method print preregr_json
print.preregr_json <- function(x, ...) {
  cat(x, sep="\n");
  return(invisible(x));
}
