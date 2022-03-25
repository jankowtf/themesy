test_that("multiplication works", {
    result <- dbt_001_colors()

    expected <-
        c(
            one = "#f01314",
            two = "#1455c0",
            three = "#ffd800",
            "one-light" = "#f75056",
            "two-light" = "#347de0",
            "three-light" = "#55b9e6",
            "one-dark" = "#c50014",
            "two-dark" = "#0c3992",
            "three-dark" = "#0087b9",
            yellow = "#ffd800",
            green = "#408335",
            teal = "#00a099",
            pink = "#e93e8f",
            gray = "#646973"
        )

    expect_identical(result, expected)
})
