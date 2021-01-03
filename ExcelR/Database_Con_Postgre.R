library(RPostgres)
library(DBI)

con <- dbConnect(RPostgres::Postgres(),
                 host='localhost',
                 port='5433',
                 dbname='<db-name>',
                 user='postgres',
                 password='<password>')
dbExistsTable(con, "users")

dbGetQuery(con, "SELECT name, mobile_no, dob FROM users")
