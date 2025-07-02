#
library(ggplot2)

# Theme General
theme = theme_minimal(base_size = 13) +
  theme(
    plot.title = element_text(face = "bold", size = 16, hjust = 0.5),
    plot.title.position = 'plot',
    axis.title.x = element_text(face = "bold", size = 11),
    axis.title.y = element_text(face = "bold", size = 11),
    axis.text = element_text(size = 12, color = "black"),
    legend.position = "none",
    panel.grid.major.y = element_line(color = "grey90"),
    panel.grid.minor = element_blank()
  )

# Paleta de colores
my_colors <- c(
  "#4F9DA6",  # turquesa medio
  "#7E6BC4",  # lavanda saturado
  "#C06C84",  # rosado vino brillante
  "#F67280",  # coral suave
  "#F8B195",  # salmón pastel
  "#F4A261"   # mostaza suave
)



level_colors <- c(
  "Bachelor" = "#4F9DA6",
  "Master" = "#7E6BC4",
  "PhD" = "#F67280"
)


region_colors <- c(
  "#16B775",  # Verde esmeralda — LatAm
  "#2D9CDB",  # Azul cielo — Europa
  "#F2C94C",  # Amarillo cálido — Asia
  "#F2994A",  # Naranja intenso — África
  "#EB5757",  # Rojo coral — Norteamérica
  "#9B51E0"   # Violeta vibrante — Oceanía / Otros
)


contrast_color <- "#16b775"  # acento verde Gamma

my_colors_light <- tail(my_colors, 3)

# Graficos estandar
plot_tuition <- function(data, title) {
  ggplot(data, aes(x = Country, y = Tuition_usd, fill = Level)) +
    geom_bar(stat = "identity") +
    scale_fill_manual(values = selected_colors) +
    labs(title = title, x = "País", y = "Matrícula anual (USD)") +
    my_theme
}