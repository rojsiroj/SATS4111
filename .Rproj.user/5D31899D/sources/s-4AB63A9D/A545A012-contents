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
distribusi_binominal_color<-c('red')
#b
distribusi_binominal_kumulatif<-pbinom(.x, .size, .prob)
data.frame(Pr=distribusi_binominal_kumulatif)
distribusi_binominal_kumulatif_color<-c('blue')
#c
.xp<-rep(.x, rep(2, length(.x)))
plot(.xp[-1], pbinom(.xp, .size, .prob)[-length(.xp)], xlab="Jumlah Sukses", ylab="Probabilitas", main="Distribusi Binominal: Percobaan=20, Peluang Sukses= 0.5", type="l", col=distribusi_binominal_kumulatif_color)
points(.x, distribusi_binominal_kumulatif, pch=19, col=distribusi_binominal_kumulatif_color)
lines(.x, distribusi_binominal, type="o", col=distribusi_binominal_color)
points(.x, distribusi_binominal, pch=19, col=distribusi_binominal_color)
abline(h=0, col="gray")
legend('topleft',inset=0.05,c("Distribusi Binominal Kumulatif","Distribusi Binominal"),lty=1,col=c(distribusi_binominal_kumulatif_color,distribusi_binominal_color),title="Peluang")
