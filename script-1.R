library(tidyverse)

result <- sum(1:10)
print(result)

diamonds_plot <- ggplot(diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point(alpha = 0.2, size = 0.8) +
  scale_y_log10(labels = scales::label_dollar()) +
  scale_color_brewer(palette = "Dark2") +
  labs(
    title = "The Price of a Diamond",
    subtitle = "Price rises with carat, with variation across cut quality",
    x = "Carat",
    y = "Price (log scale)",
    color = "Cut",
    caption = "Data: ggplot2::diamonds"
  ) +
  theme_minimal(base_size = 13) +
  theme(
    plot.title = element_text(face = "bold", size = 20),
    plot.subtitle = element_text(color = "grey35"),
    legend.position = "bottom",
    panel.grid.minor = element_blank()
  )

ggsave("diamonds-1.png", plot = diamonds_plot, width = 10, height = 7, dpi = 300)
