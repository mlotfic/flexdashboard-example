source("script/func.r.R")

## attach libraries
suppressWarnings(
  suppressMessages({
    lapply(
      c(
        "yfinance",
        "rmarkdown",
        "shiny",
        "dashboardthemes",
        "flexdashboard",
        "xts",
        "lubridate",
        "quantmod",
        "prophet",
        "BatchGetSymbols",
        "ggplot2",
        'plotly',
        "dplyr",
        "fireData"
        # "jsonlite"
      ),
      get_library
    )
  })
)