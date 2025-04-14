# visualize.R
library(ggplot2)
library(reshape2)

# Données simulées avec corrélations
set.seed(123)
data <- data.frame(
  var1 = rnorm(100),
  var2 = rnorm(100),
  var3 = rnorm(100),
  var4 = rnorm(100)
)

# Création d'une matrice de corrélation
cor_matrix <- cor(data)

# Transformation pour ggplot2
melted_cor <- melt(cor_matrix)

# Création de la heatmap
ggplot(data = melted_cor, aes(x = Var1, y = Var2, fill = value)) +
  geom_tile(color = "white") +
  scale_fill_gradient2(low = "blue", high = "red", mid = "white",
                       midpoint = 0, limit = c(-1, 1), space = "Lab",
                       name="Corrélation") +
  theme_minimal() +
  coord_fixed() +
  labs(title = "Matrice de Corrélation", x = "", y = "")

