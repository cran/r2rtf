% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rtf_colheader.R
\name{rtf_colheader}
\alias{rtf_colheader}
\title{Add Column Header Attributes to Table}
\usage{
rtf_colheader(
  tbl,
  colheader = NULL,
  col_rel_width = NULL,
  border_left = "single",
  border_right = "single",
  border_top = "single",
  border_bottom = "",
  border_color_left = NULL,
  border_color_right = NULL,
  border_color_top = NULL,
  border_color_bottom = NULL,
  border_width = 15,
  cell_height = 0.15,
  cell_justification = "c",
  cell_vertical_justification = "bottom",
  cell_nrow = NULL,
  text_font = 1,
  text_format = NULL,
  text_font_size = 9,
  text_color = NULL,
  text_background_color = NULL,
  text_justification = "c",
  text_indent_first = 0,
  text_indent_left = 0,
  text_indent_right = 0,
  text_space = 1,
  text_space_before = 15,
  text_space_after = 15,
  text_convert = TRUE
)
}
\arguments{
\item{tbl}{A data frame.}

\item{colheader}{A character string that uses " | " to separate column names.
Default is NULL for a blank column header.}

\item{col_rel_width}{A Column relative width in a vector e.g. c(2,1,1) refers to 2:1:1.
Default is NULL for equal column width.}

\item{border_left}{Left border type. To vary left border by column, use
character vector with length of vector equal to number of columns displayed
e.g. c("single","single","single"). All possible input can be found in
\code{r2rtf:::border_type()$name}.}

\item{border_right}{Right border type. To vary right border by column, use
character vector with length of vector equal to number of columns displayed
e.g. c("single","single","single"). All possible input can be found in
\code{r2rtf:::border_type()$name}.}

\item{border_top}{Top border type. To vary top border by column, use
character vector with length of vector equal to number of columns displayed
e.g. c("single","single","single"). If it is the first row in a table for this
page, the top border is set to "double" otherwise the border is set to "single".
All possible input can be found in \code{r2rtf:::border_type()$name}.}

\item{border_bottom}{Bottom border type.
To vary bottom border by column, use character vector with length of vector
equal to number of columns displayed e.g. c("single","single","single").
All possible input can be found in \code{r2rtf:::border_type()$name}.}

\item{border_color_left}{Left border color type. Default is NULL for black. To vary left
border color by column, use character vector with length of vector
equal to number of columns displayed e.g. c("white","red","blue").
All possible input can be found in \code{grDevices::colors()}.}

\item{border_color_right}{Right border color type. Default is NULL for black. To vary right
border color by column, use character vector with length of vector
equal to number of columns displayed e.g. c("white","red","blue").
All possible input can be found in \code{grDevices::colors()}.}

\item{border_color_top}{Top border color type. Default is NULL for black. To vary top
border color by column, use character vector with length of vector
equal to number of columns displayed e.g. c("white","red","blue").
All possible input can be found in \code{grDevices::colors()}.}

\item{border_color_bottom}{Bottom border color type. Default is NULL for black. To vary bottom
border color by column, use character vector with length of vector
equal to number of columns displayed e.g. c("white","red","blue").
All possible input can be found in \code{grDevices::colors()}.}

\item{border_width}{Border width in twips. Default is 15 for 0.0104 inch.}

\item{cell_height}{Cell height in inches. Default is 0.15 for 0.15 inch.}

\item{cell_justification}{Justification type for cell.
All possible input can be found in \code{r2rtf:::justification()$type}.}

\item{cell_vertical_justification}{Vertical justification type for cell.
All possible input can be found in \code{r2rtf:::vertical_justification()$type}.}

\item{cell_nrow}{Number of rows required in each cell.}

\item{text_font}{Text font type. Default is 1 for Times New Roman. To vary text font type
by column, use numeric vector with length of vector equal to number of
columns displayed e.g. c(1,2,3).All possible input can be found
in \code{r2rtf:::font_type()$type}.}

\item{text_format}{Text format type. Default is NULL for normal. Combination of format type
are permitted as input for e.g. "ub" for bold and underlined text. To vary
text format by column, use character vector with length of vector equal to
number of columns displayed e.g. c("i","u","ib"). All possible input
can be found in \code{r2rtf:::font_format()$type}.}

\item{text_font_size}{Text font size.  To vary text font size by column, use
numeric vector with length of vector equal to number of columns
displayed e.g. c(9,20,40).}

\item{text_color}{Text color type. Default is NULL for black. To vary text color by column,
use character vector with length of vector equal to number of columns
displayed e.g. c("white","red","blue"). All possible input can be found
in \code{grDevices::colors()}.}

\item{text_background_color}{Text background color type. Default is NULL for white. To vary
text color by column, use character vector with length of vector
equal to number of columns displayed e.g. c("white","red","blue").
All possible input can be found in \code{grDevices::colors()}.}

\item{text_justification}{Justification type for text. Default is "c" for center justification.
To vary text justification by column, use character vector with
length of vector equal to number of columns displayed e.g. c("c","l","r").
All possible input can be found in \code{r2rtf:::justification()$type}.}

\item{text_indent_first}{A value of text indent in first line. The unit is twip.}

\item{text_indent_left}{A value of text left indent. The unit is twip.}

\item{text_indent_right}{A value of text right indent. The unit is twip.}

\item{text_space}{Line space between paragraph in twips. Default is 0.}

\item{text_space_before}{Line space before a paragraph in twips.}

\item{text_space_after}{Line space after a paragraph in twips.}

\item{text_convert}{A logical value to convert special characters.}
}
\value{
The same data frame \code{tbl} with additional attributes for table column header.
}
\description{
Add Column Header Attributes to Table
}
\section{Specification}{

\if{latex}{
 \itemize{
   \item Input checks using \code{check_args()}, \code{match_arg()} and \code{stopifnot()}.
   The required argument is \code{tbl}, i.e. A data frame must define by \code{tbl}.
   \item Set default page attributes and register use_color attribute.
   \item Define column header attributes of \code{tbl} based on the input.
   \item Return \code{tbl}.
 }
 }
\if{html}{The contents of this section are shown in PDF user manual only.}
}

\examples{
library(dplyr) # required to run examples
data(r2rtf_tbl1)
r2rtf_tbl1 \%>\%
  rtf_colheader(
    colheader = "Treatment | N | Mean (SD) | N | Mean (SD) | N |
                  Mean (SD) | LS Mean (95\% CI)\\\\dagger",
    text_format = c("b", "", "u", "", "u", "", "u", "i")
  ) \%>\%
  attr("rtf_colheader")
}
