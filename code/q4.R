#Q4 -- Collapse the company_size levels to the following:
  #'Micro': <10 employees, 'Small': 10-99 employees, 'Medium': 100-999 employees, 'Large': >1000 employees

#first investigate the 'company_size' column
levels(data$company_size)
  #OUTPUT: ["<10", "10-49", "100-499", "1000-4999", "10000+", "50-99", "500-999", "5000-9999"]

data <- data %>%
  #collapse old factors into new ones
  mutate(company_size = fct_collapse(company_size, "Micro"=c("<10"), "Small"=c("10-49","50-99"), 
                                     "Medium"=c("100-499","500-999"), "Large"=c("1000-4999","5000-9999","10000+")))
#check new factors -- GOOD
levels(data$company_size)
  #OUTPUT: ["Micro", "Small", "Medium", "Large"]