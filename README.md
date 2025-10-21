# Publication: "Histone Deacetylase 1 and 2 are Drivers of Intestinal Th1/Th17 Immunity during *Citrobacter rodentium* Infection"
<p align="justify">
This README gives an overview of all R scripts used for analysis and visualization of scRNA-Seq data in the study. They are available from the respective subfolders in this repository. The raw and processed data used as input are available in the GEO database. Additionally, relevant metadata generated within the study can be found in the corresponding subfolder, including QC plots. Seurat objects (.rds files) have not been uploaded because of size restrictions. Rerunning the analysis may result in slightly different results due to the nature of probability based functions used. 

For any questions or comments on the provided scripts and metadata please use the Discussions panel.
</p>

## Contents
- [scRNA-Seq Analysis](#scrna-seq-analysis)

## scRNA-Seq Analysis
<p align="justify">
Raw sequencing output was processed to count-feature-barcode matrices as described in the methods section of the publication. Here only the subsequently used R scripts are described and made available. They are split in logically connected units to make versatile usage as easy as possible.
</p>

#### 01_scRNAseq_QC.R

#### 02_scRNAseq_Clustering.R

#### 03_scRNAseq_TFinference.R
