% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/drug_parsers.R
\name{parse_drug_synonyms}
\alias{parse_drug_synonyms}
\title{Extracts the drug synonyms element and return data as data frame.}
\usage{
parse_drug_synonyms(save_table = FALSE)
}
\arguments{
\item{save_table}{boolean, save table in database if true.}
}
\value{
drug synonyms node attributes date frame
}
\description{
\code{parse_drug_synonyms} returns data frame of drug synonyms elements.
}
\details{
This functions extracts the synonyms element of drug node in drug bank
xml database with the option to save it in a predefined database via
\code{\link{open_db}} method. It takes one single optional argument to
save the returned dataframe in the database.
It must be called after \code{\link{get_xml_db_rows}} function like
any other parser function.
If \code{\link{get_xml_db_rows}} is called before for any reason, so
no need to call it again before calling this function.
}
\examples{
\donttest{
parse_drug_synonyms()
parse_drug_synonyms(TRUE)
parse_drug_synonyms(save_table = FALSE)
}
}
