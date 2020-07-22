
<!-- README.md is generated from README.Rmd. Please edit that file -->

# minifyr

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

> Extremely high-speed network infrastructures are becoming more and
> more popular in developed countries. However, we still face crowded
> and low-speed Wi-Fi environments on airport, cafe, international
> conference, etc. Especially, a network environment of mobile devices
> requires efficient usage of network bandwidth.

*Empirical Study on Effects of Script Minification and HTTP Compression
for Traffic Reduction*,
<http://www27.cs.kobe-u.ac.jp/achieve/data/pdf/1198.pdf>

The goal of `{minifyr}` is to provide a wrapper around the `node-minify`
NodeJS module.

This package bundles the whole NodeJS minifiers, so that they can be run
from R.

More background info at:
[colinfay.me/node-r-package/](https://colinfay.me/node-r-package/)

## Installation

You can install the dev version of `{minifyr}` with:

``` r
remotes::install_github("colinfay/minifyr")
```

**NOTE: YOU WILL NEED NODEJS ON YOUR MACHINE**

## Example

### Install the Node deps

You’ll need to run this once:

``` r
# Check node and npm are available
minifyr::node_available()
# Will install the node dependencies
minifyr::minifyr_npm_install()
```

### Note

For now, all the Node functions are called with their default arguments.

### Minifying CSS

  - [clean-css](https://github.com/jakubpawlowicz/clean-css), with
    `minifyr_css_cleancss()`
  - [crass](https://github.com/mattbasta/crass), with
    `minifyr_css_crass()`
  - [cssnano](https://github.com/cssnano/cssnano), with
    `minifyr_css_cssnano()`
  - [csso](https://github.com/css/csso), with `minifyr_css_csso()`
  - [sqwish](https://github.com/ded/sqwish), with `minifyr_css_sqwish()`
  - [yui](http://yui.github.io/yuicompressor/), with `minifyr_css_yui()`

### Minifying HTML

  - [html-minifier](https://github.com/kangax/html-minifier), with
    `minifyr_html_minifier()`

### Minify JS

  - [babel-minify](https://github.com/babel/minify), with
    `minifyr_js_babel()`
  - [Google Closure
    Compiler](https://developers.google.com/closure/compiler/), with
    `minifyr_js_gcc()`
  - [terser](https://github.com/terser-js/terser), with
    `minifyr_js_terser()`
  - [uglify-js](https://github.com/mishoo/UglifyJS2), with
    `minifyr_js_uglify()`
  - [YUI Compressor](http://yui.github.io/yuicompressor/), with
    `minifyr_js_yuiy()`

### Minify JSON

  - [jsonminify](https://github.com/babel/minify), with
    `minifyr_json_jsonminify()`

### Minifyr example

minifyr comes with a series of examples:

``` r
library(minifyr)
minifyr_example("css")
[1] "/var/folders/5z/rm2h62lj45d332kfpj28c8zm0000gn/T//RtmpW8h6s4/file839381dce1d.css"
minifyr_example("html")
[1] "/var/folders/5z/rm2h62lj45d332kfpj28c8zm0000gn/T//RtmpW8h6s4/file8392cc6eeb3.html"
minifyr_example("json")
[1] "/var/folders/5z/rm2h62lj45d332kfpj28c8zm0000gn/T//RtmpW8h6s4/file839386140bc.json"
minifyr_example("js")
[1] "/var/folders/5z/rm2h62lj45d332kfpj28c8zm0000gn/T//RtmpW8h6s4/file83978e1138e.js"
```

Note that files are copied to a tempfile so that you don’t accidentally
erase the original files.

### Example

``` bash
echo "body {
  margin: 25px;
  background-color: rgb(240,240,240);
  font-family: arial, sans-serif;
  font-size: 14px;
}" >> "test.css"
```

``` bash
cat test.css
body {
  margin: 25px;
  background-color: rgb(240,240,240);
  font-family: arial, sans-serif;
  font-size: 14px;
}
```

``` r
minifyr::minifyr_css_cleancss("test.css", "test2.css")
```

``` bash
cat test2.css
body{margin:25px;background-color:#f0f0f0;font-family:arial,sans-serif;font-size:14px}
```

Note that all minifiers do not minify the same way

``` r
minifyr::minifyr_css_crass("test.css", "test3.css")
```

``` bash
cat test3.css
body{background-color:#f0f0f0;font-family:arial,sans-serif;font-size:14px;margin:25px}
```
