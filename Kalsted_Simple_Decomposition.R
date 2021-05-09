#Decomposing Time Series Data
#First we are plotting the "nottem" dataset
#The dataset consists of 20 years of monthly temperature measurements at 
#Notthingham Castle
plot(nottem)
#There is clear seasonality in the data, but no trend
#In general if there is a constant amplitude like in this dataset, then you can
#use an additive model
#Trends would move the amplitudes in a certain direction or increase/decrease 
#them over time
#Here we are checking the frequency of the dataset
frequency(nottem)
#The frequency is 12, for 12 months
#Here we are checking the length of the dataset
length(nottem)
#The length is 240, so 20 years worth of data (240/12)
#Now we are going to use seasonal decomposition with the decompose function
decompose(nottem, type = 'additive')
#The dataset is now broken down by seasonality, trend, and a remainder
#Here we are plotting the decomposed data
plot(decompose(nottem, type = 'additive'))
#From the plotting of the data we can see there are some peaks, but overall no
#trend
#There is clear and constant seasonality
#Here we are importing both the forecast and ggplot libraries for better 
#graphics
library(forecast)
library(ggplot2)
#Now we are plotting the same decomposed data
autoplot(decompose(nottem, type = 'additive'))
#It looks much better
#You can also use the stl function to eliminate null values from the data
stl(nottem, s.window = 'periodic')
plot(stl(nottem, s.window = 'periodic'))

