% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rtf_encode_table.R
\name{rtf_encode_table}
\alias{rtf_encode_table}
\title{Render Table to RTF Encoding}
\usage{
rtf_encode_table(tbl, verbose = FALSE)
}
\arguments{
\item{tbl}{A data frame for table or a list of binary string for figure.}

\item{verbose}{a boolean value to return more details of RTF encoding.}
}
\description{
Render Table to RTF Encoding
}
\section{Specification}{

\if{latex}{
 \itemize{
   \item Initiate RTF using \code{as_rtf_init()}, \code{as_rtf_font()} and \code{as_rtf_color()}.
   \item Define page, margin, header, footnote, source and new_page in RTF syntax.
   \item Define column header, first border and last border type in RTF syntax.
   \item Check whether footnote and source will be displayed as table if they exist.
   \item Define table content in RTF syntax.
   \item Get page title display location ("all", "first", "last") from arg input and display it in page accordingly.
   \item Get page footnote display location ("all", "first", "last") from arg input and display it in page accordingly.
   \item Get page source display location ("all", "first", "last") from arg input and display it in page accordingly.
   \item Translate all \code{tbl} attributes into RTF syntax.
   \item Combine all components into a single RTF code string.
 }
 }
\if{html}{The contents of this section are shown in PDF user manual only.}
}

