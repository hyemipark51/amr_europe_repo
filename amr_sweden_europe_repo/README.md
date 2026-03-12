# Antibiotic Use and Antimicrobial Resistance: Sweden in European and Global Context

This is a GitHub portfolio starter for a descriptive epidemiology project that places Sweden in context by comparing antibiotic consumption and selected antimicrobial resistance (AMR) indicators across Europe, with a later extension to global benchmarks such as India.

## What is already included

### Cleaned data
- `data_clean/eu_antibiotic_consumption_total_2019_2023_long.csv`
- `data_clean/eu_antibiotic_consumption_total_2019_2023_wide.csv`
- `data_clean/selected_country_antibiotic_consumption_2019_2023.csv`
- `data_clean/eu_amr_summary_2023.csv`
- `data_clean/project_country_set.csv`

### Project files
- `report/analysis.Rmd`
- `R/01_load_data.R`
- `R/02_make_figures.R`

## Recommended research question

How does Sweden compare with other European countries in antibiotic consumption, and how should Sweden be interpreted in a broader global AMR context?

## Suggested figures

1. EU/EEA ranking of total antibiotic consumption in 2023  
2. Trend lines for Sweden, Netherlands, Germany, Greece, and Romania from 2019 to 2023  
3. EU-level AMR summary indicators for 2023  
4. Optional Sweden vs India global benchmark figure after adding WHO GLASS data  

## Important limitation

This starter pack includes an exact country-year panel for antibiotic consumption, but only EU-level summary indicators for AMR. Country-level AMR values should be added from ECDC country summaries / Surveillance Atlas before finalizing the report.

## Full report

[Open the project report](report/analysis.md)
