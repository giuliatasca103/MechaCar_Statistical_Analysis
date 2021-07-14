# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

Below is a screenshot of the statistical summary of the output from the linear regression.

![Resources/summary_fit1.png](Resources/summary_fit1.png)

Looking at the summary fit for this linear regression model, I found that the three most significant predictors of MPG from this dataset are vehicle_length, vehicle_weight, and ground_clearance. Vehicle_weight is a significant predictor at the 0.1 significance level, while vehicle_length and ground_clearance variables are extremely significant at the 0 significance level. These three coefficients provide a non-random amount of variance to the MPG values in the dataset. 

The p-value of our linear regression analysis is 5.35e-11, which is significantly smaller than our assumed significance level of 0.05%. Thus, I can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero. 

The summary fit showed a r-squared value of 0.715, which means that roughly 71.5% of the variability of MPG is explained using this linear regression model on vehicle_length, vehicle_weight, spoiler_angle, ground_clearance, and AWD. This high r-squared value shows that this linear mjodel predicts MPG of MechaCar prototypes effectively. 
