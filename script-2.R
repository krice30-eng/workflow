library(tidyverse)

diamonds_plot <- ggplot(diamonds, aes(x = cut, y = price, fill = cut)) +
  geom_boxplot(width = 0.68, outlier.alpha = 0.12, outlier.size = 0.7) +
  scale_y_log10(labels = scales::label_dollar()) +
  scale_fill_brewer(palette = "Spectral") +
  labs(
    title = "Diamond Prices Across Cuts",
    subtitle = "Price distributions vary across the five cut grades",
    x = "Cut quality",
    y = "Price (log scale)",
    caption = "Data: ggplot2::diamonds"
  ) +
  theme_minimal(base_size = 13) +
  theme(
    plot.title = element_text(face = "bold", size = 20),
    plot.subtitle = element_text(color = "grey35"),
    legend.position = "none",
    panel.grid.minor = element_blank()
  )

ggsave("diamonds-2.png", plot = diamonds_plot, width = 9, height = 6, dpi = 300)
