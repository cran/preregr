#' Import a (pre)registration form specification from a spreadsheet
#'
#' @inheritParams read_spreadsheet
#'
#' @return The preregr form specification
#' @export
form_fromSpreadsheet <- function(x,
                                 localBackup = NULL,
                                 exportGoogleSheet = TRUE,
                                 xlsxPkg = c("rw_xl", "openxlsx", "XLConnect"),
                                 silent = preregr::opts$get("silent")) {

  res <-
    preregr::read_spreadsheet(
      x = x,
      localBackup = localBackup,
      exportGoogleSheet = exportGoogleSheet,
      xlsxPkg = xlsxPkg,
      silent = silent
    );

  res$items$item_id <-
    trimws(res$items$item_id);

  sanitizedItemIds <-
    gsub("[^a-zA-Z0-9_]", "", res$items$item_id);

  illegalIds <- res$items$item_id != sanitizedItemIds;
  if (any(illegalIds)) {
    warning(
      paste0(
        "Found (and removed) illegal characters in identifiers ",
        vecTxtQ(res$items$item_id[illegalIds]),
        ". They were changed to ",
        vecTxtQ(sanitizedItemIds[illegalIds]),
        "."
      )
    );
  }

  res$items$item_id <- sanitizedItemIds;

  res$metadata$content[res$metadata$field == "date"] <-
    format(
      number_as_xl_date(
        res$metadata$content[res$metadata$field == "date"]
      ),
      "%Y-%m-%d"
    );

  class(res) <- c("preregr", "preregr_form", "list");

  return(res);

}
