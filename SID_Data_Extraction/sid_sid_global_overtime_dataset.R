## TITLE: AUXILIARY SCRIPT - Merge OU Overtime datasets and convert responses to binary
## AUTHOR: Femi Akinmade (qlx6@cdc.gov)
## DESCRIPTION: 
##      Extraction and tidying SID df for SIDs dashboard 2.0
## CREATION DATE: 03/25/2022



library(readxl)
library(tidyverse)


rm(list=ls())


setwd("C:/Users/qlx6/Downloads/SID_OT")
ot.files <- list.files(pattern="*.xlsx")
global_ot <- lapply(ot.files, function(i){
  x = read_excel(i,  sheet = 1)
  x$file = i
  x
})


global_ot[[1]]

global_ot <- bind_rows(global_ot)


names(global_ot) <- as.character(global_ot[1,])
global_ot <- global_ot[-1,]


library(dplyr)

names(global_ot)

ot <- global_ot %>% 
  rename(operatingunit = `Burundi OT Tab.xlsx`) %>% 
  mutate(`2017` = case_when(
    `2017` == "Yes" ~ 1,
    `2017` == "No" ~ 0)) %>% 
  mutate(`2019` = case_when(
    `2019` == "Yes" ~ 1,
    `2019` == "No" ~ 0)) %>% 
  mutate(`2021` = case_when(
    `2021` == "Yes" ~ 1,
    `2021` == "No" ~ 0))

rm(global_ot)

library(openxlsx)

openxlsx::write.xlsx(ot, file = "Global_Overtime.xlsx")
  