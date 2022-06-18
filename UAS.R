#UAS - MUHAMAD SIROJUDIN - 043922682
#1
Mahasiswa<-read.csv("~/Documents/Mahasiswa.csv", sep=";",header=T)
Mahasiswa
Mahasiswa$IPK

#2
Penjualan<-read.csv("~/Documents/Penjualan.csv", sep=";", colClasses=c("integer", "character", "double"))
Penjualan
Persentase<-Penjualan$Persentase
Persentase
Barang<-Penjualan$Penjualan
Barang
Title<-c("Penjualan")
#a
pie(Persentase, labels=Persentase, main=Title, col=rainbow(length(Persentase)))
legend("topright", Barang, cex=0.8, fill=rainbow(length(Persentase)))
#b
barplot(height=Persentase, names=Barang, horiz=T, col="green", main=Title, ylab="Barang", xlab="Persentase")

#3
.x<-1:20
.size=20
.prob=0.5
#a
distribusi_binominal<-dbinom(.x, .size, .prob)
data.frame(Pr=distribusi_binominal)
#b
distribusi_binominal_kumulatif<-pbinom(.x, .size, .prob)
data.frame(Pr=distribusi_binominal_kumulatif)
#c
plot(.x, distribusi_binominal, xlab="Number of Success", ylab="Probability Mass", main="Binominal Distribution: Trials=20, Prob. of success = 0.5", type="h")
points(.x, distribusi_binominal, pch=19)
abline(h=0, col="green")

.x<-rep(.x, rep(2, length(.x)))
.x
plot(.x[-1], pbinom(.x, .size, .prob)[-length(.x)], xlab="Number of Success", ylab="Cumulative Probability", main="Binominal Distribution: Trials=20, Prob. of success = 0.5", type="l")
abline(h=0, col="green")
