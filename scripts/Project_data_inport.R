#### Preamble ####
# Purpose: Get data from Open Data Toronto
# Author: 
#Date: 
# Pre-requisites: None


#### Workspace set-up ####
library(opendatatoronto)
library(tidyverse)

all_data <-
  opendatatoronto::search_packages("Annual Summary of Reportable Communicable Diseases") %>%
  opendatatoronto::list_package_resources() %>%
  filter(name == "Disease Sex and Age groups 2018") %>%
  select (id) %>%
  opendatatoronto::get_resource()

all_data
