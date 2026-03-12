library(readr)
library(dplyr)
library(ggplot2)
library(forcats)

consumption <- read_csv("data_clean/eu_antibiotic_consumption_total_2019_2023_long.csv", show_col_types = FALSE)
selected <- read_csv("data_clean/selected_country_antibiotic_consumption_2019_2023.csv", show_col_types = FALSE)
amr_summary <- read_csv("data_clean/eu_amr_summary_2023.csv", show_col_types = FALSE)

# Figure 1: EU/EEA ranking in 2023
fig1 <- consumption %>%
  filter(year == "2023", !is.na(value), !country %in% c("EU", "EU/EEA")) %>%
  mutate(country = fct_reorder(country, value)) %>%
  ggplot(aes(x = value, y = country)) +
  geom_point(size = 2) +
  labs(
    title = "Total antibacterial consumption in Europe, 2023",
    x = "DDD per 1,000 inhabitants per day",
    y = NULL,
    caption = "Source: ECDC ESAC-Net annual report 2023"
  ) +
  theme_minimal(base_size = 12)

# Figure 2: Selected-country trends
fig2 <- selected %>%
  filter(country != "EU/EEA") %>%
  ggplot(aes(x = as.integer(year), y = value, color = country)) +
  geom_line(linewidth = 1) +
  geom_point(size = 2) +
  labs(
    title = "Selected-country antibiotic consumption trends, 2019-2023",
    x = NULL,
    y = "DDD per 1,000 inhabitants per day",
    caption = "Source: ECDC ESAC-Net annual report 2023"
  ) +
  theme_minimal(base_size = 12)

# Figure 3: EU-level AMR indicators in 2023
fig3 <- amr_summary %>%
  filter(unit == "per 100,000 population") %>%
  mutate(indicator = fct_reorder(indicator, value)) %>%
  ggplot(aes(x = value, y = indicator)) +
  geom_col() +
  labs(
    title = "EU/EEA AMR incidence indicators in 2023",
    x = "Incidence per 100,000 population",
    y = NULL,
    caption = "Source: ECDC EARS-Net annual report 2023"
  ) +
  theme_minimal(base_size = 12)

ggsave("report/fig1_consumption_2023.png", fig1, width = 8, height = 7, dpi = 300)
ggsave("report/fig2_selected_trends.png", fig2, width = 8, height = 5, dpi = 300)
ggsave("report/fig3_eu_amr_summary.png", fig3, width = 8, height = 5, dpi = 300)
