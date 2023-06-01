librarry(tidyverse)
load("rda/murders.rda")

murders %>% mutate(abb = reorder(abb, rate)) %>%
  ggplot(aes(abb, rate)) + 
  geom_bar(width = 0.5, stat = "identity", color = "black") +
  cord_flip()

ggsave("figs/barplot.png")