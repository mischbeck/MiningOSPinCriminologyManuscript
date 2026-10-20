# =============================================================================
# Configuraion file
# =============================================================================
# This file contains necessary variables that will be used in the whole process
# and all necessary library imports.
# See the configuration section for theming, debug mode and so on.
# =============================================================================

# ---- Helper functions -------------------------------------------------------

install_if_missing <- function(pkgs) {
  to_install <- pkgs[!vapply(pkgs, requireNamespace, quietly = TRUE, FUN.VALUE = logical(1))]
  if (length(to_install)) {
    message("Installing missing CRAN packages: ", paste(to_install, collapse = ", "))
    install.packages(to_install, repos = "https://cloud.r-project.org/")
  }
}

install_github_if_missing <- function(pkg, repo) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    if (!requireNamespace("remotes", quietly = TRUE)) {
      install.packages("remotes", repos = "https://cloud.r-project.org/")
    }
    message("Installing GitHub package ", pkg, " from ", repo)
    remotes::install_github(repo)
  }
}

# =============================================================================
# Install & Load
# =============================================================================

# Define all required packages with comments
pkgs <- c(
  # Data handling & plotting
  "tidyverse",    # data manipulation, ggplot2, etc.
  "patchwork",    # combine multiple plots
  "ggthemes",
  "ggpmisc",
  "scales",

  # Tables & summaries
  "summarytools",
  "gtsummary",
  "gt",
  "knitr",
  "kableExtra",
  "flextable", # docx tables

  # Misc helpers
  "rlang",
  "rmarkdown",
  "qs2",        #
  "presize",    # sample size calculations
  "survey"
)


# Install any that aren't already present
missing <- pkgs[!pkgs %in% installed.packages()[, "Package"]]
if (length(missing)) {
  install.packages(missing, repos = "https://cloud.r-project.org/")
}

# Install and load CRAN packages
install_if_missing(pkgs)
invisible(lapply(pkgs, library, character.only = TRUE))

# ---- GitHub packages ---------------------------------------------------

# Serosurvey
install_github_if_missing("serosurvey", "avallecam/serosurvey")
library(serosurvey)

# ggthemr
install_github_if_missing("ggthemr", "Mikata-Project/ggthemr")
library(ggthemr)

# =============================================================================
# Configuration
# =============================================================================

# ---- Output format ----------------------------------------------------------
# it is important to set the correct pandoc/quarto output format as knitr tables don't work in docx.
# possible formats:
# - docx
# - pdf/tex

# Read OUTPUT_FORMAT from env; default to "pdf/tex"
output_format <- Sys.getenv("OUTPUT_FORMAT", "pdf/tex")
# Background: some tables needs special treatment for docx rendering.

# ---- Debug Mode -------------------------------------------------------------
debug_mode <- TRUE
if (isTRUE(debug_mode)) debug_info <- list()

# ---- Theme & Colors ---------------------------------------------------------
# Theme
ggthemr('fresh')

# consitent colors for open science practices among plots
osp_cols <- c(
  "Preregistration" = "#ee5927",
  "Open Data" = "#321c3d",
  "Open Materials" = "#005c5c",
  "Open Access" = "#bf1869",
  "Statistical Inference" = "#f2a900"
)

name_mapping <- c(
  "Preregistration" = "is_prereg",
  "Open Data" = "is_open_data", 
  "Open Materials" = "is_open_materials",
  "Open Access" = "is_open_access",
  "Statistical Inference" = "is_statistical_inference"
)

# map names & colors
osp_cols2 <- osp_cols
names(osp_cols2) <- name_mapping[names(osp_cols)]

# =============================================================================
# DIRECTORY PATHS
# =============================================================================

# Base directories
dir_data <- "data"
dir_output <- "output"
dir_logs <- "logs"
dir_models <- "models"
dir_code <- "code"
dir_docs <- "docs"
dir_renv <- "renv"
dir_freeze <- "_freeze"
dir_output_quarto <- "_output"  # Quarto's rendered output

# Data subdirectories
dir_data_meta <- file.path(dir_data, "meta")
dir_data_crossref <- file.path(dir_data_meta, "crossref")
dir_data_fulltext <- file.path(dir_data, "fulltext")
dir_data_keywords <- file.path(dir_data, "keyword_dicts")

# Output subdirectories
dir_output_plots <- file.path(dir_output, "plots")
dir_output_tables <- file.path(dir_output, "tables")

# =============================================================================
# Files
# =============================================================================

# Primary data files
file_journals <- file.path(dir_data_meta, "journals.qs2")
file_meta_combined <- file.path(dir_data_meta, "meta_combined.qs2")
file_meta_final <- file.path(dir_data_meta, "meta_final.qs2")
file_sample_final <- file.path(dir_data_meta, "sample_final.qs2")
file_sample_stat_final <- file.path(dir_data_meta, "sample_stat_final.qs2") # statistical inference classification sample
file_sample_analysis <- file.path(dir_data, "sample_analysis.qs2") # final sample, ready for analysis

# Additional data files (wasn't used yet)
file_dicts <- file.path(dir_data, "dicts.csv")

# Statistical inference sample files
file_train_stat <- file.path(dir_data, "train_stat.csv") # statistical inference classification training sample
file_train_stat_coded <- file.path(dir_data, "train_stat_coded.csv") # statistical inference classification hand coded training sample
file_train_stat_downloader_meta <- file.path(dir_data, "train_stat_downloader_meta_export.csv") # statistical inference downloader metadata (containing file_path)

file_train_stat_coded_hand <- file.path(dir_data, "train_stat_coded_hand.csv") # statistical inference classification hand coded
file_train_stat_coded_hand_corrected <- file.path(dir_data, "train_stat_coded_hand_corrected.csv") # statistical inference classification hand coded
file_train_stat_coded_hand_corrected_gpt <- file.path(dir_data, "train_stat_coded_hand_corrected.csv") # statistical inference classification hand coded

# OSP Classification files
file_sample <- file.path(dir_data, "full-sample.csv") # full sample of all years
file_sample_statistical <- file.path(dir_data, "sample_statistical.csv") # full sample of statistical inference papers
file_train <- file.path(dir_data, "train.csv") # training subset of statistical inference papers for osp classification
file_train_coded_hand <- file.path(dir_data, "train_coded_hand.csv") # training subset (osp), hand-coded
file_train_coded_hand_corrected <- file.path(dir_data, "train_coded_hand_corrected.csv") # training subset (osp), hand-coded, corrected
file_train_coded_hand_corrected_gpt <- file.path(dir_data, "train_coded_hand_corrected_gpt.csv") # training subset (osp), corrected, hand-coded + remaining cases coded with gpt
file_sample_downloader_meta <- file.path(dir_data, "train_downloader_meta_export.csv") # statistical inference classification hand coded

# Classified data
file_classified_stat <- file.path(dir_data, "classified_stat.csv") # statistical inference
file_classified_oa <- file.path(dir_data, "classified_oa.csv") # open access
file_classified_osp <- file.path(dir_data, "classified_osp.csv") # other osp's
file_classified_osp_probs <- file.path(dir_data, "classified_osp_probs.csv") # other osp's

file_sample_fully_classified <- file.path(dir_data, "full-sample_classified.csv") # combination of the above

# Downloader import CSV files
file_downloader_full <- file.path(dir_data, "download_full.csv")
file_downloader_sample <- file.path(dir_data, "download_sample.csv")

# Codebook
file_codebook <- file.path(dir_output, "codebook.docx")
