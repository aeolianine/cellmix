\name{csSamWrapper}
\alias{csSamWrapper}
\title{csSamWrapper function - performs entire functionality}
\usage{
  csSamWrapper(G, cc, y, nperms = 200,
    alternative = "two.sided", standardize = TRUE,
    medianCenter = TRUE, logRm = FALSE, logBase = 2,
    nonNeg = TRUE, fileName = "csSAMout.pdf")
}
\arguments{
  \item{G}{Matrix of gene expression, columns ordered in
  the same order at the cell-frequency matrix (n by g, n
  samples, g genes)}

  \item{cc}{Matrix of cell-frequency. (n by k, n samples, k
  cell-types)}

  \item{y}{A numeric vector of group association of each
  sample. Either 1 or 2.}

  \item{nperms}{The number of permutations to perform.}

  \item{alternative}{two.sided less greater}

  \item{standardize}{Standardize sample or not. Default is
  TRUE.}

  \item{medianCenter}{Median center rhat distributions.
  Default is TRUE.}

  \item{logRm}{Exponentiate data for deconvolution stage.
  Default is FALSE}

  \item{logBase}{Base of logaritm used to determine
  exponentiation factor. Default is 2}

  \item{nonNeg}{For single channel arrays. Set any
  cell-specific expression estimated as negative, to a
  ceiling of 0. It is conservative in its study of
  differential expression. Default is FALSE.}

  \item{fileName}{PDF file containing plots of FDR vs.
  number of genes called for whole tissue comparison (via
  SAM) as well as each cell-type (by csSAM)}
}
\value{
  Returns a list containing: \item{deconv}{A list object
  containing a fit (cell-type specfic expression) for each
  group. Each element in the list is an object returned by
  csFit.} \item{fdr.csSAM}{A list output of the fdrCsSAM
  function.} \item{fdr.SAM}{A list output of the fdrSAM
  function.} \item{sigGene.csSAM}{A list of significant
  genes.} \item{fileName}{The filename into whcih the FDR
  plots are dumped.}
}
\description{
  csSamWrapper function - performs entire functionality
}
\author{
  Shai Shen-Orr, Rob Tibshirani, Narasimhan
  Balasubramanian, David Wang
}
\references{
  Shen-Orr SS, Tibshirani R, Khatri P, Bodian DL, Staedtler
  F, Perry NM, Hastie T, Sarwal MM, Davis MM and Butte AJ
  (2010). "Cell type-specific gene expression differences
  in complex tissues." _Nature methods_, *7*(4), pp. 287-9.
  ISSN 1548-7105, <URL:
  http://dx.doi.org/10.1038/nmeth.1439>, <URL:
  http://www.ncbi.nlm.nih.gov/pubmed/20208531>.
}
\seealso{
  \code{\link{csfit}},\code{\link{csSAM}},\code{\link{fdrCsSAM}},\code{\link{plotCsSAM}}
}

