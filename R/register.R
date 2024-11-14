#' @importFrom blockr register_block
register_adam_blocks <- function(pkg = "blockr.pharmaverseadam"){
  register_block(
    constructor = new_adam_block,
    name = "ADAM data",
    description = "ADAM datasets from the pharmaverse",
    package = pkg
  )
}
