% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/js.R
\name{minifyr_js_babel}
\alias{minifyr_js_babel}
\alias{minifyr_js_gcc}
\alias{minifyr_js_terser}
\alias{minifyr_js_uglify}
\alias{minifyr_js_yui}
\title{Minify JS Files}
\usage{
minifyr_js_babel(input, output)

minifyr_js_gcc(input, output)

minifyr_js_terser(input, output)

minifyr_js_uglify(input, output)

minifyr_js_yui(input, output)
}
\arguments{
\item{input}{File to minify}

\item{output}{Name of the output file}
}
\value{
The output path
}
\description{
Minify javaScript files.
}
\details{
Available minifiers are:
\itemize{
\item \href{https://github.com/babel/minify}{babel-minify}, with \code{minifyr_js_babel()}
\item \href{https://developers.google.com/closure/compiler/}{Google Closure Compiler}, with \code{minifyr_js_gcc()}
\item \href{https://github.com/terser-js/terser}{terser}, with \code{minifyr_js_terser()}
\item \href{https://github.com/mishoo/UglifyJS/tree/harmony}{uglify-es}, with \code{minifyr_js_uglify()}
\item \href{http://yui.github.io/yuicompressor/}{YUI Compressor}, with \code{minifyr_js_yui()}
}
}
