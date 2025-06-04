#load in libraries
library(tidyverse)
library(dplyr)
library(readr)
library(ggplot2)
library(stringr)
library(forcats)

#import the data
data = read_csv("customer_train.csv")
data

###############################################################################################

#Q1 -- Columns containing integer values must be stored as integers (<int>).

#change data type of 'student_id', 'training_hours', 'job_change' to "int"
data$student_id <- as.integer(data$student_id)
data$training_hours <- as.integer(data$training_hours)
data$job_change <- as.integer(data$job_change)

#could also do 'city' & remove the "city_" prefix
  #data$city <- as.integer(sub("^city_", "", data$city))

glimpse(data)
  #GOOD