# NU-aly6010-LungCap-data

Introduction 

The LungCap dataset consists of 725 valid observations and 6 variables: Age, Height, Gender, Smoke (yes/no), and Caesarean (whether the individual was born via Caesarean section or not). The dataset provides information on the lung capacity of individuals, categorized by age, gender, height, smoking status, and cesarean-related status. I first did a descriptive statistics table and some cross-tabulations in R to have an overview of this dataset. Also, I checked the Pearson correlation coefficient between some variables. 

Descriptive Statistics 

<img width="239" alt="image" src="https://github.com/janie140/NU-aly6010-LungCap-data/assets/121474131/daa09969-d200-42c6-8b01-68df4aeca172">
An example of cross-tabulation between Gender and Smoke 

<img width="499" alt="image" src="https://github.com/janie140/NU-aly6010-LungCap-data/assets/121474131/ad7040f8-0c47-4610-8b3e-210f81151a22">

In the above graphs, counts of each variable were shown. The age distribution has a slightly negative skewness, while the height variable has a nearly symmetrical distribution. The number of people who were not born by the caesarean method is three times higher than the number of people born by this method. The gender histogram clearly shows that the male and female quantities are almost similar, and the number of people who smoke is much less than the number of non-smokers.

#Correlation between Age, Height, and Lung Capacity

<img width="503" alt="image" src="https://github.com/janie140/NU-aly6010-LungCap-data/assets/121474131/5876e8bf-94b6-48ec-8da4-e3c986161a71">

Both plots present strong positive correlations between Age and Lung Capacity, Height and Lung Capacity. As age increases within the range of 0 to 20 years, lung capacity also tends to increase. Also, taller individuals tend to have higher lung capacity.

#Other variables’ relationship with Lung Capacity

From the figures below, we can observe that non-smokers generally exhibit greater lung capacity than smokers. Additionally, those who were not born via Caesarean section appear to have slightly greater lung capacity than those who were. Besides, males tend to have higher lung capacity than females.

![image](https://github.com/janie140/NU-aly6010-LungCap-data/assets/121474131/7a1c4385-36bb-4918-ae70-520d8e095602)
