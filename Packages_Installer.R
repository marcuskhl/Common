<<<<<<< HEAD
#' installs necessary packages
packages.installer <- function(){
  list.of.packages <- c(
    # Web Scraping Tools:
    "XML", "rvest", "jsonlite", "rjson",
    # Misc Tools:
    "Hmisc", "MASS",

    # Data Manipulation Tools:
    "reshape2","dplyr","dplyr", "dtplyr", "tidyr", "janitor", "data.table","magrittr",# does not have reshape1
    # Modelling Tools:
    "psych", "gmodels", "caret", "ROCR", "cluster", "broom",
    # Multithreading:
    "foreach", "doParallel",
    # Input-Output:
    "sqldf", "RODBC", "readxl","openxlsx", "rio", "readr",
    # Misc:
    "zoo", "lubridate", "profvis", "scales", "RColorBrewer", "purrr"
  )

  update_and_install <- function(list.of.packages){
    new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
    update.packages(installed.packages()[,"Package"])
    if(length(new.packages)) install.packages(new.packages,depen=T)
    lapply(list.of.packages, library, character.only = TRUE)
  }
  update_and_install(list.of.packages)

=======
list.of.packages <- c("XML", "rvest", "Hmisc", "MASS",
                      "sparkTable","jsonlite","rattle",
                     "rio", "psych","readr","data.table","magrittr","sparklyr", "Rfacebook","RColorBrewer","RCurl","httpuv","httr","rjson",
                      "shiny","flexdashboard","gmodels","janitor", "caret","ROCR",
                      "foreach","profvis","sqldf","reshape2","dplyr","zoo",
                      "scales","RODBC", "readxl","openxlsx","doParallel","dplyr","tidyr")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
update.packages(installed.packages()[,"Package"])
if(length(new.packages)) install.packages(new.packages)
lapply(list.of.packages, library, character.only = TRUE)

cl <- makeCluster(4)
registerDoParallel(cl)


if(!is.na( match("Revo.version", ls(.BaseNamespaceEnv)))){
  list.of.packages <- c("RevoUtilsMath", "RevoUtils")
  new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
  update.packages(installed.packages()[,"Package"])
  if(length(new.packages)) install.packages(new.packages)
  lapply(list.of.packages, require, character.only = TRUE)
  setMKLthreads(4)
}
>>>>>>> 8b76579e403d756f0584bcf5d2a6c103b85ab3ce

  cl <- makeCluster(4)  # might have to change it back to 2 for crappy laptops
  registerDoParallel(cl)


  # For hardcore performance entheusiasts
  if(!is.na( match("Revo.version", ls(.BaseNamespaceEnv)))){
    list.of.packages <- c("RevoUtilsMath", "RevoUtils")
    update_and_install(list.of.packages)
    setMKLthreads(4)
  }

  cat("\014")
  print("Libraries Loaded")

}
