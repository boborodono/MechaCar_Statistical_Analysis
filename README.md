# MechaCar_Statistical_Analysis
Using R to develop a statistical analysis reviewing production data that assists the manufacturing team.

## Linear Regression to Predict MPG
### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?</br>
- The vehicle length, and vehicle ground clearance are statistically likely to provide non-random amounts of variance to the model. That is to say, the vehicle length and vehicle ground clearance have a significant impact on miles per gallon on the MechaCar prototype. Conversely, the vehicle weight, spoiler angle, and All Wheel Drive (AWD) have p-Values that indicate a random amount of variance with the dataset.
### Is the slope of the linear model considered to be zero? Why or why not?</br>
- The p-Value for this model, p-Value: 5.35e-11, is much smaller than the assumed significance level of 0.05%. This indicates there is sufficient evidence to reject our null hypothesis, which further indcates that the slope of this linear model is not zero.
### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?</br>
- This linear model has an r-squared value of 0.7149, which means that approximately 71% of all mpg predictions will be determined by this model. Relatively speaking, this multiple regression model does predict mpg of MechaCar prototypes effectively.</br></br>
![MPG Regression](/Images/MPG_Regression.png)

## Summary Statistics on Suspension Coils</br>
- When looking at the entire population of the production lot, the variance of the coils is 62.29 PSI, which is well within the 100 PSI variance requirement.</br></br>
![Suspension Summary](/Images/Suspension_Coil_Summary.png)</br>

- Similarly, but significantly more consistent, Lot 1 and Lot 2 are well within the 100 PSI variance requirement; with variances of 0.98 and 7.47 respectively. However, it is Lot 3 that is showing much larger variance in performance and consistency, with a variance of 170.29. It is Lot 3 that is disproportionately causing the variance at the full lot level.</br></br>
![Lot Summary](/Images/lot_summary.png)</br>

## T-Tests on Suspension Coils</br>

## LOT 1</br>

- Lot 1 sample actually has the true sample mean of 1500, again as we saw in the summary statistics above. With a p-Value of 1, clearly we cannot reject (i.e. accept) the null hypothesis that there is no statistical difference between the observed sample mean and the presumed population mean (1500).
![Lot 1 T-Test](/Images/Lot1_t-test.png)</br></br>

## LOT 2</br>

- Lot 2 has essentially the same outcome with a sample mean of 1500.2, a p-Value of 0.61; the null hypothesis cannot be rejected, and the sample mean and the population mean of 1500 are statistically similar.
![Lot 2 T-Test](/Images/Lot2_t-test.png)</br></br>

## LOT 3

- However, Lot 3, not surprisingly is a different scenario. Here the sample mean is 1496.14 and the p-Value is 0.04, which is lower than the common significance level of 0.05. All indicating to reject the null hypothesis that this sample mean and the presumed population mean are not statistically different.
![Lot 3 T-Test](/Images/Lot3_t-test.png)</br></br>

## Study Design: MechaCar vs Competition
### The statistical study design has the following:

- A metric to be tested is mentioned
- A null hypothesis or an alternative hypothesis is described
- A statistical test is described to test the hypothesis
</br></br>

#### This study would involve collecting data on MechaCar and its comparable models across several different manufacturers over the last 3 years.

- What are the competitions' comparable models,
- Which cars will MechaCar be competing with head-to-head? which cars will be included in the study?
- Which factors will look at the study to determine the relevant to selling price?
</br></br>

### Metrics
#### Collecting data for comparable models across all major manufacturers for past 3 years for the following metrics:

- Safety Feature Rating: Independent Variable
- Current Price (Selling): Dependent Variable
- Drive Package : Independent Variable
- Engine (Electric, Hybrid, Gasoline / Conventional): Independent Variable
- Resale Value: Independent Variable
- Average Annual Cost of ownership (Maintenance): Independent Variable
- MPG (Gasoline Efficiency): Independent Variable
</br></br>

### Hypothesis: Null and Alternative
#### After determining which factors are key for the MechaCar's genre:

- Null Hypothesis (Ho): MechaCar is priced correctly based on its performance of key factors for its genre.
- Alternative Hypothesis (Ha): MechaCar is NOT priced correctly based on performance of key factors for its genre.
</br></br>

### Statistical Tests
#### A multiple linear regression would be used to determine the factors that have the highest correlation/predictability with the list selling price (dependent variable); which combination has the greatest impact on price (it may be all of them!)


