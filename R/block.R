#' Adam block
#' 
#' Block listing pharmaversesdtm
#' 
#' @param ... Passed to [blockr::new_data_block()]
#' 
#' @import pharmaverseadam
#' @importFrom blockr new_block new_select_field initialize_block
#' 
#' @export
adam_block <- function(...) {
  initialize_block(new_adam_block(...))
}

new_adam_block <- function(...) {
  ds <- utils::data(
    package = "pharmaverseadam"
  )

  new_block(
    fields = list(
      dataset = new_select_field(choices = ds$results[, 3])
    ),
    expr = quote({
      e <- new.env()
      utils::data(.(dataset), package = "pharmaverseadam", envir = e)
      e[[.(dataset)]]
    }),
    class = c("adam_block", "data_block")
  )
}
