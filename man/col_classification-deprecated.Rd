\name{col_classification}
\alias{col_classification}
\title{Search Catalogue of Life for taxonomic classifications.}
\usage{
col_classification(name = NULL, id = NULL, format = NULL, start = NULL,
  checklist = NULL)
}
\arguments{
  \item{name}{The string to search for. Only exact matches
  found the name given will be returned, unless one or
  wildcards are included in the search string. An *
  (asterisk) character denotes a wildcard; a % (percentage)
  character may also be used. The name must be at least 3
  characters long, not counting wildcard characters.}

  \item{id}{The record ID of the specific record to return
  (only for scientific names of species or infraspecific
  taxa)}

  \item{format}{format of the results returned. Valid
  values are format=xml and format=php; if the format
  parameter is omitted, the results are returned in the
  default XML format. If format=php then results are
  returned as a PHP array in serialized string format,
  which can be converted back to an array in PHP using the
  unserialize command}

  \item{start}{The first record to return. If omitted, the
  results are returned from the first record (start=0).
  This is useful if the total number of results is larger
  than the maximum number of results returned by a single
  Web service query (currently the maximum number of
  results returned by a single query is 500 for terse
  queries and 50 for full queries).}

  \item{checklist}{The year of the checklist to query, if
  you want a specific year's checklist instead of the
  lastest as default (numeric).}
}
\value{
A list of data.frame's.
}
\description{
THIS FUNCTION IS DEPRECATED.
}
\details{
You must provide one of name or id. The other parameters
(format and start) are optional.
}
\examples{
\dontrun{
# A basic example
col_classification(name="Apis")

# An example where there is no classification
col_classification(id=11935941)

# Use a specific year's checklist
col_classification(name="Apis", checklist="2012")
col_classification(name="Apis", checklist="2009")

# Pass in many names or many id's
out <- col_classification(name=c("Buteo","Apis","Accipiter","asdf"),
   checklist="2012")
out$Apis # get just the output you want
ldply(out) # or combine to one data.frame

# Use get_colid to pass in ID directly
col_classification(id=get_colid(sciname='Puma concolor'))
}
}

