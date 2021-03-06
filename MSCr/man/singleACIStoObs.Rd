% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/singleACIStoObs.R
\name{singleACIStoObs}
\alias{singleACIStoObs}
\title{Converts single ACIS file to obs files}
\usage{
singleACIStoObs(ACISfile = "", outDir = "", timezone = "etc/GMT+7",
  quiet = TRUE)
}
\arguments{
\item{ACISfile}{Required. The file containing the ACIS data. Note that the file name should be the default produced by the ACID download system, and daily file names must contain the word 'Daily'.}

\item{outDir}{Optional. The location for the \code{.obs} files. If not specified, then the directory containing the ACIS file will be used.}

\item{timezone}{Optional. The name of the timezone of the data as a character string. This should be the timezone of the data, i.e. Mountain Standard Time. Note that the timezone code is specific to your OS. Under Linux, you can use \option{MST} for Mountain Standard time. Under Windows or OSX, you can use \option{etc/GMT+7}, which is the default.}

\item{quiet}{Optional. Suppresses display of messages, except for errors. If you are calling this function in an \R script, you will usually leave \code{quiet=TRUE} (i.e. the default). If you are working interactively, you will probably want to set \code{quiet=FALSE}.}
}
\value{
If successful, returns \code{TRUE}. If unsuccessful, returns \code{FALSE}.
}
\description{
Reads in a single file of met data downloaded from the Alberta Climate Information Service (ACIS), \url{https://agriculture.alberta.ca/acis/}. Each station's values are written to a separate \code{.obs} file, named after the station. The comments for all of the variables are written to a separate \code{.csv} file for each station.
}
\examples{
\dontrun{
result <- singleACIStoObs('ACISHourlyData-20170209-20170223-PID122537324.csv')}
}
\author{
Kevin Shook
}

