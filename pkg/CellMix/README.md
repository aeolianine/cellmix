
## Overview

This package contains methods and utilities for performing gene expression deconvolution, i.e. estimating cell type proportions and/or cell-specific gene expression signatures from global expression data in heterogeneous samples.
Its main objectives are to provide:

* a unified base framework for applying and developing deconvolution analysis;
* a user-friendly and intuitive interface;
* a resource of relevant auxiliary data such as benchmark datasets or cell marker gene lists.

## Installation
```R
# install biocLite if not already there
if( !require(BiocInstaller) ){
	# enable Bioconductor repositories
	# -> add Bioc-software
	setRepositories() 

	install.packages('BiocInstaller')
	library(BiocInstaller)
}
# or alternatively do: 
# source('http://www.bioconductor.org/biocLite.R')

# install (NB: this might ask you to update some of your packages)
biocLite('CellMix', siteRepos = 'http://web.cbio.uct.ac.za/~renaud/CRAN', type='both')
```

## Alternative installation

Circa December 2018 the local repository above (http://web.cbio.uct.ac.za/~renaud/CRAN) was inaccessible, so here is an alternative installation via a r-forge fork. 


1. Clone / download zip to your computer:
```sh
git clone https://github.com/aeolianine/cellmix.git
```

2. Go to cellmix/pkg directory:
```sh
cd cellmix/pkg/
```

3. First build and install csSAM (CellMix depends on it)
```sh
R CMD build csSAM
R CMD install csSAM
```

4. Finally build and install CellMix
```sh
R CMD build CellMix
R CMD install CellMix 
```

