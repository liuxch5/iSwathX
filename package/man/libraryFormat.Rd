% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/libraryFormat.R
\name{libraryFormat}
\alias{libraryFormat}
\title{Standardise a data frame into library format}
\usage{
libraryFormat(datlib)
}
\arguments{
\item{datlib}{a data frame for a spectrum library}

\item{colnums}{a number representing the number of columns to keep
(default as 18)}
}
\value{
a data frame with specified number of columns
}
\description{
Standardise a data frame into library format
}
\examples{
libfile <- paste(system.file("files",package="iSwathX"),"Lib2.txt",sep="/")
datlib <- readLibFile(libfile)
dat <- libraryFormat(datlib)
}
