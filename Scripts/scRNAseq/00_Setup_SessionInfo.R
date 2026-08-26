# Config Setup

# sessionInfo after loading all packages necessary for all scripts
# Reproducibility
set.seed(42)

# General
library(here)
library(knitr)
library(tidyverse)
library(dplyr)
library(tidyr)
library(tibble)

# Plotting
library(ggplot2)
library(patchwork)
library(RColorBrewer)
library(ggrepel)
library(ggalluvial)
library(pheatmap)
library(grid)

# Seurat / single-cell
library(Seurat)
library(SeuratData)
library(SingleR)
library(celldex)

# TF activity
library(decoupleR)
library(OmnipathR)

# Annotation / enrichment
library(biomaRt)
library(org.Mm.eg.db)
library(AnnotationDbi)
library(msigdbr)
library(clusterProfiler)
library(rrvgo)
library(enrichplot)

# File import/export
library(readxl)
library(openxlsx)

# Base/statistics
library(stats)

# Save session Info
capture.output(sessionInfo(), file = here("Scripts", "scRNAseq", "sessionInfo.txt"))

# Render all scripts to HTML reports
scripts <- list.files(
  here::here("Scripts", "scRNAseq"),
  pattern = "^0[1-8]_.*\\.Rmd$", ## all MArkdowns
  full.names = TRUE
)

scripts <- sort(scripts)
scripts

for (script in scripts) {
  message("\n===== Rendering: ", basename(script), " =====")
  rmarkdown::render(script)
}
