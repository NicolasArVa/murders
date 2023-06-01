library(tidyverse)
 murders <- read_csv("data/murders.csv")
 murders <- murders %>% mutate(region = factor(region), rate = total/population*100000)
save(murders, file = "rda/murders.rda")