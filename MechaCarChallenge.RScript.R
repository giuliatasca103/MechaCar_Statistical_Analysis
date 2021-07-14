setwd("/Users/giuliatasca/Desktop/bootcamp/MechaCar_Statistical_Analysis/Resources")

## deliverable 1
library(dplyr)

MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

fit1 <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar)

summary(fit1)

## deliverable 2
suspension <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- suspension %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),SD_PSI=sd(PSI), .groups = 'keep')
total_summary

lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),SD_PSI=sd(PSI), .groups = 'keep')
lot_summary

## deliverable 3
?t.test()
t.test(x=suspension$PSI, mu=1500) #t-test all cars PSI with mean of 1500

## subset lot 1
lot1 <- subset(suspension, Manufacturing_Lot=='Lot1')
t.test(x=lot1$PSI, mu=1500)

## subset lot 2
lot2 <- subset(suspension, Manufacturing_Lot=='Lot2')
t.test(x=lot2$PSI, mu=1500)

## subset lot 3
lot3 <- subset(suspension, Manufacturing_Lot=='Lot3')
t.test(x=lot3$PSI, mu=1500)





