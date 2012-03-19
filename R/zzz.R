.onLoad <- function(lib,pkg){

  library.dynam("LeLogicielR", pkg, lib)
  x <- read.dcf(file = system.file("DESCRIPTION", package = "LeLogicielR"))
  packageStartupMessage("\n")
  write.dcf(x)
  packageStartupMessage("\n")
  y <- system.file("cor.test.2.sample.R", package = "LeLogicielR")
  source(y)
}
