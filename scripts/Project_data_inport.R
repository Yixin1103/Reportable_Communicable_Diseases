#### Preamble ####
# Purpose: Get data from Open Data Toronto
# Author: Yixin Guan
#Date: Jan.27, 2021
# Pre-requisites: None


#### Workspace set-up ####
library(opendatatoronto)
library(tidyverse)


#### Get Data ####
all_data <-
  opendatatoronto::search_packages("Annual Summary of Reportable Communicable Diseases") %>%
  opendatatoronto::list_package_resources() %>%
  filter(name == "Disease Sex and Age groups 2018") %>% #This is the dataset we are interested in among the Reportable Communicable Diseases database
  select (id) %>%
  opendatatoronto::get_resource()

#### Save Data ####
write.csv(all_data,"inputs/data/raw_data.csv")
