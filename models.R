##############################
# Microstructure : Projet
#
# Rattanatray Ayutaya
# Voong Kwan
# Ruimy Benjamin
# Ibakuyumcu Arnaud
##############################

.libPaths("Lib/")
library(readr)

datas.csv <- read_delim("~/Desktop/Microstructure/datas_final.csv",";", 
                          escape_double = FALSE, col_types = cols(pin = col_double(), 
                          pin_t1 = col_double()), locale = locale(decimal_mark = ","), 
                          trim_ws = TRUE)
View(datas.csv)

exceptVect <- c(-seq(from = 2, to = 26,by = 2),-1,-3) #remove t_1 and stock_Nb, year, month
datas.forCor <- datas.csv[exceptVect]
cor_matrix <- cor(datas.forCor, use = "na.or.complete")
View(cor_matrix)


