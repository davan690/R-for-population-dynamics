#base code
#anthony davidson
#03092017

#import data
Data<- read.csv("./R/Data/RawCI.csv", header=T, quote="\"")

#Structure of data set
#str(Data)
library(tidyverse)
#year recorded
Year<-unique(Data$Calves.1)

#calving interval observed in 2010
year2010a<-c(3,3,2)
year2010 <- filter(Data,Calves.1 < 2011)
year2010 <- year2010$Interval.1[!is.na(year2010$Interval.1)]

names(Data)
#calving interval observed in 2011
year2011a<-c(3,3,2,3,3,3,3,3,3,3,3,3,3,3,2)
year2011 <- Data %>%
              filter(Calves.1 < 2012)

year2011 <- year2011$Interval.1[!is.na(year2011$Interval.1)]

#calving interval observed in 2012
year2012a<-c(3,3,2,3,3,3,3,3,3,3,3,3,3,3,2,
             6,4,4,4,4,4,3,3,3,3)
year2012 <- filter(Data,Calves.1 < 2013)
year2012 <- year2012$Interval.1[!is.na(year2012$Interval.1)]

#calving interval observed in 2013
year2013a<-c(3,3,2,3,3,3,3,3,3,3,3,3,3,3,2,
             6,4,4,4,4,4,3,3,3,3,
             6,5,4,4,4,4,4,3,3,3,3,3,3,3,3,3,3,3,2,2)
full <- c(Data$Interval.1,Data$Interval.2)
year2013<- full[!is.na(unlist(full))]

