# NU-aly6010-LungCap-data

Introduction 

The LungCap dataset consists of 725 valid observations and 6 variables: Age, Height, Gender, Smoke (yes/no), and Caesarean (whether the individual was born via Caesarean section or not). The dataset provides information on the lung capacity of individuals, categorized by age, gender, height, smoking status, and cesarean-related status. I first did a descriptive statistics table and some cross-tabulations in R to have an overview of this dataset. Also, I checked the Pearson correlation coefficient between some variables. 

Descriptive Statistics 

Variable	Class	Obs	Mean	Median	SD	Min	Max
LungCap (cc)	Numeric	725	7.863	8	2.662	0.507	14.675
Age (years)	Integer	725	12.33	13	4	3	19
Height (inches)	Numeric	725	64.84	65.4	7.2	45.3	81.8
Smoke	Character	725	-	-	-	-	-
Gender	Character	725	-	-	-	-	-
Caesarean	Character	725	-	-	-	-	-
 
	 	An example of cross-tabulation 
between Gender and Smoke 
 
 
 
 
 
• Pearson correlation coefficient test between Age and LungCap: 0.8196749  • Pearson correlation coefficient test between Height and LungCap: 0.9121873 
 They both show strong positive correlations between these variables. 
![image](https://github.com/janie140/NU-aly6010-LungCap-data/assets/121474131/883b8928-4175-4f11-93e0-339031ae1510)
