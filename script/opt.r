## set local language
# Sys.setlocale("LC_CTYPE", "arabic" )

# dt_options for table outputs
options(
  warn = -1,
  echo = FALSE,
  shiny.maxRequestSize = 30 * 1024 ^ 2,
  DT.options = list(
    autoWidth = TRUE,
    scrollX = TRUE,
    scrollY = TRUE,
    scrollCollapse = TRUE,
    paging = TRUE,
    searching = TRUE,
    processing = FALSE
  )
)