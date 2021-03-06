% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/oldMSCdailyPtoObs.R
\name{oldMSCdailyPtoObs}
\alias{oldMSCdailyPtoObs}
\title{Creates an obs file from all MSC old-style precipitation files in a directory}
\usage{
oldMSCdailyPtoObs(directory = ".", timezone = "")
}
\arguments{
\item{directory}{Optional. Directory containing all precipitation files. File names must begin with \option{A0O}. The default is the current directory.}

\item{timezone}{Required.  Required. The name of the timezone of the data as a character string. This should be the timezone of your data, but omitting daylight savings time. Note that the timezone code is specific to your OS. To avoid problems, you should use a timezone without daylight savings time. Under Linux, you can use \option{CST} and \option{MST} for Central Standard or Mountain Standard time, respectively. Under Windows or OSX, you can use \option{etc/GMT+6} or \option{etc/GMT+7} for Central Standard and Mountain Standard time. DO NOT use \option{America/Regina} as the time zone, as it includes historical changes between standard and daylight savings time.}
}
\value{
If successful returns \code{TRUE}. If unsuccessful returns \code{FALSE}.
}
\description{
Reads all files of old-style MSC daily precipitation data from a specified directory and assembles them. It is assumed is that only days with precipitaion were recorded. Writes a obs file called \option{ppt.obs}.
}
\examples{
\dontrun{
oldMSCdailyPtoObs(timezone='Etc/GMT+7')
}
}

