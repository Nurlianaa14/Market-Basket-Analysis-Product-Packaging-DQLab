#install.packages("arules")
library(arules)

#Import data
transaksi_tabular <- read.transactions(
  file = "C:/Users/Nurliana/Documents/Rstudio/Project Machine Learning for Retail with R Product Packaging/transaksi_dqlab_retail.tsv",
  format = "single",
  sep = "\t",
  cols = c(1, 2),
  skip = 1
  )

#inspect(transaksi_tabular)

#Mencari produk mana yang laris dan kurang laku
#Top 10 produk (terlaris)
data_top <- itemFrequency(transaksi_tabular, type="absolute")
data_top <- sort(data_top, decreasing = TRUE)
data_top <- data_top[1:10]
data_top <- data.frame("Nama Produk"=names(data_top), "Jumlah"=data_top, row.names=NULL)
print(data_top)

#Bottom 10 produk (kurang laku)
data_bottom <- itemFrequency(transaksi_tabular, type="absolute")
data_bottom <- sort(data_bottom, decreasing = FALSE)
data_bottom <- data_bottom [1:10]
data_bottom <- data.frame("Nama Produk"=names(data_bottom), "Jumlah"=data_bottom , row.names=NULL)
print(data_bottom)


#Pak Agus ingin mendapatkan kombinasi menarik dengan pengertian sbb:
"
1. Memiliki asosiasi atau hubungan erat.
2. Kombinasi produk minimal 2 item, dan maksimum 3 item.
3. Kombinasi produk itu muncul setidaknya 10 dari dari seluruh transaksi.
4. Memiliki tingkat confidence minimal 50 persen.
"

#Supportnya = 10/length(transaksi)
#Condidence = 0.5
#minimal 2 item dan maksimum 3 item
#Memiliki hub erat = dari lift tertinggi

mba <- apriori(data=transaksi_tabular, parameter=list(supp=10/length(transaksi_tabular), 
               conf=0.5, minlen=2, maxlen=3))

mba <- sort(mba, decreasing=TRUE, by="lift")[1:10]
inspect(mba)

#Pak Agus minta mengidentifikasi dua item produk yang menurut dia stoknya masih banyak dan
#perlu dicari pasangan item untuk pemaketannya
#Dua item produk tersebut adalah "Tas Makeup" dan "Baju Renang Pria Anak-anak"

#Persyaratan asosiasi kuat ini masih sama dengan yang telah disebutkan Pak Agus sebelumnya, 
#kecuali tingkat confidence dicoba pada tingkat minimal 0.1.

mba1 <- apriori(data=transaksi_tabular, parameter=list(supp=10/length(transaksi_tabular),
                conf=0.1, minlen=2, maxlen=3))

rules1 <- subset(mba1, rhs %in% "Tas Makeup")
rules1 <- sort(rules1, decreasing=TRUE, by="lift")[1:3]
inspect(rules1)

rules2 <- subset(mba1, rhs %in% "Baju Renang Pria Anak-anak")
rules2 <- sort(rules2, decreasing=TRUE, by="lift")[1:3]
inspect(rules2)

rules <- c(rules1, rules2)
inspect(rules)
