library(tidyverse)
library(maps)

us_states <- map_data("state")
head(us_states)

p <- ggplot(data = us_states,
            aes(x = long, y = lat,
                group = group, fill = region))

p + geom_polygon(color = "gray90", size = 0.1) + guides(fill = FALSE)
