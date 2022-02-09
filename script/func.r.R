################################################################################
## install libraries
################################################################################
get_library <- function(packageTitle) {
  ## update libraries to latest version and loads the required package
  if (packageTitle == "rmarkdown"){
    if (!packageTitle %in% installed.packages()) {
      install.packages("rmarkdown", type = "source")
    }
  }
  else if (packageTitle == "fireData"){
    if (!require("devtools")) {
      install.packages("devtools")
    }
    devtools::install_github("paulsp94/fireData")
  }
  else if (packageTitle == "yfinance"){
    if (!packageTitle %in% installed.packages()) {
      remotes::install_github("ljupch0/yfinance")
    }
  }
  ## this function checks and loads the required package
  else if (!packageTitle %in% installed.packages()) {
    install.packages(packageTitle, dependencies = TRUE, repos='http://cran.us.r-project.org')
  }
  
  suppressWarnings(
    suppressMessages({
      ## the package is assumed to be character strings
      require(packageTitle, character.only = TRUE)
    })
  )
} 

# find a model (dropping all the outputs)
################################################################################
## 
################################################################################
logWarning <-  function(w) {
  print(paste(symbol, "read.csv warning", w))
}

################################################################################
## 
################################################################################
logError <- function(e) {
  print(paste(symbol, "read.csv error", e))
}

################################################################################
## 
################################################################################
logWarning <- function(w) {
  print(paste(symbol, "prophet warning", w))
}

################################################################################
## 
################################################################################
logError <- function(e) {
  print(paste(symbol, "prophet error", e))
}
