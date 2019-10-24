library(readxl)
lab_data3 <- read_excel("C:/Users/Jeevan/Desktop/Christ University/Statistics/Linear Regression/lab-data3.xlsx")
View(lab_data3)
mlrm=lm(sysBPY~ageX1+weightX2, data=lab_data3)
mlrm
predicted_bp=fitted.values(mlrm)
predicted_bp
error_terms=residuals(mlrm)
error_terms
summary(mlrm)
confint(mlrm, level = .95)
anova(mlrm)
newdata=data.frame(ageX1=40, weightX2=200)
predict(mlrm,newdata)
ci=predict(mlrm, newdata, interval="confidence", level=.95)
ci