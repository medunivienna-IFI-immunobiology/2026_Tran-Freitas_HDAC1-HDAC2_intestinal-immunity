# Publication: "Histone Deacetylases 1 and 2 Regulate Intestinal T Cell Subsets and are Essential for Th1/Th17 Immunity against Citrobacter rodentium"
<p align="justify">
This repository contains the necessary code to reproduce the scRNA-seq sequencing data analyses performed in the named study by Tran & Freitas et al., 2026.

This README gives an overview of all R scripts used for analysis and visualization of sequencing data in the study. They are available from the respective subfolders in this repository. The raw and processed data used as input are available in the GEO database. Additionally, relevant metadata and documented reports generated within the study can be found in the corresponding subfolder.
For any questions or comments on the provided scripts and metadata please use the Discussions panel.
</p>

## System requirements
This project can be done in any OS in a machine with at least 32GB of available RAM.
Expected time for software instalation is half a day. Expected time for the execution of all scripts is about a day, as long as all necessary packages are correctly installed. 

## Software requirements

* R v4.5.2 
* biomaRt v2.66.0
* celldex v1.20.0
* clusterProfiler v4.18.1
* decoupleR v2.16.0
* CollecTRI v1.0
* ggplot2 v3.4.4
* ggalluvial v0.12.5
* OmnipathR v3.17.4
* org.Mm.eg.db v3.22.0
* Seurat v5.0.0
* SingleR v2.12.2
* enrichplot v1.30.0
* pheatmap v1.0.13

Renv was used to provide a snashot of the necessary environment of used packages and facilitate reproducibility.  
Start by using `renv::restore()` to download necessary libraries used in this project.


## Data
<p align="justify">
Raw and processed data are available in the GEO database under the accession number GSE311160.
Raw sequencing output was processed to count-feature-barcode matrices as described in the methods section of the publication. Here only the subsequently used R scripts are described and made available. They are split in logically connected units to make versatile usage as easy as possible.
</p>

## Repository structure
This repository is organised in the following structure:

2026_Tran-Freitas_HDAC1-HDAC2_intestinal-immunity/
├── Data/
├── Scripts/
├── renv/
│   └── activate.R
├── .Rprofile
├── LICENSE
├── README.md
├── renv.lock
└── RProject.Rproj

## Figure Reproducibility
This repository reproduces the figures and analyses presented in the paper using the original Seurat objects generated during the original analysis (paper snapshot).
Rerunning the analysis from raw data may result in slightly different results due to the nature of probability based functions used.

### Figure cross-reference
The figures from the manuscript can be reproduced by following the Figure-to-code reference index provided in a text file in this repository.

## Analyses scripts
Scripts were produced in a modular way to facilitate reproducibility. Tissue parameters are available to reuse the same script for all existing samples analysed in this study. Object source checkpoints to use Frozen Seurat objects are available to reproduce the manuscript figures without reexecution of clustering and other stochastic calculations. 

### Scripts available for scRNAseq analysis
01_Intestinal_scRNAseq_QualityControl.Rmd

02_Intestinal_scRNAseq_Tcell_filtering.Rmd

03_Intestinal_scRNAseq_integration.Rmd

04_Intestinal_scRNAseq_overview.Rmd

05_Intestinal_scRNAseq_subset.Rmd

06_Intestinal_scRNAseq_ModuleScores_MarkerGenes.Rmd

07_Intestinal_scRNAseq_TF_activity.Rmd

08_Intestinal_scRNAseq_CD4_reclustering.Rmd


## Official release
The official release that follows the publication is archived at Zenodo repository.

## Cite us
If you used our code and/or generated data/results, please cite our most recent work: 

Tran, Phuc Huu and de Freitas e Silva, Rafael and Fröse, Aruana F. F. Hansel and Ellmeier, Wilfried and PDF, See and Administrator, Sneak Peek, Histone Deacetylases 1 and 2 Regulate Intestinal T Cell Subsets and are Essential for Th1/Th17 Immunity against Citrobacter rodentium. Available at SSRN: https://ssrn.com/abstract=6036985 or http://dx.doi.org/10.2139/ssrn.6036985
