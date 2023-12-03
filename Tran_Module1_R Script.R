#Trang Tran, ALY6010, Module 1
cat("\014")  # clears console
rm(list = ls())  # clears global environment
try(dev.off(dev.list()["RStudioGD"]), silent = TRUE) # clears plots
try(p_unload(p_loaded(), character.only = TRUE), silent = TRUE) # clears packages
options(scipen = 100) # disables scientific notion for entire R session

library(pacman)
p_load(tidyverse)
p_load(gmodels)


df <- read_csv("LungCap.csv")

#descriptive statistics
df <- na.omit(df)
summary(df)

sd(df$LungCap)
sd(df$Age)
sd(df$Height)

#arrange further the crosstable 
crosstab <- df |> group_by(Age, Gender) |> tally() |> spread(Age, n)

#random check
CrossTable(df$Gender, df$Smoke)
CrossTable(df$Gender, df$Caesarean)
ftable(df$Age, df$Gender)
table(df$Gender) #another way to create freq table

#Pearson corr test between Age and LungCap
corr_age <- cor(df$LungCap, df$Age, method = "pearson")
corr_age #0.8196749

#Pearson corr test between Height and LungCap
corr_height <- cor(df$LungCap, df$Height, method = "pearson")
corr_height #0.9121873

#LungCap probability distribution
ggplot(df, aes(x = LungCap))+
  stat_function(fun = dnorm,
                args = with(df, c(mean = mean(LungCap), sd = sd(LungCap)))) +
  xlab("Lung Capacity")

#Age probability distribution
ggplot(df, aes(x = Age))+
  stat_function(fun = dnorm,
                args = with(df, c(mean = mean(Age), sd = sd(Age)))) +
  xlab("Age")

#Height probability distribution
ggplot(df, aes(x = Height))+
  stat_function(fun = dnorm,
                args = with(df, c(mean = mean(Height), sd = sd(Height)))) +
  xlab("Height")

#Visualizations and analysis
#Age histogram
ggplot(df, aes(x = Age)) +
  geom_histogram(stat = "count") + ggtitle("Age Histogram")

#Height histogram
ggplot(df, aes(x = Height)) +
  geom_histogram(stat = "count") + ggtitle("Height Histogram")

#Gender & Smoke
ggplot(df, aes(x = Gender, fill = Smoke))+
  geom_histogram(stat = "count") + ggtitle("Gender Histogram")

#Caesarean 
ggplot(df, aes(x = Caesarean, fill = Caesarean)) +
  geom_histogram(stat = "count") + ggtitle("Caesarean Histogram")

#LungCap vs Age
ggplot(df, aes(x = LungCap, y = Age)) +
  geom_point(color = "grey") +
  geom_smooth(method = "lm", se = FALSE) + theme_classic() +
  ggtitle("Correlation between LungCap and Age")

#LungCap vs Height
ggplot(df, aes(x = LungCap, y = Height)) +
  geom_point(color = "brown") +
  geom_smooth(method = "lm", se = FALSE) + theme_classic() +
  ggtitle("Correlation between LungCap and Height")

#LungCap vs Caesarean
ggplot(df, aes(x = Caesarean, y = LungCap, color = Caesarean)) +
  geom_point()

#LungCap vs Smoke
ggplot(df, aes(x = Smoke, y = LungCap, color = Smoke)) +
  geom_point()

#LungCap vs Gender
ggplot(df, aes(x = Gender, y = LungCap, color = Gender)) +
  geom_point()





