% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/form_show.R
\name{form_show}
\alias{form_show}
\title{Show a (pre)registration form}
\usage{
form_show(x, section = NULL)
}
\arguments{
\item{x}{The (pre)registration form (as produced by a call to
\code{\link[=form_create]{form_create()}}).}

\item{section}{The section(s) to show; pass \code{NULL} (the default) to show
everything.}
}
\value{
x, invisibly
}
\description{
This function shows (parts of) a (pre)registration form.
}
\examples{
### An empty form
preregr::form_create(
  "Example form",
  version = "1"
) |>
  preregr::form_show();

### A complete form
preregr::prereg_initialize("inclSysRev_v0_92") |>
  preregr::form_show();
}
