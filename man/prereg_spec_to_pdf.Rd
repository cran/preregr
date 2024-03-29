% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/prereg_spec_to_pdf.R
\name{prereg_spec_to_pdf}
\alias{prereg_spec_to_pdf}
\title{Convert a (pre)registration specification to PDF}
\usage{
prereg_spec_to_pdf(
  x,
  file,
  author = NULL,
  section = NULL,
  headingLevel = 1,
  silent = preregr::opts$get("silent")
)
}
\arguments{
\item{x}{The (pre)registration object (as produced by a call to
\code{\link[=prereg_initialize]{prereg_initialize()}}).}

\item{file}{The filename to save the (pre)registration to.}

\item{author}{The author to specify in the PDF.}

\item{section}{Optionally, one or multiple sections to include (if \code{NULL},
all sections are included).}

\item{headingLevel}{The level of the top-most headings.}

\item{silent}{Whether to be silent or chatty.}
}
\value{
x, invisibly
}
\description{
Use this function to export your (pre)registration specification to a PDF
file. To embed it in an R Markdown file, use
\code{\link[=prereg_knit_item_content]{prereg_knit_item_content()}} instead.
}
\examples{
### Use a temporary file to write to
tmpFile <- tempfile(fileext = ".pdf");

### Load an example (pre)registration specification
data("examplePrereg_1", package = "preregr");

### Only run this if you have a functional LaTeX installation
if (FALSE) {
  preregr::prereg_spec_to_pdf(
    examplePrereg_1,
    file = tmpFile
  );
}
}
