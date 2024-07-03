<!-- badges: start -->
<!-- badges: end -->

# blockr.pharmaverseadam

Pharmaverse ADAM datasets for blockr

## Installation

You can install the development version of blockr.pharmaverseadam from [GitHub](https://github.com/) with:

```r
# install.packages("remotes")
remotes::install_github("blockr-org/blockr.pharmaverseadam")
```

## Example

```r
library(blockr)
library(blockr.pharmaverseadam)

serve_stack(new_stack(new_adam_block(selected = "adcm")))

# Will error
# serve_stack(new_stack(new_adam_block(selected = "test")))
```

