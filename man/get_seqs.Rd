\name{get_seqs}
\alias{get_seqs}
\title{Retrieve nucleotide sequences from NCBI.}
\usage{
  get_seqs(taxon_name, gene, seqrange, getrelated,
    writetodf = TRUE, filetowriteto)
}
\arguments{
  \item{taxon_name}{Scientific name to search for
  (character).}

  \item{gene}{Gene (character) or genes (character vector)
  to search for.}

  \item{seqrange}{Sequence range, as e.g., "1:1000"
  (character).}

  \item{getrelated}{Logical, if TRUE, gets the longest
  sequences of a species in the same genus as the one
  searched for. If FALSE, get's nothing.}

  \item{writetodf}{Write resulting data.frame of results to
  a file on your machine (logical).}

  \item{filetowriteto}{If writetodf=TRUE, then specify the
  file name. Default=T.}
}
\value{
  Data.frame of results.
}
\description{
  This function retrieves one sequences for each species,
  picking the longest available for the given gene.
}
\details{
  Removes predicted sequences so you don't have to remove
  them.  Predicted sequences are those with accession
  numbers that have "XM_" or "XR_" prefixes.
}
\examples{
\dontrun{
# A single species
get_seqs(taxon_name="Bombus impatiens", gene = c("coi", "co1"),
		seqrange = "600:2000", getrelated=T, writetodf=F)

# Many species, can run in parallel or not using plyr
species <- c("Colletes similis","Halictus ligatus","Perdita trisignata")
llply(species, get_seqs, gene = c("coi", "co1"),  # notice different sp. output for Perdita
		seqrange = "1:2000", getrelated=T, writetodf=F)

# Can also run in parallel
library(multicore); library(doMC)
registerDoMC(cores=4)
llply(species, get_seqs, gene = c("coi", "co1"),
		seqrange = "1:2000", getrelated=T, writetodf=F, .parallel=T)

# Running in parallel is much faster
system.time(llply(species, get_seqs, gene = c("coi", "co1"), seqrange = "1:2000", getrelated=T, writetodf=F))
registerDoMC(cores=4)
system.time(llply(species, get_seqs, gene = c("coi", "co1"), seqrange = "1:2000", getrelated=T, writetodf=F, .parallel=T))
}
}
\author{
  Scott Chamberlain \email{myrmecocystus@gmail.com}
}
