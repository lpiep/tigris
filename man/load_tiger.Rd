% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helpers.R
\name{load_tiger}
\alias{load_tiger}
\title{Helper function to download Census data}
\usage{
load_tiger(
  url,
  refresh = getOption("tigris_refresh", FALSE),
  tigris_type = NULL,
  class = getOption("tigris_class", "sf"),
  progress_bar = TRUE,
  keep_zipped_shapefile = FALSE,
  filter_by = NULL,
  protocol = "ftp",
  timeout = 300
)
}
\arguments{
\item{url}{URL for zipped shapefile in TIGER database (constructed in calling function).}

\item{refresh}{Whether to re-download shapefiles if cached. Defaults to value of the global
option "tigris_refresh" if that option is, and FALSE if not. This will override the behavior
set in "tigris_refresh" option if a value (TRUE or FALSE) is provided.}

\item{tigris_type}{Added as an attribute to return object (used internally).}

\item{class}{Class of return object. Must be one of "sf" (the default) or "sp".}

\item{progress_bar}{If set to FALSE, do not display download progress bar
(helpful for R Markdown documents). Defaults to TRUE.}

\item{keep_zipped_shapefile}{If set to TRUE, do not delete zipped shapefile
(stored in temporary directory or TIGRIS_CACHE_DIR depending on the configuration of
global option "tigris_use_cache"). Defaults to FALSE.}

\item{filter_by}{Geometry used to filter the output returned by the function.  Can be an sf object, an object of class \code{bbox}, or a length-4 vector of format \code{c(xmin, ymin, xmax, ymax)} that can be converted to a bbox. Geometries that intersect the input to \code{filter_by} will be returned.}

\item{protocol}{Character string specifying the protocol to use for downloading files. Options are "ftp" (default) or "http". If "ftp", the URL will be modified to use FTP instead of HTTPS.}

\item{timeout}{Integer specifying the timeout in seconds for download operations. Defaults to 300 (5 minutes) to handle large files.}
}
\value{
sf or sp data frame
}
\description{
Helper function to download Census data
}
