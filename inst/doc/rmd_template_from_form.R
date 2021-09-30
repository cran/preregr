## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- eval=FALSE--------------------------------------------------------------
#  preregr::form_to_rmd_template(
#    "OSFprereg_v1",
#    file = "C:/Path/To/A/File.Rmd"
#  );

## -----------------------------------------------------------------------------
rmdTemplate_example <-
  preregr::form_to_rmd_template(
    "OSFprereg_v1"
  );

### Show the fragment
cat(rmdTemplate_example[45:88], sep = "\n");

## -----------------------------------------------------------------------------
cat(rmdTemplate_example[835:850], sep = "\n");

## ---- eval=FALSE--------------------------------------------------------------
#  preregr::form_to_rmd_template(
#    "OSFprereg_v1",
#    file = "C:/Path/To/Child-document.Rmd",
#    includeYAML = FALSE
#  );

## ---- echo=FALSE, comment=""--------------------------------------------------
cat('```{r including-the-child, child = "C:/Path/To/Child-document.Rmd"}\n');
cat('```');

