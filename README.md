# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

### Deliverables:
Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
Is the slope of the linear model considered to be zero? Why or why not?
Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

### R output
![Alt Text](https://github.com/Nehemiahmageto/MechaCar_Statistical_Analysis/blob/main/pictures/lm.JPG)

![Alt Text](https://github.com/Nehemiahmageto/MechaCar_Statistical_Analysis/blob/main/pictures/summary%20lm.JPG)

### Summary

According to our results, vehicle length and vehicle ground clearance (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model. In other words the vehicle length and vehicle ground clearance have a significant impact on quarter-mile race time.
On the other hand , the vehicle weight, spoiler angle, and All Wheel Drive (AWD) have Pr(>|t|) values that indicate a random amount of variance with the dataset.

The model has a reulting p-value of 5.35e-11 which is much less than the test significance level of 0.05%.
Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.

The resulting linear model has r-squared value of 0.7149, which translates to 71.49% of mpg directions are determined by the independent variables.
This implies that the model is relatvely accurate in predicting mpg.

## Summary Statistics on Suspension Coils

Question

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

![Alt Text](https://github.com/Nehemiahmageto/MechaCar_Statistical_Analysis/blob/main/pictures/total%20summary.JPG)

![Alt Text](https://github.com/Nehemiahmageto/MechaCar_Statistical_Analysis/blob/main/pictures/lot%20summary.JPG)

Looking at the data in totality, we see that the entire production has a PSI Variance of 62.29 PSI which is within the cap of 100 PSI variance.

However, looking in detail at the 3 production lots, the third lot exceeds the cap while the first and second are well within the cap.
The third lot disproportionately affects the variance in the total level resulting in the rather high total variance.

## T-Tests on Suspension Coils
![Alt Text](https://github.com/Nehemiahmageto/MechaCar_Statistical_Analysis/blob/main/pictures/t%20test.JPG)

Testing the whole production gave a p-value of 0.06 which is higher than the assumed significance level of 0.05%.
Therefore, we fail to reject the null hypothesis. (There is no statistical difference between the observed sample mean and its presumed population mean of 1500)
Therefore, there is insufficient evidence to show that the mean is not equal to the presumed population mean.

![Alt Text](https://github.com/Nehemiahmageto/MechaCar_Statistical_Analysis/blob/main/pictures/t%20test%20lot%201.JPG)

![Alt Text](https://github.com/Nehemiahmageto/MechaCar_Statistical_Analysis/blob/main/pictures/t%20test%20lot%202.JPG)
For lot 1 and 2, p-value is 1 and 0.6 respectively which are both greater than 0.05%.
This leads to the same conclusion, we fail to reject the null hypothesis.

![Alt Text](https://github.com/Nehemiahmageto/MechaCar_Statistical_Analysis/blob/main/pictures/t%20test%20lot%203.JPG)
However, for lot 3, the p value is 0.04 which is less than 0.05%.
We reject the null, and as far as lot 3 is concerned there is significant evidence that the observed sample mean is different from the presumed population mean of 1500.
Clearly lot 3 is an outlier and something different occured during production. The process undertaken in lot 3 should be reviewed and ascessed for any errors.

## Study Design: MechaCar vs Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
In your description, address the following questions:
What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?

In the case we want to compare data with one other competitor.
I would suggest to compare cost of production as it is a main driver of the final price of the product to the market. The more efficient manufacturing is, the more the production and sales a company will get which gives ultimate superiority over every other competitor. This helps make sure we are on the same efficiency level.

The null hypothesis:          The two population means of cost are equal (same efficiency level)
The alternative hypothesis :  The two population means are not equal

After ascertaining this test, to find out exactly where the data lies in the case they are different, the alternative hypothesis can be switched to check for right and left tailed t tests.

I prefer the two-sample t tests because the two sets of data are independent of each other, one has no effect on the other, as they are from two separate entities.

We would need historical cost of production data from both our company and the competitors.
