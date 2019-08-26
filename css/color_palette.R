library(tidyverse)

#Define colors
colors <- data.frame(
  level=as.factor(c(1,2,3,4)),
  col=c("#000033","#669966","#eacebe","#FFCC00"),
  y=c(1,1,1,1)
)

#Plot
ggplot(colors, aes(x=level, y=y, fill=level)) +
  geom_col() +
  scale_fill_manual(name="",
                    values=as.character(colors$col)) +
  theme(legend.position = "none") +
  theme_classic()

