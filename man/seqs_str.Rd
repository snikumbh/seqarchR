% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/archR_auxiliary_functionsI.R
\name{seqs_str}
\alias{seqs_str}
\title{Get sequences from the archR result object}
\usage{
seqs_str(res, iter = NULL, cl = NULL, ord = FALSE)
}
\arguments{
\item{res}{archR result object}

\item{iter}{Specify the iteration of archR result. If set to NULL
(the default), the original set of sequences (`archRresult$rawSeqs`) is
returned.}

\item{cl}{Specify the cluster number. Sequences belonging to this cluster in
iteration `iter` of archR result are returned as character. When `iter` is
NULL, this is treated as denoting the cluster number in archR's final
clustering solution (`archRresult$clustSol$clusters`).}

\item{ord}{Specify TRUE if sequences are ordered by clusters. The original
ordering of the sequences can be fetched by setting `iter` to NULL and `ord`
to FALSE.}
}
\value{
The selected DNA sequences from the DNAStringSet object as a
character vector.
}
\description{
Wrapper to fetch sequences from the archR result object as
character
}
\details{
Setting iter to NULL will fetch sequences as per the final
clustering solution of archR (`clustSol$clusters`). When `iter` is not
NULL, use `cl` to further choose a particular cluster. When `cl` is NULL,
the set of sequences returned can be ordered by clusters with `ord = TRUE`.
Using `ord = FALSE` fetches the sequences by their original order.
}
\examples{

res <- system.file("extdata", "example_archRresult.rds",
         package = "archR", mustWork = TRUE)

# Fetch sequences from 2nd cluster of archR's final solution
ans <- archR::seqs_str(readRDS(res), iter=NULL, cl=2)

# Fetch all sequences ordered by the final clustering
ans <- archR::seqs_str(readRDS(res), iter=NULL, cl=NULL, ord=TRUE)

# Fetch sequences belonging to first cluster in archR's first iteration
ans <- archR::seqs_str(readRDS(res), iter=1, cl=1)


}
