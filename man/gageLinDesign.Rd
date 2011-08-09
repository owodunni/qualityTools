\name{gageLinDesign}
\alias{gageLinDesign}
\title{
Function to create a object of class MSALinearity.
}
\description{
Function generates an object that can be used with the function \code{\link{gageLin}}.
}
\usage{
gageLinDesign(ref, n = 5)
}
\arguments{
  \item{ref}{
    is a vector and contains the reference values for each group.
}
  \item{n}{
    is a single value and gives the amount of runs.
}
}
\value{
The Function returns an object of the class MSALinearity.
}
\author{
     Thomas Roth: thomas.roth@tu-berlin.de \cr
     Etienne Stockhausen: stocdarf@mailbox.tu-berlin.de
}
\note{
The results for the single should be entered with the help of \code{\link{response}}! 
}
\seealso{
  \code{\link{gageLin}}  \cr
  \code{\link{response}} \cr
  \code{\link{edit}}\cr
}
\examples{

A=c(2.7,2.5,2.4,2.5,2.7,2.3,2.5,2.5,2.4,2.4,2.6,2.4)  # results of run A-E
B=c(5.1,3.9,4.2,5,3.8,3.9,3.9,3.9,3.9,4,4.1,3.8)
C=c(5.8,5.7,5.9,5.9,6,6.1,6,6.1,6.4,6.3,6,6.1)
D=c(7.6,7.7,7.8,7.7,7.8,7.8,7.8,7.7,7.8,7.5,7.6,7.7)
E=c(9.1,9.3,9.5,9.3,9.4,9.5,9.5,9.5,9.6,9.2,9.3,9.4)

temp=gageLinDesign(ref=c(2,4,6,8,10),n=12)            # create Design
results=data.frame(rbind(A,B,C,D,E))                  # create data.frame for results
response(temp)=results                                # enter results in Design
temp
}