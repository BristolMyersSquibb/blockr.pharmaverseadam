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

stack <- new_stack(
    adam_block
)

ui <- fluidPage(
    theme = bslib::bs_theme(5L),
    generate_ui(stack)
)

server <- function(...){
    generate_server(stack)
}

shinyApp(ui, server)
```

