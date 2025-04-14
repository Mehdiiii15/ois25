# visualize.R
library(ggplot2)

# Données fictives
data <- data.frame(
  x = rnorm(100),
  y = rnorm(100)
)

# Graphique en nuage de points avec régression
ggplot(data, aes(x=x, y=y)) +
  geom_point(color="blue", alpha=0.6) +
  geom_smooth(method="lm", se=FALSE, color="red") +
  theme_minimal()
