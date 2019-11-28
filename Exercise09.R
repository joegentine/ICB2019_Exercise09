#Exercise 9
setwd("~/Desktop/r-novice-inflammation/ICB_Exercises/ICB2019_Exercise09/")
ChlvsTp<- read.csv("ChlvsTp.csv")
library(ggplot2)
ggplot(data=ChlvsTp, mapping = aes(x=tp, y=chl))+geom_point()+stat_smooth(method = "lm", color="black")

data<- read.csv("data.txt")
#bar graph
ggplot(data=data, mapping = aes(x=region, y=observations))+stat_summary(geom="bar", fun.y = "mean")+
  stat_summary(geom="errorbar", fun.data="mean_se", width=.03)
#Scatter plot 
ggplot(data=data, mapping = aes(x=region, y=observations))+geom_point()+geom_jitter()

#The bar and scatter plots do tell different stories. The bar graph indicates that each
#region is relatively similar with about the same average number of observations 
#The scatter plot shows that some of the regions had a wide range of observations while
#some are clustered around certain values. 