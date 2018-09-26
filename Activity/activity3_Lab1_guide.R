setwd('/Users/taehoonh/github')
library(ggplot2)
library(gapminder)
data("gapminder")

p <- ggplot() # adding an empty layer

# keep updating the layer 'p' by adding components
p <- p + geom_point(data = gapminder, 
                    aes(x = gdpPercap,
                        y = lifeExp))

p <- p + theme_bw()

ggsave(filename = 'p.png', plot = p)
