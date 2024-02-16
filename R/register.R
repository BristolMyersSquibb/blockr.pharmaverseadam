#' @importFrom blockr register_block
register_adam_blocks <- function(pkg = "blockr.pharmaverseadam"){
  register_block(
    constructor = adam_block,
    name = "ADAM data",
    description = "ADAM datasets from the pharmaverse",
    classes = c("adam_block", "data_block"),
    input = NA_character_,
    output = "data.frame",
    package = pkg
  )
}
