library(dplyr)

library(nycflights13)
dim(flights)
head(flights, 10)
flights<-nycflights13::flights

filter(flights, month == 1, day == 1)

##------
arrange(flights, year, month, day)

###
arrange(flights, desc(arr_delay))

select(flights, year, month, day)
select(flights,year:day)
select(flights, -(year:day))

##Create New Columns____

data_new<-mutate(flights,
       gain = arr_delay - dep_delay,
       speed = distance /air_time*60
       )

print(data_new)

sample_n(flights, 10)
sample_frac(flights, 0.01)
