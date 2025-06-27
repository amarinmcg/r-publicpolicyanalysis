#Import data
adm_df <- read.csv("data/adm2020.csv")

#Check structure of data frame
colnames(adm_df)

#Extract the first row (observation) from the data frame
first_row <- adm_df[1,]
first_row

#Extract the first 10 institutions from the dataframe
first_ten_unis <- adm_df[1:10,]
first_ten_unis

#Extract the last 3 columns from the data frame
last_three_columns <- adm_df[,66:68]
last_three_columns

# `ENRLW` for the institution at row 1,337 in the data
adm_df_ENRLW <- adm_df$ENRLW[1337]
adm_df_ENRLW

# Reported an `NA` value for either admissions for men **or** admissions for women
adm_df_NAMW <- count(adm_df[is.na(adm_df$ADMSSNM) | is.na(adm_df$ADMSSNW), ])
adm_df_NAMW

# Average number of men who were admitted in this data set
avg_M_adm <- mean(adm_df[!is.na(adm_df$ADMSSNM), c('ADMSSNM') ])
avg_M_adm

# Pulling out all columns except first and third on
some_missing_columns <- adm_df[,c(-1, -3)]
some_missing_columns

# A vector of numbers between 1-10
print(1:10)

# A vector of negative numbers between 1-10
print(-1:-10)

#Sum function to add to a vector of number
sum(adm_df$APPLCN)

# Sum function for two columns - vectors
sum(adm_df$APPLCNM) / sum(adm_df$APPLCNW)
