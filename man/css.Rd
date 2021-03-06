% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/css.R
\name{minifyr_css_cleancss}
\alias{minifyr_css_cleancss}
\alias{minifyr_css_crass}
\alias{minifyr_css_cssnano}
\alias{minifyr_css_csso}
\alias{minifyr_css_sqwish}
\alias{minifyr_css_yui}
\title{Minify css}
\usage{
minifyr_css_cleancss(input, output)

minifyr_css_crass(input, output)

minifyr_css_cssnano(input, output)

minifyr_css_csso(input, output)

minifyr_css_sqwish(input, output)

minifyr_css_yui(input, output)
}
\arguments{
\item{input}{File to minify}

\item{output}{Name of the output file}
}
\value{
The output path
}
\description{
Minify css files.
}
\details{
Available minifiers are:
\itemize{
\item \href{https://github.com/jakubpawlowicz/clean-css}{clean-css}, with \code{minifyr_css_cleancss()}
\item \href{https://github.com/mattbasta/crass}{crass}, with \code{minifyr_css_crass()}
\item \href{https://github.com/cssnano/cssnano}{cssnano}, with \code{minifyr_css_cssnano()}
\item \href{https://github.com/css/csso}{csso}, with \code{minifyr_css_csso()}
\item \href{https://github.com/ded/sqwish}{sqwish}, with \code{minifyr_css_sqwish()}
\item \href{http://yui.github.io/yuicompressor/}{yui}, with \code{minifyr_css_yui()}
}
}
