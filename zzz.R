.onLoad <- function(libname, pkgname){
  packages.installer()
  cl <- makeCluster(4)
  registerDoParallel(cl)
  options(digits=15)
  cat("\014")
<<<<<<< HEAD
}


.onAttach <- function(...) {
  packageStartupMessage("Libraries Loaded\n")
  packageStartupMessage("Functions Loaded\n")
  packageStartupMessage("Keep Calm and Drink Basket Pressed Shiraz :)\n")
=======
  print("Libraries Loaded")
  
>>>>>>> 8b76579e403d756f0584bcf5d2a6c103b85ab3ce
}
