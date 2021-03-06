\name{ubio_classification_search}
\alias{ubio_classification_search}
\title{This function will return all ClassificationBank data pertaining to a
particular ClassificationBankID}
\usage{
ubio_classification_search(namebankID = NULL, classificationTitleID = NULL,
  keyCode = NULL, callopts = list())
}
\arguments{
  \item{namebankID}{(string) - NameBank identifier you wish
  to search for in ClassificationBank}

  \item{classificationTitleID}{Include if you only which to
  search within a particular classification}

  \item{keyCode}{Your uBio API key; loads from .Rprofile.
  If you don't have one, obtain one at
  http://www.ubio.org/index.php?pagename=form.}

  \item{callopts}{Parameters passed on to httr::GET call.}
}
\value{
A list of four data.frame's, one for the name itself, one
for synonyms, one for vernacular names, and one for
citations.
}
\description{
This function will return all ClassificationBank data
pertaining to a particular ClassificationBankID
}
\examples{
\dontrun{
ubio_classification_search(namebankID = 3070378)
}
}

