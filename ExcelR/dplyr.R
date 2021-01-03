library(dplyr)

## 
library(nycflights13)
dim(flights)
head(flights,10)
flights<-flights

## --------------
filter(flights, month == 1, day == 1)

## ----------
arrange(flights, year, month, day)

## -----------
arrange(flights, desc(arr_delay))

## ----------------
# Select columns by name
select(flights, year, month, day)
# Select all columns between year and day (inclusive)
select(flights, year:day)
# Select all columns except those from year to day (inclusive)
filtered_data<- select(flights, -(year:day))


## Create new columns-----------------
data_new<-mutate(flights,
  gain = arr_delay - dep_delay,
  speed = distance / air_time * 60
)

## -------------
mutate(flights,
  gain = arr_delay - dep_delay,
  gain_per_hour = gain / (air_time / 60)
)

## ---------------
sample_n(flights, 10)
sample_frac(flights, 0.01)







