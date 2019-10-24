#Importing the dataset
dresi <- read.csv("C:/Users/Jeevan/Desktop/Christ University/Statistics/Linear Regression/residual.txt", sep="")
View(dresi)
#Linear Regression Model
lmodel=lm(Time~Length, data=residual)
summary(lmodel)
#Residual Plots
plot(lmodel) 
#(i) Data is deviating from normal
#(ii) most frequency used plot to check normality of error term
#(iii) scale location plot ~ deviation of residuals from straight line/information about influential objects
#(iv) 
r=resid(lmodel) 
r
p=fitted(lmodel)
p
qqnorm(r) # to plot the q-q plot
qqline(r) # adds the reference line 
abline(lmodel, col="red")  # adds the regression line