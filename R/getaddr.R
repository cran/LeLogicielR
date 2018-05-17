VectorAddr <- getaddr <- function(x) {

  if (! is.vector(x)) stop("x should be a vector")

  #dyn.load("getaddr.so")
  
  if (is.integer(x)) {  
    addr <- list(shift = 0L, zero = .Call("getAddrInt", x, PACKAGE = "LeLogicielR"))
    attr(addr, "type") <- "integer"
    attr(addr, "size") <- as.integer(round((log(.Machine$integer.max, base = 2) + 1) / 8))
  } else if (is.double(x))  { 
    addr <- list(shift = 0L, zero = .Call("getAddrDbl", x, PACKAGE = "LeLogicielR"))
    attr(addr, "type") <- "double"
    attr(addr, "size") <- as.integer((.Machine$double.exponent + .Machine$double.digits) / 8)
  } else addr <- NULL

  #dyn.unload("getaddr.so")

  if(is.null(addr)) stop("x should be double or integer")

  attr(addr, "length") <- length(x)
  attr(addr, "out.of.bounds") <- FALSE
  class(addr) <- "VectorAddr"
  return(addr)
  
}

print.VectorAddr <- function(x, ...) {
  #dyn.load("getaddr.so")
  out <- .Call("printAddr", x$zero + x$shift, PACKAGE = "LeLogicielR")
  cat("Integer format: ") ; cat(format(out, digits=22)) ; cat("\n")
  #dyn.unload("getaddr.so")
}

Ops.VectorAddr <- function(e1,e2) {
  if(.Generic=="+" && is.integer(e2)) {
    ee <- e1
    ee$shift <- e2
    if(e2 < 0 || e2 > (attr(ee,"length")-1L) * attr(ee,"size") ) {
        warning("address out of range")
        attr(ee,"out.of.bounds") <- TRUE
    } else attr(ee,"out.of.bounds") <- FALSE
    ee
  }
}

writeaddr <- function(addr,newval,type="integer",size=4,length=1,out.of.bounds=FALSE) {

  if (class(addr) == "integer")  addr <- itoAddr(addr, type = "integer", size = size, length = length, out.of.bounds = out.of.bounds)
    
  if(!inherits(addr,"VectorAddr")) stop("First argument has to be of class Addr")
  
  if (length(newval) != 1) stop("newval should be of length 1")
  
  if(attr(addr,"out.of.bounds")) stop("address out of bounds")

  switch(attr(addr,"type"), 
  integer = #(is.integer(newval)) 
  {
    #dyn.load("getaddr.so")
    .Call("writeAtAddrInt",addr$zero+addr$shift,newval,PACKAGE="LeLogicielR")
    #dyn.unload("getaddr.so")
  },
  double = #if (is.double(newval)) 
  {
    #dyn.load("getaddr.so")
    .Call("writeAtAddrDbl",addr$zero+addr$shift,newval,PACKAGE="LeLogicielR")
    #dyn.unload("getaddr.so")
  })
  return(invisible())
}

update.VectorAddr <- function(object,...) writeaddr(object,...)


itoAddr <- function(x,type="integer",size=4,length=1,out.of.bounds=FALSE) {

  if (! is.vector(x)) stop("x should be a vector")
  if (length(x) != 2) stop("length(x) should be equal to 2")

  addr <- list(shift=x[1],zero=x[2])
  attr(addr,"type") <- type
  attr(addr,"size") <- size
  attr(addr,"length") <- length
  attr(addr,"out.of.bounds") <- out.of.bounds
  attr(addr,"class") <- "VectorAddr"

  return(addr)

}
