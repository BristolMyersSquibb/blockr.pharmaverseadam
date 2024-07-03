#' Adam block
#' 
#' Block listing pharmaversesdtm
#' 
#' @param selected Default selected dataset. Must belong to the
#' pharmaverseadam package.
#' @param ... Passed to [blockr::new_block()]
#' 
#' @import pharmaverseadam
#' @importFrom blockr new_block new_select_field
#' 
#' @export
new_adam_block <- function(selected = character(), ...) {
  ds <- utils::data(
    package = "pharmaverseadam"
  )

  if (length(selected)) {
    stopifnot(
      "selected dataset not in available choices" = selected %in% ds$results[, 3]
    )
  }

  new_block(
    fields = list(
      dataset = new_select_field(selected, choices = ds$results[, 3])
    ),
    expr = quote({
      e <- new.env()
      utils::data(.(dataset), package = "pharmaverseadam", envir = e)
      e[[.(dataset)]]
    }),
    class = c("adam_block", "data_block"),
    ...
  )
}
