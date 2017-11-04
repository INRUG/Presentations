
# load_data.R
#
# loads and prepares the example data for the examples reports from nycflights13

library(tidyverse)
library(glue)
library(nycflights13)
library(knitr)

data(flights)
data(airlines)

carrier_median_delay <-
    flights %>%
    filter(carrier == params$carrier) %>%
    group_by(origin) %>%
    summarise(median_dep_delay = median(dep_delay, na.rm = TRUE))

carrier_table <-
    flights %>%
    inner_join(airlines) %>%
    group_by(carrier, name, origin) %>%
    summarise(n = n(),
              median_dep_delay = median(dep_delay, na.rm = TRUE))

overall <-
    flights %>%
    group_by(name = "Overall") %>%
    summarise(n = n(),
              median_dep_delay = median(dep_delay, na.rm = TRUE))

overall_carrier_table <-
    bind_rows(carrier_table, overall)
