install.packages("ggplot2") # untuk install ggplot 
library(ggplot2)
install.packages("hash")
library(hash)

# untuk mengimport database dan melihat nama kolom dan juga summary
iris <- read.csv("Iris.csv")

getwd() # untuk mengetahui lokasi file yang kita simpan
colnames(iris)
summary(iris)
view(iris) # untuk melihat seluruh data di iris
head(iris) # untuk melihat 6 baris pertama dari data tersebut
dim(iris)  # untuk mengetahui jumlah baris dan kolom di data ini
help(iris) # untuk melihat deskripsi dari suatu data
iris$Insul # untuk melihat suatu kolom

sort(unique(iris$PetalWidthCm )) 
sort(unique(iris$PetalLengthCm ))


# untuk membuat perbandingan sepallengthcm dengan sepalwidthcm menggunakan scatterplot
ggplot(data=iris, aes(x=SepalLengthCm, y=SepalWidthCm , color="brown")) + 
  geom_point()+
  ggtitle("SepalLengthCm vs SepalWidthCm")

# untuk membuat perbandingan antara spesies dengan Id menggunakan boxplot
ggplot(data=iris, aes(x=Species , y= Id)) + 
  geom_boxplot(fill="lightblue")+
  ggtitle("Species vs Id")

# untuk mencari missing value yang ada di tiap kolom
sapply(iris, function(x) sum(is.na(x))) 

# untuk melihat perbandingan petallengthcm vs sepallengthcm menggunakan boxplot
ggplot(data = iris, aes(x=PetalLengthCm,
                         y=SepalLengthCm, color="lightgreen")) + 
  geom_boxplot()+
  scale_color_brewer(palette="Dark2") + 
  geom_jitter(shape=16, position=position_jitter(0.2))+
  labs(title = 'petallengthcm vs sepallengthcm',
       y='sepallengthcm',x='PetalLengthCm')

# untuk mencari matrix tentang data types, zeros, infinite numbers, dan juga missing values:
glimpse(iris)

# untuk membuat poligon frekuensi
ggplot(data = iris, mapping = aes(x = SepalWidthCm  , colour = "orange")) +
  geom_freqpoly(binwidth = 0.1)

# untuk membuat barplot dari Id 
barplot(iris$PetalWidthCm  ,col = "pink")

# untuk membuat histogram untuk Id
ggplot(data=iris, aes(x=Id )) +
  geom_histogram(fill="violet", color="pink") +
  ggtitle("Histogram of Id")

# untuk membuat stacked bar chart perbandingan menggunakan Rcolorbrewer
library(RColorBrewer)
barplot(table(iris$SepalWidthCm , iris$PetalWidthCm ),col= brewer.pal(3,"Set1"))


# untuk menginstall library skim :
install.packages("skimr")
library(skimr)
# fungsi skim menampilkan ringkasan data numerik dan kategorik, termasuk jumlah data, 
# rata-rata, standar deviasi, nilai minimum, kuartil, dan maksimum.
skim(iris)


# untuk membuat line chart perbandingan antara petalwidthcm dengan sepalwidthcm
lineChart <- ggplot(iris, aes(x = PetalWidthCm)) +
  geom_line(aes(y = SepalWidthCm), color = "#00ba38", size=1) +
  labs(title = "Perbandingan antara petalwidthcm dengan sepalwidthcm")
lineChart

# untuk membuat pie chart tentang petal length
library(MASS)
PetalLengthCm = iris$PetalLengthCm
PetalLengthCm.freq = table(PetalLengthCm)
pie(PetalLengthCm.freq)





