\name{writeaddr}
\alias{writeaddr}
\alias{itoAddr}
\title{Writing a value at some memory address}
\description{Writing a value at some memory address}
\usage{writeaddr(addr, newval, type = "integer",
size = 4, length = 1, out.of.bounds = FALSE)}
\arguments{
  \item{addr}{Integer value. Address in memory.}
  \item{newval}{New value to write at this address.}
  \item{type}{type}
  \item{size}{size}
  \item{length}{length}
  \item{out.of.bounds}{TRUE or FALSE}
}
\value{Nothing is returned.}
\references{
Chapter 9 (Managing Sessions) from the book: The R Software,
Fundamentals of Programming and Statistical Analysis
}
\author{
Lafaye de Micheaux Pierre <lafaye@unsw.edu.au>, Remy Drouilhet <Remy.Drouilhet@upmf-grenoble.fr>, Liquet Benoit <b.liquet@uq.edu.au>
}
\examples{
\dontrun{
x <- c(8L,9L)
addr <- getaddr(x)$addr.int # Gets the address of the first
                            # box of the 64-box block where x
                            # is stored.
addr
writeaddr(addr,6L) # Write the integer 6 at this address.
x
writeaddr(addr+4L,7L) # An integer is coded over 4 bytes,
                      # hence increment the address by 4 to
                      # get to x[2].
x
x <- c(12.8,4.5)
x
addr <- getaddr(x)$addr.int # Get the address of the first box
                            # of the 128-box block where x is
                            # stored.
writeaddr(addr,6.2)
x
writeaddr(addr+8L,7.1) # A double is coded over 8 bytes.
x
}
}

