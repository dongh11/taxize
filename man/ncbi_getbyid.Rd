\name{ncbi_getbyid}
\alias{ncbi_getbyid}
\title{Retrieve gene sequences from NCBI by accession number.}
\usage{
ncbi_getbyid(ids, format = "fasta", verbose = TRUE)
}
\arguments{
  \item{ids}{GenBank ids to search for (character).}

  \item{format}{Return type, e.g., "fasta"}

  \item{verbose}{logical; If TRUE (default), informative
  messages printed.}
}
\value{
Data.frame of results.
}
\description{
Retrieve gene sequences from NCBI by accession number.
}
\details{
Removes predicted sequences so you don't have to remove
them.  Predicted sequences are those with accession numbers
that have "XM_" or "XR_" prefixes. This function retrieves
one sequences for each species, picking the longest
available for the given gene.
}
\examples{
\dontrun{
# A single gene
ncbi_getbyid(ids="360040093", format="fasta")

# Many genes (with different accession numbers)
ncbi_getbyid(ids=c("360040093","347448433"), format="fasta")
}
}
\author{
Scott Chamberlain \email{myrmecocystus@gmail.com}
}
\seealso{
\code{\link[taxize]{ncbi_search}},
\code{\link[taxize]{ncbi_getbyname}}
}

