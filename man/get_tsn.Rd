\name{get_tsn}
\alias{get_tsn}
\title{Get the TSN code for a search term.}
\usage{
get_tsn(searchterm, searchtype = "sciname", ask = TRUE, verbose = TRUE)
}
\arguments{
  \item{searchterm}{character; A vector of common or
  scientific names.}

  \item{searchtype}{character; One of 'sciname',
  'comnamebeg', 'comname', 'comnameend'.}

  \item{ask}{logical; should get_tsn be run in interactive
  mode? If TRUE and more than one TSN is found for teh
  species, the user is asked for input. If FALSE NA is
  returned for multiple matches.}

  \item{verbose}{logical; should progress be printed?}
}
\value{
A vector of taxonomic serial numbers (TSN). If a taxon is
not found NA. If more than one TSN is found the function
asks for user input (if ask = TRUE), otherwise returns NA.
Comes with an attribute \emph{match} to investigate the
reason for NA (either 'not found', 'found' or if ask =
FALSE 'multi match') See functions in the \code{itis}
function.
}
\description{
Retrieve the taxonomic serial numbers (TSN) of a taxon from
ITIS.
}
\examples{
\dontrun{
get_tsn(searchterm = "Quercus douglasii", searchtype = "sciname")
get_tsn(searchterm = "Chironomus riparius", searchtype = "sciname")
get_tsn(c("Chironomus riparius","Quercus douglasii"), "sciname")
splist <- c("annona cherimola", 'annona muricata', "quercus robur",
		"shorea robusta", "pandanus patina", "oryza sativa", "durio zibethinus")
get_tsn(splist, "sciname")

# When not found
get_tsn("howdy")
get_tsn(c("Chironomus riparius", "howdy"))

# Using common names
get_tsn(searchterm="black bear", searchtype="comname")
get_tsn(searchterm="black", searchtype="comnamebeg")
get_tsn(searchterm="bear", searchtype="comnameend")
}
}
\seealso{
\code{\link[taxize]{get_uid}},
\code{\link[taxize]{classification}}
}

