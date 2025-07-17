#!/bin/bash

# Script to set up R modules on on Cell Biology Xeon
# R version 4.5.0 (2025-04-11) -- "How About a Twenty-Six"
# R was added to the PPA (https://cran.r-project.org/bin/linux/ubuntu/#root) 
#
# The exiting R modules were removed (to identify these locations: execute in R .libPaths())
# R was unistalled (sudo apt remove r-base-core)
# R was re-installed (sudo apt install r-base-core)
#
# Run this script in **sudo** mode to install R modules globally
#
# Install with Rscript
Rscript -e 'install.packages("Matrix", dependencies=TRUE)'
Rscript -e 'install.packages("viridis", dependencies=TRUE)'
Rscript -e 'install.packages("ggplot2", dependencies=TRUE)'
Rscript -e 'install.packages("ragg", dependencies=TRUE)'
Rscript -e 'install.packages("rvest", dependencies=TRUE)'
Rscript -e 'install.packages("xml2", dependencies=TRUE)'
Rscript -e 'install.packages("systemfonts", dependencies=TRUE)'
Rscript -e 'install.packages("textshaping", dependencies=TRUE)'
Rscript -e 'install.packages("viridisLite", dependencies=TRUE)'
Rscript -e 'install.packages("tidyverse", dependencies=TRUE)'
Rscript -e 'install.packages("rlist", dependencies=TRUE)'
Rscript -e 'install.packages("Rtsne", dependencies=TRUE)'
Rscript -e 'install.packages("umap", dependencies=TRUE)'
Rscript -e 'install.packages("httpgd", dependencies=TRUE)'
Rscript -e 'install.packages("ggvenn", dependencies=TRUE)'
Rscript -e 'install.packages("Seurat", dependencies=TRUE)'
Rscript -e 'install.packages("irlba", dependencies=TRUE)'
Rscript -e 'install.packages("igraph", dependencies=TRUE)'
Rscript -e 'install.packages("leiden", dependencies=TRUE)'
Rscript -e 'install.packages("patchwork", dependencies=TRUE)'
Rscript -e 'install.packages("harmony", dependencies=TRUE)'
Rscript -e 'install.packages("devtools", dependencies=TRUE)'
Rscript -e 'install.packages("reticulate", dependencies=TRUE)'

Rscript -e 'install.packages("BiocManager", dependencies=TRUE)'

# Install with BiocManager
Rscript -e 'BiocManager::install("biomaRt")'
Rscript -e 'BiocManager::install("PCAtools")'
Rscript -e 'BiocManager::install("ensembldb")'
Rscript -e 'BiocManager::install("scran")'
Rscript -e 'BiocManager::install("DESeq2")'
Rscript -e 'BiocManager::install("scDblFinder")'
Rscript -e 'BiocManager::install("celda")'
Rscript -e 'BiocManager::install("DropletUtils")'
Rscript -e 'BiocManager::install("AnnotationHub")'
Rscript -e 'BiocManager::install("sva")'
Rscript -e 'BiocManager::install("celldex")'
Rscript -e 'BiocManager::install("SingleR")'
Rscript -e 'BiocManager::install("StabMap")'

# Install with Rscript / devtools
Rscript -e "devtools::install_github('satijalab/seurat-data')"

echo R Modules Installed
