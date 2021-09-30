#' @rdname serialization
#' @export
serialize_df <- function(x,
                         idCol = NULL) {

  if (!is.null(idCol)) {
    row.names(x) <- x[, idCol];
  }

  return(
    apply(
      x,
      1,
      as.list,
      simplify=FALSE
    )
  );

}
