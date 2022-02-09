#### MECHA CAR CHALLENGE: DELIVERABLE 1

# 3. Use the library() function to load the dplyr package.
library(dplyr)

# 4. Import and read in the Mecha_Car_MPG.csv file as a dataframe.
library(tidyverse)
MechaCar_mpg <- read.csv(file='./Resources/MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# 5. Perform linear regression using the lm() function.
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)
# Coefficients:
# (Intercept)    vehicle_length    vehicle_weight     spoiler_angle  ground_clearance               AWD  
# -1.040e+02         6.267e+00         1.245e-03         6.877e-02         3.546e+00        -3.411e+00  


# 6. Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg))
# Coefficients:
#                   Estimate   Std. Error t value  Pr(>|t|)    
# (Intercept)      -1.040e+02  1.585e+01  -6.559   5.08e-08
# vehicle_length    6.267e+00  6.553e-01   9.563   2.60e-12
# vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776
# spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
# ground_clearance  3.546e+00  5.412e-01   6.551   5.21e-08
# AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
---
# Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

# Residual standard error: 8.774 on 44 degrees of freedom
# Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
# F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11

#### MECHA CAR CHALLENGE: DELIVERABLE 2
  
# 2. import and read in the Suspension_Coil.csv file as a table.
Suspension_Coil <- read.csv(file='./Resources/Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# 3. Create a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column.
summary_suspension_coil <- Suspension_Coil %>% summarize(Mean_PSI=mean(PSI), 
                                                         Median_PSI=median(PSI), 
                                                         Variance_PSI=var(PSI), 
                                                         Std_Dev_PSI=sd(PSI), 
                                                         .groups='keep')


# Mean_PSI     Median_PSI     Variance_PSI     Std_Dev_PSI
# 1498.78      1500           62.29356         7.892627

# 4. Create a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column.
summary_manufacturing_lot <- Suspension_Coil  %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                                                                            Median_PSI=median(PSI),
                                                                                            Var_PSI=var(PSI),
                                                                                            Std_Dev_PSI=sd(PSI),
                                                                                            Num_Coil=n(), 
                                                                                            .groups = 'keep') 

# Manufacturing_Lot     Mean_PSI     Median_PSI     Variance_PSI     Std_Dev_PSI     Num_Lot
# Lot1                  1500.00      1500.0         0.9795918        0.9897433       50
# Lot2                  1500.20      1500.0         7.4693878        2.7330181       50
# Lot3                  1496.14      1498.5         170.2861224      13.0493725      50


#### MECHA CAR CHALLENGE: DELIVERABLE 3

# 1. Use the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
t.test(Suspension_Coil$PSI,mu=1500)

# t = -1.8931, df = 149, p-value = 0.06028

# Ha: true mean is not equal to 1500
# 95 percent confidence interval:
# 1,497.507       1,500.053

# sample estimates:
# mean of x: 1,498.78 

# 2. Write three RScripts using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
lot1 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot1")
lot2 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot2")
lot3 <- subset(Suspension_Coil, Manufacturing_Lot=="Lot3")

# -------------------------------
t.test(lot1$PSI,mu=1500)

# t = 0, df = 49, p-value = 1

# Ha: true mean is not equal to 1500
# 95 percent confidence interval:
# 1,499.719        1,500.281
# sample estimates:
# mean of x : 1,500 

# -------------------------------
t.test(lot2$PSI,mu=1500)

# t = 0.51745, df = 49, p-value = 0.6072

# Ha: true mean is not equal to 1500
# 95 percent confidence interval:
# 1,499.423        1,500.977

# sample estimates:
# mean of x: 1,500.2 

# -------------------------------
t.test(lot3$PSI,mu=1500)

# t = -2.0916, df = 49, p-value = 0.04168

# Ha: true mean is not equal to 1500
# 95 percent confidence interval:
# 1,492.431       1,499.849

# sample estimates:
# mean of x: 1,496.14 