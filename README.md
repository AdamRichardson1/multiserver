
<!-- README.md is generated from README.Rmd. Please edit that file -->

# multiserver

<!-- badges: start -->
<!-- badges: end -->

The goal of multiserver is to simulate how customers use a first come,
first served queuing system, when their arrival and service times are
already predetermined.

## Installation

You can install the development version of multiserver from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("AdamRichardson1/multiserver")
```

## Example

This is a basic example which shows you how to use the package with the
provided bank data set:

``` r
library(multiserver)
## basic example code
data(bank)

multiserver(bank$arrival_time,bank$service_time, 3)
#> # A tibble: 100 x 4
#>    Arrivals ServiceBegins ChosenServer ServiceEnds
#>       <dbl>         <dbl>        <dbl>       <dbl>
#>  1     119.          119.            1        149.
#>  2     134.          134.            2        289.
#>  3     326.          326.            3        356.
#>  4     339.          339.            1        424.
#>  5     372.          372.            2        652.
#>  6     396.          396.            3        474.
#>  7     400.          424.            1        459.
#>  8     491.          491.            1        650.
#>  9     531.          531.            3        762.
#> 10     628.          650.            1        756.
#> # ... with 90 more rows
```
