#Import data
adm_df <- read.csv("data/adm2020.csv")

#Check structure of dataframe
colnames(adm_df)

#Extract the first row (observation) from the dataframe
first_row <- adm_df[1,]
first_row

#Extract the first 10 institutions from the dataframe
first_ten_unis <- adm_df[1:10,]
first_ten_unis

#Extract the last 3 columns from the data frame
last_three_columns <- adm_df[,66:68]
last_three_columns
