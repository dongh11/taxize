\name{gni_details}
\alias{gni_details}
\title{Search for taxonomic name details using the Global Names Index.}
\usage{
gni_details(id = NULL, all_records = NULL,
  url = "http://gni.globalnames.org/name_strings/")
}
\arguments{
  \item{id}{Name id.}

  \item{all_records}{If all_records is 1, GNI returns all
  records from all repositories for the name string (takes
  0, or 1, default is 1).}

  \item{url}{Base url for the API; leave as is.}
}
\value{
Data.frame of results.
}
\description{
Uses the Global Names Index, see
\url{http://gni.globalnames.org/} for information.
}
\examples{
\dontrun{
gni_details(id = 17802847)
library(plyr)
ldply(list(1265133, 17802847), gni_details)
}
}
\author{
Scott Chamberlain {myrmecocystus@gmail.com}
}
\seealso{
\code{\link{gnr_datasources}}, \code{\link{gni_search}}.
}
\keyword{globalnamesindex}
\keyword{names}
\keyword{taxonomy}

