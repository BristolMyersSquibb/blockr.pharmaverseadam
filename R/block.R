#' Adam block
#' 
#' Block listing pharmaversesdtm
#' 
#' @param ... Passed to [blockr::new_data_block()]
#' 
#' @import pharmaverseadam
#' @importFrom blockr new_data_block initialize_block
#' 
#' @export
new_adam_block <- function(...) {
  initialize_block(
    new_data_block(
      ...,
      dat = as.environment("package:pharmaverseadam")
    )
  )
}

adam_block <- function(...) {
  initialize_block(new_adam_block(...))
}
