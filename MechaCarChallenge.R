library(dplyr)
car_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(vehicle_length ~ mpg + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=car_table) #generate multiple linear regression model
summary(lm(vehicle_length ~ mpg + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=car_table  )) #generate summary statistics
