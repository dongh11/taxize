\name{tp_classification}
\alias{tp_classification}
\title{Return all synonyms for a taxon name with a given id.}
\usage{
tp_classification(id = NULL, key = NULL, callopts = list())
}
\arguments{
  \item{id}{A Tropicos name ID}

  \item{key}{Your Tropicos API key; loads from .Rprofile.}

  \item{callopts}{Further args passed on to httr::GET}
}
\value{
A data.frame giving the hierarchy.
}
\description{
THIS FUNCTION IS DEPRECATED.
}
\examples{
\dontrun{
tp_classification(id = 25509881)
tp_classification(id = c(25509881,2700851))
tp_classification(id = c(25509881,2700851), callopts=verbose())
}
}
\references{
\url{http://services.tropicos.org/help?method=GetNameHigherTaxaXml}
}

