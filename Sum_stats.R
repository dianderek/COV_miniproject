
delim = ","  
dec = "."    

bike_combine <- read.csv(file= 'C://Users//RachelG//Desktop//DL//all around//bike_data.csv',header=TRUE, sep=delim, dec=dec, stringsAsFactors = F)

summary(bike_combine)

str(bike_combine)

df_bike <- data.frame(bike_combine)

summary(df_bike[,c(7:10)])
bike_1 <- df_bike[,c(7:10)]

as.double(df_bike[,c(7:10)],na.rm=T)



num_bike<- lapply(df_bike[,c(7:14)],as.numeric, na.rm=F)

Bike_2 <- data.frame(num_bike)
summary(Bike_2)


export_csv <- write.csv(summary(Bike_2), file = 'C://Users//RachelG//Desktop//DL//all around//summary_bike.csv')


