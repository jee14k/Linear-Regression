library(readxl)
Income_data <- read_excel("C:/Users/Jeevan/Desktop/Christ University/Statistics/Linear Regression/Income data.xlsx")
View(Income_data)
attach(Income_data)
plot(exp,inc,main = "Scatter Plot")
scatter.smooth(exp,inc,main = "Scatter Plot")
cor(exp,inc)
model=lm(exp~inc)
model
fit=fitted.values(model)
fit
res=resid(model)
sum(res) #sum of residuals = 0
sum(fit) #sum of predicted values = sum of observed values
sum(exp)