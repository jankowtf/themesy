#' Theme 'dbt_001': colors
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
#' dbt_001_colors()
dbt_001_colors <- function(
    name = character(),
    reverse = FALSE,
    flip = FALSE,
    df = FALSE
) {
    tbl <- tibble::tribble(
        ~name, ~desc, ~value,
        "one", "red-500", "#f01314",
        "one-light", "red-400", "#f75056",
        "one-dark", "red-600", "#c50014",

        "two", "blue-500", "#1455c0",
        "two-light", "blue-400", "#347de0",
        "two-dark", "blue-600", "#0c3992",

        "three", "cyan-500", "#ffd800",
        "three-light", "cyan-400", "#55b9e6",
        "three-dark", "cyan-600", "#0087b9",

        "red", "red-500", "#f01314",
        "red-light", "red-400", "#347de0",
        "red-dark", "red-600", "#c50014",

        "blue", "blue-500", "#1455c0",
        "blue-light", "blue-400", "#347de0",
        "blue-dark", "blue-600", "#0c3992",

        "yellow", "yellow-500", "#ffd800",
        "yellow-light", "yellow-400", "#fff000",
        "yellow-dark", "yellow-600", "#ffbb00",

        "cyan", "cyan-500", "#ffd800",
        "cyan-light", "cyan-400", "#55b9e6",
        "cyan-dark", "cyan-600", "#0087b9",

        "green", "green-500", "#408335",
        "green-light", "green-400", "#66a558",
        "green-dark", "green-600", "#2a7230",

        "light-green", "light-green-500", "#63a615",
        "light-green-light", "light-green-400", "#78be14",
        "light-green-dark", "light-green-600", "#508b1b",

        "turquoise", "turquoise-500", "#00a099",
        "turquoise-light", "turquoise-400", "#3cb5ae",
        "turquoise-dark", "turquoise-600", "#008984",

        "gray", "cool-gray-500", "#646973",
        "gray-light", "cool-gray-400", "#878C96",
        "gray-dark", "cool-gray-600", "#3C414B",

        "pink", "pink-500", "#e93e8f",
        "pink-light", "pink-400", "#ee7bae",
        "pink-dark", "pink-600", "#db0078"
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

#' Title
#'
#' @return
#' @export
#'
#' @examples
#' adminlte_color_dbt_001()
adminlte_color_dbt_001 <- function() {
    fresh::adminlte_color(
        light_blue = themesy::dbt_001_colors("blue-light"),
        red = themesy::dbt_001_colors("red"),
        green = themesy::dbt_001_colors("green"),
        aqua = themesy::dbt_001_colors("cyan"),
        yellow = themesy::dbt_001_colors("yellow"),
        blue = themesy::dbt_001_colors("blue"),
        navy = themesy::dbt_001_colors("blue-dark"),
        teal = themesy::dbt_001_colors("turquoise"),
        gray_lte = themesy::dbt_001_colors("gray")
    )
}

#' Title
#'
#' @return
#' @export
#'
#' @examples
#' adminlte_vars_btn_dbt_001()
adminlte_vars_btn_dbt_001 <- function() {
    fresh::adminlte_vars(
        "btn-default-color" = themesy::dbt_001_colors("red"),
        "btn-default-border" = themesy::dbt_001_colors("blue")
    )
}
