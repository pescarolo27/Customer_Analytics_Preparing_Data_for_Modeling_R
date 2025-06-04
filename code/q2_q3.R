#Q2 -- Columns containing float values must be stored as doubles (<dbl>).

#glimpse(data)
  #GOOD

###################################################################################################

#Q3 -- Columns containing categorical data, both ordinal and nominal, must be stored as factors (<fct>).

data$city <- as.factor(data$city)
data$gender <- as.factor(data$gender)
data$relevant_experience <- as.factor(data$relevant_experience)
data$enrolled_university <- as.factor(data$enrolled_university)
data$education_level <- as.factor(data$education_level)
data$major_discipline <- as.factor(data$major_discipline)
data$experience <- as.factor(data$experience)
data$company_size <- as.factor(data$company_size)
data$company_type <- as.factor(data$company_type)
data$last_new_job <- as.factor(data$last_new_job)

object.size(data)
  #OUTPUT: 1,176,516 bytes
glimpse(data)
  #GOOD