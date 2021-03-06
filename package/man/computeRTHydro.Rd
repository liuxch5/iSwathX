% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/computeRTHydro.R
\name{computeRTHydro}
\alias{computeRTHydro}
\title{Plot for hydrophobicity based retention time correlation of two libraries}
\usage{
computeRTHydro(dat1, dat2, datHydroIndex, nomod = FALSE,
  label1 = "Base Lib", label2 = "External Lib")
}
\arguments{
\item{dat1}{A data frame containing the first spectrum library}

\item{dat2}{A data frame containing the second spectrum library}

\item{nomod}{a logic value, representing if the modified peptides and its
fragment ions will be removed. FALSE (default) means not removing.}

\item{label1}{a character string representing the x axis label for plotting}

\item{label2}{a character string representing the y axis label for plotting}
}
\value{
Plots of RT correlation and RT residual will be saved
under current working directory. a list of training set dataframe, hydro-based plot and hydro-based residual plot.
}
\description{
Plot for hydrophobicity based retention time correlation of two libraries
}
\examples{
libfiles <- paste(system.file("files",package="iSwathX"),
   c("Lib2.txt","Lib3.txt"),sep="/")
hydroFile <- paste(system.file("files", package = "iSwathX"),
                                      "hydroIndex.txt", sep = "/")
datBaseLib <- readLibFile(libfiles[1])
datExtLib <- readLibFile(libfiles[2])
hydro <- readLibFile(hydroFile, type = "hydro")

list.hydrocor <- computeRTHydro(datBaseLib, datExtLib, hydro)
list.hydrocor[[2]]
list.hydrocor[[3]]
}
