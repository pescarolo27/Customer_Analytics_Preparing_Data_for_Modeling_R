#Q6 -- The columns of ds_jobs_clean must be in the same order as the original dataset.

glimpse(orig_data)
glimpse(data)
  #GOOD

#compare sizes of datasets
object.size(orig_data)
  #OUTPUT: 2,167,296 bytes
object.size(data)
  #OUTPUT: 1,168,096 bytes

#################################################################################################

#Q7 -- The data frame should be filtered to only contain students with 10 or more years of experience at companies with at least 1000 employees, 
  #as their recruiter base is suited to more experienced professionals at large enterprise companies.

#filter the data as specified
ds_jobs_clean <- data %>%
  filter(experience == ">10" & company_size == "Large")
ds_jobs_clean
  #1,956 observations, 14 variables

glimpse(ds_jobs_clean)
object.size(ds_jobs_clean)
  #OUTPUT: 134,768 bytes