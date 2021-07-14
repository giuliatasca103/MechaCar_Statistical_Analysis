setwd("/Users/giuliatasca/Desktop/bootcamp/MechaCar_Statistical_Analysis/Resources")

library(dplyr)

MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

fit1 <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, MechaCar)

summary(fit1)
