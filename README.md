# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

###Deliverables:
Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Is the slope of the linear model considered to be zero? Why or why not?
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

###R output
<image>

###Summary

According to our results, vehicle length and vehicle ground clearance (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model. In other words the vehicle length and vehicle ground clearance have a significant impact on quarter-mile race time.
On the other hand , the vehicle weight, spoiler angle, and All Wheel Drive (AWD) have Pr(>|t|) values that indicate a random amount of variance with the dataset.

The model has a reulting p-value of 5.35e-11 which is much less than the test significance level of 0.05%.
Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

The resulting linear model has r-squared value of 0.7149, which translates to 71.49% of mpg directions are determined by the independent variables.
This implies that the model is relatvely accurate in predicting mpg.

##Summary Statistics on Suspension Coils

Question

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

<image>
<image>

## T-Tests on Suspension Coils

## Study Design: MechaCar vs Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
In your description, address the following questions:
What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?

