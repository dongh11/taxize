\name{resolve}
\alias{resolve}
\title{Resolve names from many different sources}
\usage{
resolve(query, from = "iplant", ...)
}
\arguments{
  \item{query}{Vector of names}

  \item{from}{Source to check names against. One of iplant,
  tnrs, or gnr}

  \item{...}{Further named args passed on to each
  respective function.}
}
\description{
Resolve names from many different sources
}
\examples{
\dontrun{
resolve(query=c("Helianthus annuus", "Homo sapiens"))
resolve(query=c("Helianthus annuus", "Homo sapiens"), from='tnrs', source="NCBI")
resolve(query=c("Helianthus annuus", "Homo sapiens"), callopts=verbose())
resolve(query=c("Helianthus annuus", "Homo sapiens"), callopts=list(verbose=TRUE, timeout.ms=3))
}
}

