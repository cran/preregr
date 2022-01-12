### Easily update all forms
updateAllForms <- FALSE;

#' Inclusive Systematic Review Registration Form
#'
#' This Systematic Review Registration Form is intended as a general-purpose
#' registration form. The form is designed to be applicable to reviews across
#' disciplines (i.e., psychology, economics, law, physics, or any other field)
#' and across review types (i.e., scoping review, review of qualitative
#' studies, meta-analysis, or any other type of review). That means that the
#' reviewed records may include research reports as well as archive documents,
#' case law, books, poems, etc. This form, therefore, is a fall-back for more
#' specialized forms and can be used if no specialized form or registration
#' platform is available.
#'
#' @format A (pre)registration form specification
#' @source \doi{10.31222/osf.io/3nbea}
#'
"form_inclSysRev_v0_92"

### Systematic review prereg form
if (exists("updateAllForms") && updateAllForms) {
  gSheet_url <-
    "https://docs.google.com/spreadsheets/d/1bHDzpCu4CwEa5_3_q_9vH2691XPhCS3e4Aj_HLhw_U8";

  localBackupFile <-
    here::here(
      "inst", "extdata", "preregr-form_inclSysRev_v0_92.xlsx"
    );

  form_inclSysRev_v0_92 <-
    preregr::form_fromSpreadsheet(
      gSheet_url,
      localBackup = localBackupFile,
      silent=FALSE
    );

  usethis::use_data(form_inclSysRev_v0_92, overwrite=TRUE);
}

#' Psychological Research Preregistration-Quantitative (aka PRP-QUANT) Template
#'
#' As an international effort toward increasing psychology’s commitment to
#' creating a stronger culture and practice of preregistration, a
#' multi-society Preregistration Task Force* was formed, following the
#' 2018 meeting of the German Psychological Society in Frankfurt, Germany.
#' The Task Force created a detailed preregistration template that benefited
#' from the APA JARS Quantitative Research guidelines, as well as a
#' comprehensive review of many other preregistration templates.
#'
#' @format A (pre)registration form specification
#' @source \doi{ http://dx.doi.org/10.23668/psycharchives.4584}
#'
"form_prpQuant_v1"

### Psychological Research Preregistration-Quantitative (aka PRP-QUANT) Template
if (exists("updateAllForms") && updateAllForms) {
  gSheet_url <-
    "https://docs.google.com/spreadsheets/d/1bVXx_RrXp0Yf2k6pE84HYm2DD1GG-alysEMsaKmqkoQ";

  localBackupFile <-
    here::here(
      "inst", "extdata", "preregr-form_prpQuant_v1.xlsx"
    );

  form_prpQuant_v1 <-
    preregr::form_fromSpreadsheet(
      gSheet_url,
      localBackup = localBackupFile,
      silent=FALSE
    );

  usethis::use_data(form_prpQuant_v1, overwrite=TRUE);
}

#' Preregistration Template for Qualitative and Quantitative Ethnographic Studies
#'
#' A preregistration is a way to design your research project before you
#' begin and to document your decisions, rationale. A template such as
#' this one can be employed to think about what you want to do and how,
#' and subsequently, if you wish, you can submit the finished preregistration
#' to a registry, such as OSF's (https://osf.io/registries/). This template
#' was developed to aid the preregistration of quantitative ethnographic
#' studies, but due to its modular nature, it can be employed for qualitative
#' studies as well.
#'
#' @aliases form_preregQE_v0_93 form_preregQE_v0_94
#' @format A (pre)registration form specification
#' @source \doi{http://dx.doi.org/10.23668/psycharchives.4584}
#'
"form_preregQE_v0_94"


### Preregistration Template for Qualitative and Quantitative Ethnographic Studies
if (exists("updateAllForms") && updateAllForms) {

  gSheet_url <-
    # v0.93 "https://docs.google.com/spreadsheets/d/1l3N0bWnKlRvXuHO-JFg3XHdWzgJWLNli90bnUUa5op4";
    "https://docs.google.com/spreadsheets/d/1ArM4kwHC9meVSiwCkR-WzF6m8YkwgEYyfxllhEz2vro";

  localBackupFile <-
    here::here(
      "inst", "extdata",
      #"preregr-form_preregQE_v0_93.xlsx"
      "preregr-form_preregQE_v0_94.xlsx"
    );

  #form_preregQE_v0_93 <-
  form_preregQE_v0_94 <-
    preregr::form_fromSpreadsheet(
      gSheet_url,
      localBackup = localBackupFile,
      silent=FALSE
    );

  usethis::use_data(
    #form_preregQE_v0_93,
    form_preregQE_v0_94,
    overwrite=TRUE
  );

}

#' OSF Prereg form
#'
#' Preregistration is the act of submitting a study plan, ideally also
#' with analytical plan, to a registry prior to conducting the work.
#' Preregistration increases the discoverability of research even if it
#' does not get published further. Adding specific analysis plans can
#' clarify the distinction between planned, confirmatory tests and
#' unplanned, exploratory research.
#'
#' This preprint contains a template for the "OSF Prereg" form available
#' from the OSF Registry. An earlier version was originally developed for
#' the Preregistration Challenge, an education campaign designed to
#' initiate preregistration as a habit prior to data collection in basic
#' research, funded by the Laura and John Arnold Foundation (now Arnold
#' Ventures) and conducted by the Center for Open Science. More information
#' is available at https://www.cos.io/initiatives/prereg/, and other templates
#' are available at: https://osf.io/zab38/"
#'
#' @format A (pre)registration form specification
#' @source \doi{https://doi.org/10.31222/osf.io/epgjd}
#'
"form_OSFprereg_v1"

### OSF Prereg form
if (exists("updateAllForms") && updateAllForms) {
  gSheet_url <-
    "https://docs.google.com/spreadsheets/d/1kmghGrkutrt3K9aEFFrWu-BfuJayFRSsV1WKQ-4QSM0";

  localBackupFile <-
    here::here(
      "inst", "extdata", "preregr-form_OSFprereg_v1.xlsx"
    );

  form_OSFprereg_v1 <-
    preregr::form_fromSpreadsheet(
      gSheet_url,
      localBackup = localBackupFile,
      silent=FALSE
    );

  usethis::use_data(form_OSFprereg_v1, overwrite=TRUE);
}


#' Inclusive General-Purpose Registration Form
#'
#' This Inclusive General-Purpose Registration Form is designed to be applicable
#' across disciplines (i.e., psychology, economics, law, physics, or any other
#' field) and across study types (i.e., qualitative studies, quantitative
#' studies, experiments, systematic reviews, case studies, archive studies,
#' comparative legal studies, or any other type of study). This form,
#' therefore, is a fall-back for more specialized forms and can be used if
#' no specialized form or registration platform is available. If at all
#' possible, it is recommended to use a specialized form, since this
#' inclusive general-purpose registration form achieves that inclusiveness
#' and general-purposeness at the cost of specificity and comprehensiveness.
#' Still, if specialized forms don't fit for your study, this form may be a
#' good backup.
#'
#' @aliases form_generalPurpose_v1 form_generalPurpose_v1_1
#' @format A (pre)registration form specification
#'
"form_generalPurpose_v1_1"

#' An example (pre)registration specification using the Inclusive
#' General-Purpose Registration Form
#'
#' This is a simple and relatively short partially completed (pre)registration
#' specification.
#'
#' @format An example of a (pre)registration specification
#'
"examplePrereg_1"

### Inclusive General-Purpose Registration Form
if (exists("updateAllForms") && updateAllForms) {

  gSheet_url <-
    # v1.0 "https://docs.google.com/spreadsheets/d/1YFqO9Nr-A3UI1FEkn99z8s2LB7VhE7Lp9gdBiOuHAgA";
    "https://docs.google.com/spreadsheets/d/1xmgNFItwtoqD-MMW3-ySkmnSqA6gvrxhuuCj5GnkoXU";

  localBackupFile <-
    here::here(
      "inst", "extdata", "preregr-form_generalPurpose_v1_1.xlsx"
    );

  yamlFile <-
    here::here(
      "inst", "extdata", "preregr-spec-example1_1.yml"
    );

  form_generalPurpose_v1_1 <-
    preregr::form_fromSpreadsheet(
      gSheet_url,
      localBackup = localBackupFile,
      silent=FALSE
    );

  usethis::use_data(
    # form_generalPurpose_v1,
    form_generalPurpose_v1_1,
    overwrite=TRUE
  );

  ### We also store a completed version of this form; also in in YAML and JSON
  examplePrereg_1 <-
    preregr::prereg_initialize(
      form_generalPurpose_v1_1
    );

  examplePrereg_1 <-
    preregr::prereg_specify(
      examplePrereg_1,
      discipline = "Thaumatology",
      title = "Cabbages cast in moderation: a comparative analysis",
      authors = "Littlebottom, C., Dibbler, C., & Aching, T."
    );

  examplePrereg_1_asYAML <-
    preregr::prereg_spec_to_yaml(
      examplePrereg_1
    );

  #tools::showNonASCII(paste0(examplePrereg_1_asYAML, collapse=""));

  preregr::prereg_spec_to_yaml(
    examplePrereg_1,
    file = yamlFile
  );

  #tools::showNonASCIIfile(yamlFile);

  usethis::use_data(examplePrereg_1, overwrite=TRUE);

}

#' Preregistration Template for Secondary Data Analysis
#'
#' Please cite the associated paper when using this preregistration
#' template (see https://doi.org/10.15626/MP.2020.2625).
#'
#' @format A (pre)registration specification
#'
"form_prereg2D_v1"

### Inclusive General-Purpose Registration Form
if (exists("updateAllForms") && updateAllForms) {

  gSheet_url <-
    "https://docs.google.com/spreadsheets/d/1-h4aT6i_K09bv-1da1JhT6lKXEjYcP9W";

  localBackupFile <-
    here::here(
      "inst", "extdata", "preregr-form_prereg2D_v1.xlsx"
    );

  form_prereg2D_v1 <-
    preregr::form_fromSpreadsheet(
      gSheet_url,
      localBackup = localBackupFile,
      silent=FALSE
    );

  usethis::use_data(form_prereg2D_v1, overwrite=TRUE);

}

#' A mostly empty example form specification
#'
#' This form specification is mostly empty, so it can be a
#' useful start if you want to create your own form. The accompanying
#' Google Sheet, which you can also copy, is
#' <https://docs.google.com/spreadsheets/d/14Qbak7JbBhTqmJaMgJ4tU9ZROaBbUfq37_UzkoHnM60>
#'
#' @format A (pre)registration specification
#'
"form_almostEmptyForm"

### Inclusive General-Purpose Registration Form
if (exists("updateAllForms") && updateAllForms) {

  gSheet_url <-
    "https://docs.google.com/spreadsheets/d/14Qbak7JbBhTqmJaMgJ4tU9ZROaBbUfq37_UzkoHnM60";

  localBackupFile <-
    here::here(
      "inst", "extdata", "preregr-form_almostEmptyForm_v1.xlsx"
    );

  form_almostEmptyForm <-
    preregr::form_fromSpreadsheet(
      gSheet_url,
      localBackup = localBackupFile,
      silent=FALSE
    );

  usethis::use_data(form_almostEmptyForm, overwrite=TRUE);

}


