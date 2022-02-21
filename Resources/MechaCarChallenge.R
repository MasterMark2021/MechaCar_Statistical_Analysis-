#import library(readr)
library(readr)
library(dplyr)
library(magrittr)

#Import and read in the MechaCar_mpg.csv file as a dataframe
MechaCar_mpg <- read_csv("MechaCar_mpg.csv")

#Perform linear regression using the lm() function
lm(vehicle_length~vehicle_weight+spoiler_angle+ground_clearance+AWD+mpg, data=MechaCar_mpg)

#Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg~vehicle_weight+spoiler_angle+ground_clearance+AWD+vehicle_length, data=MechaCar_mpg))

# import and read in the Suspension_Coil.csv
Suspension_Coil <- read_csv("Suspension_Coil.csv")


#total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column
total_summary <- Suspension_Coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary <- Suspension_Coil %>% group_by(Manufacturing_Lot) %>%
 summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
