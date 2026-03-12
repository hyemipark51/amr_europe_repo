library(readr)
library(dplyr)

consumption <- read_csv("data_clean/eu_antibiotic_consumption_total_2019_2023_long.csv", show_col_types = FALSE)
selected <- read_csv("data_clean/selected_country_antibiotic_consumption_2019_2023.csv", show_col_types = FALSE)
amr_summary <- read_csv("data_clean/eu_amr_summary_2023.csv", show_col_types = FALSE)
