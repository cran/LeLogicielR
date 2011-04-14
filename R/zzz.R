.onLoad <- function(lib,pkg){

  library.dynam("LeLogicielR", pkg, lib)
  x <- read.dcf(file = system.file("DESCRIPTION", package = "LeLogicielR"))
  cat("\n")
  write.dcf(x)
  cat("\n")
  y <- system.file("cor.test.2.sample.R", package = "LeLogicielR")
  source(y)
}
