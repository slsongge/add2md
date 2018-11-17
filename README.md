
<!-- README.md is generated from README.Rmd. Please edit that file -->

[![lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![Travis build
status](https://travis-ci.org/JiaxiangBU/add2md.svg?branch=master)](https://travis-ci.org/JiaxiangBU/add2md)
[![GitHub All
Releases](https://img.shields.io/github/downloads/JiaxiangBU/add2md/total.svg)](https://github.com/JiaxiangBU/add2md)

# add2md

The goal of add2md is to help R users to type markdown in `.Rmd`.

## Installation

You can install the released version of add2md from
[Github](https://github.com/JiaxiangBU/add2md) with:

``` r
devtools::install_github('JiaxiangBU/add2md')
```

``` r
library(add2md)
```

## Usage

``` r
m()
#> This is the helper for R users to use markdown.
#> ────────────────────────  Type m1('url') URL ────────────────────────
#> Input m1("url","name")
#> Output [name](url)
#> e.g. m1("https://github.com/JiaxiangBU/add2md/","add2md")
#> [add2md](https://github.com/JiaxiangBU/add2md/)
#> ──────────────────────  Type m2('url','name') Image ──────────────────────
#> Input m2("url","name")
#>  Output ![name](url)
#>  e.g. m2("https://raw.githubusercontent.com/JiaxiangBU/picbackup/master/add2blog_sample_wallpaper.png","The blog wallpaper")
#>  ![The blog wallpaper](https://raw.githubusercontent.com/JiaxiangBU/picbackup/master/add2blog_sample_wallpaper.png)
#> ────────────────────────  Type m3('name') bold ────────────────────────
#> Input m3("name")
#>  Output **name**
#>  e.g. m3("Jiaxiang Li")
#>  **Jiaxiang Li**
```

### m1

Write down this sentence,

> <https://jiaxiangbu.github.io/add2md/> add2md官网

Here is a unit of space between the two phrases.

1.  Copy it
2.  In the R console, type `m1()`
3.  Paste it on your position

`[add2md官网](https://jiaxiangbu.github.io/add2md/)` The return is on the
clipboard. Just copy, `m1()` and paste \!

or **recommendation**\!

1.  select
    ![](https://raw.githubusercontent.com/JiaxiangBU/add2md/m-func/inst/pic/addin.png)
2.  click add-in and **automatically** paste

You can set the shortcut in *Tools -\> Modify Keyboard
Shortcuts*.

![](https://raw.githubusercontent.com/JiaxiangBU/add2md/m-func/inst/pic/shortcutsetting.png)

### m2

Similarly, for
> `m2`

> <https://raw.githubusercontent.com/JiaxiangBU/picbackup/master/add2blog_sample_wallpaper.png>
> The blog wallpaper

``` r
m2()
```

### m3

Similarly, for `m3`

> Jiaxiang Li

``` r
m3()
```

`**Jiaxiang Li**`

### m\_detail

    This is a summary title
    This is content like image, link and so on.
    It can be folded to help readers focus on someting important. 

In the console, call `m_detail()`, and paste on your document.

<details>

<summary>This is a summary title</summary>

This is content like image, link and so on. It can be folded to help
readers focus on someting important.

</details>

### pn2018-11-17 16:41:59

Choose the add-in `pn` to print the current time\!

## Example

See the [vignettes](https://jiaxiangbu.github.io/add2md/articles/).
