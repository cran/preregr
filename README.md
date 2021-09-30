
<!-- README.md is generated from README.Rmd. Please edit that file -->

# <img src='img/hex-logo.png' align="right" height="200" /> preregr 📦

## Specify (Pre)Registrations and Export Them Human- And Machine-Readably

<!-- badges: start -->

[![Pipeline
status](https://gitlab.com/r-packages/preregr/badges/main/pipeline.svg)](https://gitlab.com/r-packages/preregr/-/commits/main)

[![Coverage
status](https://codecov.io/gl/r-packages/preregr/branch/prod/graph/badge.svg)](https://codecov.io/gl/r-packages/preregr?branch=main)

<!-- [![Dependency status](https://tinyverse.netlify.com/badge/preregr)](https://CRAN.R-project.org/package=preregr) -->
<!-- badges: end -->

The pkgdown website for this project is located at
<https://r-packages.gitlab.io/preregr>.

<!--------------------------------------------->
<!-- Start of a custom bit for every package -->
<!--------------------------------------------->

Preregistrations, or more generally, registrations, enable explicit
timestamped and (often but not necessarily publicly) frozen
documentation of plans and expectations as well as decisions and
justifications. In research, preregistrations are commonly used to
clearly document plans and facilitate justifications of deviations from
those plans, as well as decreasing the effects of publication bias by
enabling identification of research that was conducted but not
published. Like reporting guidelines, (pre)registration forms often have
specific structures that facilitate systematic reporting of important
items. The preregr package facilitates specifying (pre)registrations in
R and exporting them to a human-readable format (using R Markdown
partials or exporting to an HTML file) as well as human-readable
embedded data (using JSON), as well as importing such exported
(pre)registration specifications from such embedded JSON.

<!--------------------------------------------->
<!--  End of a custom bit for every package  -->
<!--------------------------------------------->

## Installation

You can install the released version of `preregr` from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages('preregr');
```

You can install the development version of `preregr` from
[GitLab](https://about.gitlab.com) with:

``` r
remotes::install_gitlab('r-packages/preregr');
```

(assuming you have `remotes` installed; otherwise, install that first
using the `install.packages` function)

You can install the cutting edge development version (own risk, don’t
try this at home, etc) of `preregr` from
[GitLab](https://about.gitlab.com) with:

``` r
remotes::install_gitlab('r-packages/preregr@dev');
```

<!--------------------------------------------->
<!-- Start of a custom bit for every package -->
<!--------------------------------------------->

## Getting started

There are currently six vignettes introducing `preregr`:

-   [Specifying (pre)registration
    content](https://r-packages.gitlab.io/preregr/articles/specifying_prereg_content.html)
-   [Create an R Markdown template from a
    form](https://r-packages.gitlab.io/preregr/articles/rmd_template_from_form.html)
-   [Creating a new (pre)registration form from
    R](https://r-packages.gitlab.io/preregr/articles/creating_prereg_form.html)
-   [Specifing a (pre) registration form using a
    spreadsheet](https://r-packages.gitlab.io/preregr/articles/creating_form_from_spreadsheet.html)
-   [Importing a (pre)registration from the embedded JSON from a
    URL](https://r-packages.gitlab.io/preregr/articles/importing_pregistration_from_url.html)
-   [Initializing a (pre)registration form from the embedded JSON from a
    URL](https://r-packages.gitlab.io/preregr/articles/importing_form_from_url.html)

## Included (pre)registration forms

At the moment, four forms come pre-installed with `preregr`:

-   [The OSF prereg
    form](https://r-packages.gitlab.io/preregr/articles/form_OSFprereg_v1.html);
-   [The Inclusive Systematic Review Registratio
    Form](https://r-packages.gitlab.io/preregr/articles/form_inclSysRev_v0_92.html);
-   [The Psychological Research Preregistration-Quantitative (aka
    PRP-QUANT)
    Template](https://r-packages.gitlab.io/preregr/articles/form_prpQuant_v1.html);
-   [Preregistration Template for Qualitative and Quantitative
    Ethnographic
    Studies](https://r-packages.gitlab.io/preregr/articles/form_preregQE_v0_93.html);

Of course, it would be great to add more! Check out the vignette about
[specifing a (pre) registration form using a
spreadsheet](https://r-packages.gitlab.io/preregr/articles/creating_form_from_spreadsheet.html)
and have a look at the specifications of these examples (linked to from
that vignette) to get started.

## Future Hopes and plans

-   Add more (pre)registration forms to the package
-   Properly set the validations and value templates for the currently
    included forms
-   Add a way to specify ‘multiple choice’ (as opposed to ‘single
    choice’) items
-   Add a way to specify an ‘other’ option for items
-   Allow specifying content for an item multiple times (as required by
    the PRP-QUANT form)
-   Explore whether it’s possible to create a Shiny app that imports a
    form specification, lets people complete it (i.e. show an actual
    form), and lets them download the produced HTML file
-   Improve the currently very rudimentary
    `preregr::form_to_rmd_template()` function to create a R Markdown
    template (cf the [prereg](https://github.com/crsh/prereg) package;
    [CRAN link](https://cran.r-project.org/package=prereg))
-   Integrate with related packages, e.g.:
    -   The Workflow for Open Reproducible Code in Science
        ([worcs](https://cjvanlissa.github.io/worcs/index.html))
    -   the Scienceverse
        ([scienceverse](https://github.com/scienceverse/scienceverse))
    -   the Reproducible Open Coding Kit
        ([rock](https://r-packages.gitlab.io/rock))

## Credits

The logo contains the Center for Open Science [preregistration
badge](https://commons.wikimedia.org/wiki/File:Preregistered_large_color_(vector).svg),
licensed under
[CC-BY](https://creativecommons.org/licenses/by/4.0/deed.en) by David
Mellor, and originally created by …

<!--------------------------------------------->
<!--  End of a custom bit for every package  -->
<!--------------------------------------------->
