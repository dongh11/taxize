\name{get_tsn}
\alias{get_tsn}
\title{Get the TSN code for a search term.}
\usage{
  get_tsn(searchterm, searchtype)
}
\arguments{
  \item{searchterm}{A vector of common or scientific
  names.}

  \item{searchtype}{One of 'sciname', 'anymatch',
  'comnamebeg', 'comname', 'comnameend'.}
}
\value{
  A vector of taxonomic serial numbers (TSN). If a species
  is not found NA. See functions in \code{ritis}.
}
\description{
  \code{get_tsn} uses a variety of functions from the
  \code{ritis} package:
  \link{https://github.com/ropensci/ritis}.
}
\examples{
\dontrun{
get_tsn("Quercus douglasii", "sciname")
get_tsn(searchterm="Chironomus riparius", searchtype="sciname")
get_tsn(searchterm="polar bear", searchtype="comname")
get_tsn(c("Chironomus riparius","Quercus douglasii"), "sciname")
get_tsn(c("aa aa", "Chironomus riparius"), searchtype="sciname")
}
}
