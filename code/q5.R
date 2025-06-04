#Q5 -- Collapse the experience levels to the following:
  #'<5': <5 year of experience, '5-10': 5-10 years of experience, '>10': >10 years of experience

#investigate 'experience'
levels(data$experience)
  #OUTPUT: ["<1",">20","1","10","11","12","13","14","15","16","17","18","19","2","20","3","4","5",
      #        "6","7","8","9"]

data <- data %>%
  #collapse old factors into new ones
  mutate(experience = fct_collapse(experience,"<5"=c("<1","1","2","3","4"), "5-10"=c("5","6","7","8","9","10"), 
                                   ">10"=c("11","12","13","14","15","16","17","18","19","20",">20")))
#check new factors -- GOOD
levels(data$experience)
  #OUTPUT: ["<5", ">10", "5-10"]