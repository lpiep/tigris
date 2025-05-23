% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/national.R
\name{regions}
\alias{regions}
\title{Download a US regions cartographic boundary shapefile into R}
\usage{
regions(resolution = "500k", year = NULL, ...)
}
\arguments{
\item{resolution}{The resolution of the cartographic boundary file.
Defaults to '500k'; options include '5m' (1:5 million) and '20m' (1:20 million).}

\item{year}{the data year; defaults to 2022}

\item{...}{arguments to be passed to internal function \code{load_tiger}, which is not exported. See Additional Arguments.}
}
\description{
Download a US regions cartographic boundary shapefile into R
}
\section{Additional Arguments}{

Additional arguments that can be passed in \code{...} are:
\itemize{
\item \code{class} Desired class of return object: \code{"sf"} (the default) or \code{"sp"}.  sp classes should be considered deprecated as of tigris version 2.0, but legacy support is still available.
\item \code{progress_bar} If set to \code{FALSE}, do not display download progress bar (helpful for R Markdown documents). Defaults to \code{TRUE}.
\item \code{keep_zipped_shapefile} If set to \code{TRUE}, do not delete zipped shapefile (stored in temporary directory or \code{TIGRIS_CACHE_DIR}
depending on the configuration of global option \code{"tigris_use_cache"}). Defaults to \code{FALSE}.
\item \code{refresh} Whether to re-download cached shapefiles (\code{TRUE} or \code{FALSE}) . The default is either \code{FALSE} or the value of global
option \code{"tigris_refresh"} if it is set. Specifying this argument will override the behavior set in \code{"tigris_refresh"} global option.
\item \code{filter_by} Geometry used to filter the output returned by the function.  Can be an sf object, an object of class \code{bbox}, or a length-4 vector of format \code{c(xmin, ymin, xmax, ymax)} that can be converted to a bbox. Geometries that intersect the input to \code{filter_by} will be returned.
\item \code{protocol} Character string specifying the protocol to use for downloading files. Options are "ftp" (default) or "http". If "ftp", the URL will be modified to use FTP instead of HTTPS.
\item \code{timeout} Integer specifying the timeout in seconds for download operations. Defaults to 300 (5 minutes) to handle large files.
}
}

\examples{
\dontrun{
library(tigris)
library(leaflet)

us_regions <- regions(resolution = '20m')

leaflet(us_regions) \%>\%
   addTiles() \%>\%
   addPolygons()
}
}
\seealso{
Other national cartographic boundary functions: 
\code{\link{divisions}()},
\code{\link{nation}()}
}
\concept{national cartographic boundary functions}
