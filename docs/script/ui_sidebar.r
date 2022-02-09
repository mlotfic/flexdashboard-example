library(yfinance)
getSymbols.yahoo(
      Symbols = symbol,
      env = env,
      from = from,
      to = today(),
      adjust = TRUE,
      warnings = FALSE,
      auto.assign = TRUE
    )
    ## save the environment as rds-file
    saveRDS(env, file = fileEnv, ascii = FALSE)
    
    
    # try to read from the environment or Internet
    # options("getSymbols.warning4.0" = FALSE)
    # if (!(symbol %in% names(env))) {
    #   #
    #   getSymbols.yahoo(
    #     Symbols = symbol,
    #     env = env,
    #     from = from,
    #     to = today(),
    #     adjust = TRUE,
    #     warnings = FALSE,
    #     auto.assign = TRUE
    #   )
    #   # save the environment as rds-file
    #   saveRDS(env, file = fileEnv, ascii = FALSE)
    # }
    # 
    # prices <- get(symbol, envir = env) 