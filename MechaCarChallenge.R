library(dplyr)
car_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(vehicle_length ~ mpg + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=car_table) #generate multiple linear regression model
summary(lm(vehicle_length ~ mpg + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=car_table  )) #generate summary statistics


susp_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- susp_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Varience=var(PSI),SD=sd(PSI))

total_summary

lot_summary <- susp_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Varience=var(PSI),SD=sd(PSI), .groups = 'keep') #create summary table

lot_summary



t.test((susp_table$PSI),mu=1500) #compare sample versus population means

t.test(subset(susp_table,Manufacturing_Lot=="Lot1")$PSI,mu=1500)

t.test(subset(susp_table,Manufacturing_Lot=="Lot2")$PSI,mu=1500)

t.test(subset(susp_table,Manufacturing_Lot=="Lot3")$PSI,mu=1500)