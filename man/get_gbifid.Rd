\name{get_gbifid}
\alias{get_gbifid}
\title{Get the GBIF backbone taxon ID from taxonomic names.}
\usage{
get_gbifid(sciname, ask = TRUE, verbose = TRUE)
}
\arguments{
  \item{sciname}{character; scientific name.}

  \item{ask}{logical; should get_colid be run in
  interactive mode? If TRUE and more than one ID is found
  for the species, the user is asked for input. If FALSE NA
  is returned for multiple matches.}

  \item{verbose}{logical; If TRUE the actual taxon queried
  is printed on the console.}
}
\value{
A vector of unique identifiers. If a taxon is not found NA.
If more than one ID is found the function asks for user
input.
}
\description{
Get the GBIF backbone taxon ID from taxonomic names.
}
\details{
Internally in this function we use a function to search
GBIF's taxonomy, and if we find an exact match we return
the ID for that match. If there isn't an exact match we
return the options to you to pick from.
}
\examples{
\dontrun{
get_gbifid(sciname='Poa annua')
get_gbifid(sciname='Pinus contorta')
get_gbifid(sciname='Puma concolor')

get_gbifid(c("Poa annua", "Pinus contorta"))

# When not found
get_gbifid(sciname="uaudnadndj")
get_gbifid(c("Chironomus riparius", "uaudnadndj"))
}
}
\author{
Scott Chamberlain, \email{myrmecocystus@gmail.com}
}
\seealso{
\code{\link[taxize]{get_tsn}},
\code{\link[taxize]{get_uid}},
\code{\link[taxize]{get_tpsid}},
\code{\link[taxize]{get_eolid}},
\code{\link[taxize]{get_colid}}
}

