% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make_sinuc_PWMs.R
\name{make_dinuc_PWMs}
\alias{make_dinuc_PWMs}
\title{Similarly to the PWM-like matrix for mononucleotides, make one for 
 dinucleotides}
\usage{
make_dinuc_PWMs(vec, add_pseudo_counts = TRUE, scale = TRUE)
}
\arguments{
\item{vec}{Column vector of the basis matrix}

\item{add_pseudo_counts}{Whether pesudocounts are to be added. TRUE or FALSE.}

\item{scale}{Whether to perform per position scaling of the matrix. TRUE or 
FALSE}
}
\value{
A (PWM) matrix with 16 rows corresponding to the dinucleotide 
combinations of the four nucleotides (A, C, G, T) and the relevant number 
of columns (i.e., number of elements in given vector/16)
}
\description{
This function converts the basis matrix with basis vectors 
of dinucleotide information into matrix of dimension 
16 x (sequence_length) for visualization.
}
