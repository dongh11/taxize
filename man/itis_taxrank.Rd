\name{itis_taxrank}
\alias{itis_taxrank}
\title{Retrieve taxonomic rank name from given TSN.}
\usage{
itis_taxrank(query = NULL, ...)
}
\arguments{
  \item{query}{TSN for a taxonomic group (numeric). If
  query is left as default (NULL), you get all possible
  rank names, and their TSN's (using function
  \code{\link{getranknames}}. There is slightly different
  terminology for Monera vs. Plantae vs. Fungi vs. Animalia
  vs. Chromista, so there are separate terminologies for
  each group.}

  \item{...}{Further arguments passed on to
  \code{\link{gettaxonomicranknamefromtsn}}}
}
\value{
Taxonomic rank names or data.frame of all ranks.
}
\description{
Retrieve taxonomic rank name from given TSN.
}
\details{
You can print messages by setting verbose=FALSE.
}
\examples{
\dontrun{
# All ranks
itis_taxrank()

# A single TSN
itis_taxrank(query=202385)
# without message
itis_taxrank(query=202385, verbose=FALSE)

# Many TSN's
itis_taxrank(query=c(202385,183833,180543))
}
}

