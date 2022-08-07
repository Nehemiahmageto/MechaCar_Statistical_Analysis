#Use the library() function to load the dplyr package.
library(dplyr)
library(tidyverse)

#Import and read in the MechaCar_mpg.csv file as a dataframe
mechacar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) 

#Perform linear regression using the lm() function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg)

#Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg))

#Import and read in the Suspension_Coil.csv file as a table.
mechacar_coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) 

#Using the summarize() function get the mean, median, variance, and standard deviation
total_summary <- mechacar_coil %>% summarize(Mean=mean(PSI),
                                             Median=median(PSI),
                                             Var=var(PSI),
                                             SD_PSI=sd(PSI),
                                             Num_Coil=n(), .groups = 'keep')

#Using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation 
lot_summary <- mechacar_coil  %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),
                                                                            Median=median(PSI),
                                                                            Var=var(PSI),
                                                                            SD=sd(PSI),
                                                                            Num_Coil=n(), .groups = 'keep')

#Determine if the PSI across all manufacturing lots is statistically different from the population mean
t.test(mechacar_coil$PSI,mu=1500)

#Using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean
lot1 <- subset(mechacar_coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(mechacar_coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(mechacar_coil, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)




