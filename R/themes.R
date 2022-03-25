#' Title
#'
#' @param name
#' @param reverse
#' @param flip
#' @param df
#'
#' @return
#' @export
#'
#' @examples
dbt_001_colors <- function(
    name = character(),
    reverse = FALSE,
    flip = FALSE,
    df = FALSE
) {
    tbl <- tibble::tribble(
        ~name, ~desc, ~value,
        "one", "red-500", "#f01314",
        "two", "blue-500", "#1455c0",
        "three", "cyan-500", "#ffd800",
        "one-light", "red-400", "#f75056",
        "two-light", "blue-400", "#347de0",
        "three-light", "cyan-400", "#55b9e6",
        "one-dark", "red-600", "#c50014",
        "two-dark", "blue-600", "#0c3992",
        "three-dark", "cyan-600", "#0087b9",
        "yellow", "yellow-500", "#ffd800",
        "green", "green-500", "#408335",
        "teal", "turquoise-500", "#00a099",
        "pink", "pink-500", "#e93e8f",
        "gray", "cool-gray-500", "#646973"
    )

    values <- tbl$value
    names(values) <- tbl$name

    result <- valid::valid(
        choice = name,
        choices = values,
        reverse = reverse,
        flip = flip
    )

    if (!df) {
        return(result)
    }

    tbl %>% dplyr::filter(value %in% result)
}
